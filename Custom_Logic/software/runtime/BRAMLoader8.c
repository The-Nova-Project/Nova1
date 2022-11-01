#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <stdarg.h>
#include <assert.h>
#include <string.h>
#include <fpga_pci.h>
#include <fpga_mgmt.h>
#include <utils/lcd.h>
#include <utils/sh_dpi_tasks.h>

// VDip Switches for Hydra SU Reset
#define SU_RESET_OFF            0x00
#define SU_RESET_ON             0x01
#define JTAG_RESET_ON             0x02
#define DEADBEEF                0xdeadbeef
#define WAIT_DELAY              5002
#define ZERO_VAL                0x00
#define TO_HOST                 0x120
#define BRAM_START_ADDR         0x0
#define TOTAL_INSTR             75
#define PASSED_VAL              0
#define FAILED_VAL              1

const struct logger *logger             = &logger_stdout;
static uint16_t pci_vendor_id           = 0x1D0F; /* Amazon PCI Vendor ID */
static uint16_t pci_device_id           = 0xF000; /* PCI Device ID preassigned by Amazon for F1 applications */
static pci_bar_handle_t pci_bar_handle  = PCI_BAR_HANDLE_INIT;
static int pf_id                        = FPGA_APP_PF;

int check_afi_ready(int slot_id) {
   struct fpga_mgmt_image_info info = {0};
   int rc;

   /* get local image description, contains status, vendor id, and device id. */
   rc = fpga_mgmt_describe_local_image(slot_id, &info,0);
   fail_on(rc, out, "Unable to get AFI information from slot %d. Are you running as root?",slot_id);

   /* check to see if the slot is ready */
   if (info.status != FPGA_STATUS_LOADED) {
     rc = 1;
     fail_on(rc, out, "AFI in Slot %d is not in READY state !", slot_id);
   }

   printf("AFI PCI  Vendor ID: 0x%x, Device ID 0x%x\n",
          info.spec.map[FPGA_APP_PF].vendor_id,
          info.spec.map[FPGA_APP_PF].device_id);

   /* confirm that the AFI that we expect is in fact loaded */
   if (info.spec.map[FPGA_APP_PF].vendor_id != pci_vendor_id ||
       info.spec.map[FPGA_APP_PF].device_id != pci_device_id) {
     printf("AFI does not show expected PCI vendor id and device ID. If the AFI "
            "was just loaded, it might need a rescan. Rescanning now.\n");

     rc = fpga_pci_rescan_slot_app_pfs(slot_id);
     fail_on(rc, out, "Unable to update PF for slot %d",slot_id);
     /* get local image description, contains status, vendor id, and device id. */
     rc = fpga_mgmt_describe_local_image(slot_id, &info,0);
     fail_on(rc, out, "Unable to get AFI information from slot %d",slot_id);

     printf("AFI PCI  Vendor ID: 0x%x, Device ID 0x%x\n",
            info.spec.map[FPGA_APP_PF].vendor_id,
            info.spec.map[FPGA_APP_PF].device_id);

     /* confirm that the AFI that we expect is in fact loaded after rescan */
     if (info.spec.map[FPGA_APP_PF].vendor_id != pci_vendor_id ||
         info.spec.map[FPGA_APP_PF].device_id != pci_device_id) {
       rc = 1;
       fail_on(rc, out, "The PCI vendor id and device of the loaded AFI are not "
               "the expected values.");
     }
   }
   
   return rc;
 out:
   return 1;
}


// utility func for loading instruction from hex file
void instrLoader(uint32_t hex_arr [], int inst_no){
    FILE *fptr = fopen("hex.txt", "r");
    // Assigning the instructions to array
    int i;
    for (i = 0; i < inst_no; ++i)
    {
        fscanf(fptr, "%X", &hex_arr[i]);
    }
    // Closing the file
    fclose(fptr);
}

int main(int argc, char **argv){
    uint8_t   reset_su     = 0U;
    uint16_t  dip_sw_val   = 0U;
    uint16_t  led_val      = 0U;
    uint16_t  tohost_val   = TO_HOST;
    int       slot_id      = 0, 
              bar_id       = APP_PF_BAR4,
              rc,
              opt;
    uint32_t address       = BRAM_START_ADDR;
    long     delayValue    = WAIT_DELAY;
    uint32_t instruction   = 0U;

    rc = fpga_mgmt_init();
    fail_on(rc, out, "Unable to initialize the fpga_mgmt library");

    rc = check_afi_ready(slot_id);
    fail_on(rc, out, "AFI not ready");

    rc = fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);
   
    printf("\n ------ ---- --- --- -- - -- TURNINGN DIP SWITCH / HYDRA RESET ON  ---- --- -- -- - -- - - - --- - \n");

    rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);
    fail_on(rc, out, "FAIL TO READ VDIP1");
    printf("CURRENT VDIP VALUE : 0x%02x \n", dip_sw_val);

    printf("SLEEP FOR %4ld nanoseconds \n", delayValue);
    // nanosleep(&delayValue, &delayValue);

    dip_sw_val             = SU_RESET_OFF;

    rc = fpga_mgmt_set_vDIP(slot_id, dip_sw_val);
    fail_on(rc, out, "FAIL TO WRITE VDIP1");
    msleep(1UL);
    rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);
    fail_on(rc, out, "FAIL TO READ VDIP1");
    printf("NEW VDIP VALUE: 0x%02x \n", dip_sw_val);

    uint32_t instructions_arr[TOTAL_INSTR];
    instrLoader(&instructions_arr, TOTAL_INSTR);

    printf("===== Starting with writing into BRAM via BAR 01 =====\n");
    
    int i = 0;
    for(i=0; i<TOTAL_INSTR; i++){

        instruction = instructions_arr[i];

        printf("Writing 0x%08x to BRAM", instruction);
        printf("ON ADDRESS 0x%08x", address);
        printf("\n");

        rc = fpga_pci_poke(pci_bar_handle, address, instruction);
        fail_on(rc, out, "Unable to write to the fpga !");
	msleep(1UL);
        address = address + 4;
    }
    msleep(1UL);
    uint32_t expectedInstruction = 0U;
    address = BRAM_START_ADDR;
    int j = 0;
    for (j=0; j < TOTAL_INSTR; j++){

        expectedInstruction = instructions_arr[j];
        rc = fpga_pci_peek(pci_bar_handle, address, &instruction);

        fail_on(rc, out, "Unable to read from the fpga !");
        printf("READING FROM 0x%08x ", address);
        printf("VALUE 0x%08x ------", expectedInstruction);
        
        if(expectedInstruction == instruction){
            printf("PASSSED  - 0x%08x", instruction);
        } else {
            printf("FAILED  - 0x%08x", instruction);
        }
        printf("\n");

        address = address + 4;
    }

    //printf("\n ------ ---- --- --- -- - -- WRITING DEADBEEF TO TO-HOST  ---- --- -- -- - -- - - - --- - \n");
    
    instruction = DEADBEEF;
    address = TO_HOST;

   // printf("------------- deadbeef val 0x%08x", instruction);

    rc = fpga_pci_poke(pci_bar_handle, address, instruction);
    fail_on(rc, out, "Unable to write to the fpga !");
    msleep(1UL);
    printf("\n ------ ---- --- --- -- - -- TURNINGN DIP SWITCH / HYDRA RESET OFF  ---- --- -- -- - -- - - - --- - \n");
    
    dip_sw_val |= SU_RESET_ON;
    rc = fpga_mgmt_set_vDIP(0,dip_sw_val);
    fail_on(rc, out, "FAILED TO WRITE VDIP 2");

    rc = fpga_mgmt_get_vDIP_status(0, &dip_sw_val);
    fail_on(rc, out, "FAIL TO GET VDIP SWITCH VAL");
    printf("VDIP VALUE: 0x%02x \n", dip_sw_val);
    
    rc = fpga_mgmt_get_vLED_status(0, &led_val);
    fail_on(rc, out, "FAIL TO GET LEDs");
    printf("VLED VALUE: 0x%02x \n", led_val);

    uint32_t pass_val = PASSED_VAL;
    uint32_t fail_val = FAILED_VAL;

   // printf("\n ------ ---- --- --- -- - -- PEEKING THRU TO-HOST  ---- --- -- -- - -- - - - --- - \n");
    
    int k =0;
    address = TO_HOST;
    for(k=0;k<0;k++){

        nanosleep(&delayValue, &delayValue);

        rc = fpga_pci_peek(pci_bar_handle, address, &instruction);
        fail_on(rc, out, "Unable to read read from the fpga !");
        printf("peeked value: 0x%x\n", instruction);

        if(instruction == pass_val) {

            printf("TEST PASSED\n");
            printf("Resulting value matched expected value 0x%x.\n It worked!\n", instruction);
            

        }
        if(instruction == fail_val) {

            printf("TEST FAILED\n");
            printf("Resulting value matched expected value 0x%x.\n It worked!\n", instruction);
        
        }
    msleep(1UL);
    dip_sw_val |= JTAG_RESET_ON;
    rc = fpga_mgmt_set_vDIP(0,dip_sw_val);
    fail_on(rc, out, "FAILED TO WRITE VDIP 2");

        rc = fpga_mgmt_get_vLED_status(0, &led_val);
        fail_on(rc, out, "FAIL TO GET LEDs");
        printf("VLED VALUE: 0x%02x \n", led_val);
    }

out:
    /* clean up */
    if (pci_bar_handle > PCI_BAR_HANDLE_INIT) 
    {
        rc = fpga_pci_detach(pci_bar_handle);

        if (rc) 
        {
            printf("Failure while detaching from the FPGA\n");
        }
    }

    fpga_mgmt_close();

    
}
