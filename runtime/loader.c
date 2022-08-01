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
#include "fpga_dma.h"
#include <utils/sh_dpi_tasks.h>

#define SU_RESET_OFF            0x00                // VDip Switches for Hydra SU Reset off
#define SU_RESET_ON             0x01                // VDip Switches for Hydra SU Reset on
#define DEADBEEF                0xdeadbeef          // DEADBEEF value
#define WAIT_DELAY              5002                // Delay in ms
#define ZERO_VAL                0x00                // Zero value
#define TO_HOST                 0x120               // To Host address
#define BRAM_START_ADDR         0x0                 // Start address of BRAM
#define PASSED_VAL              0                   // Value for PASSED
#define FAILED_VAL              1                   // Value for FAILED
#define HEX_FILE_PATH         "./elf.hex"           // Intermediate hex file


/*              AFI Specific Logic             */
// const struct logger *logger             = &logger_stdout;
static uint16_t pci_vendor_id           = 0x1D0F; /* Amazon PCI Vendor ID */
static uint16_t pci_device_id           = 0xF000; /* PCI Device ID preassigned by Amazon for F1 applications */
static pci_bar_handle_t pci_bar_handle  = PCI_BAR_HANDLE_INIT;
static int pf_id                        = FPGA_APP_PF;

int main(int argc, char* argv[]){

    uint8_t   reset_su     = 0U;                                                // Reset SU
    uint16_t  dip_sw_val   = 0U,                                                // DIP switch value
              led_val      = 0U,                                                // LED value
              tohost_val   = TO_HOST;                                           // To Host value
    int       slot_id      = 0,                                                 // Slot ID
              bar_id       = "dma" == argv[2] ? FPGA_DMA_XDMA : APP_PF_BAR1,    // Bar ID
              rc,                                                               // Return code
              opt,
              i,j;                                                              // Option
    uint32_t address       = BRAM_START_ADDR,                                   // Address
             instruction   = 0U,
             pass_val = PASSED_VAL,
             fail_val = FAILED_VAL;                                                // Instruction
    long     delayValue    = WAIT_DELAY;                                        // Delay value

    /* checking for the number of arguments */
    if (argc != 3){
        printf("Usage: %s <elf_file>/<hex_file> <ddr/dma> \n", argv[0]);
        return 1;
    }

    /* Reading instructions via elf or hex */
     if(argv[1] == "elf"){
        elfConverter(argv[1]);
    }
    int total_instr = count_instructions(argv[1] == "elf" ? HEX_FILE_PATH : argv[1]);
    uint32_t instructions_arr[total_instr];
    uint32_t expectedInstruction = 0U;


    /* FPGA Init + AFI Ready Check + FPGA PCI Attach */
    rc = fpga_mgmt_init();
    fail_on(rc, out, "Unable to initialize the fpga_mgmt library");

    rc = check_afi_ready(slot_id);
    fail_on(rc, out, "AFI not ready");

    rc = fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);
   
   
    printf("\n ------ ---- --- --- -- - -- TURNINGN DIP SWITCH / HYDRA RESET ON  ---- --- -- -- - -- - - - --- - \n");

    /* Resetting the SU */
    rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);
    fail_on(rc, out, "FAIL TO READ VDIP1");
    printf("CURRENT VDIP VALUE : 0x%02x \n", dip_sw_val);

    printf("SLEEP FOR %4ld nanoseconds \n", delayValue);
    msleep(1UL);

    dip_sw_val             = SU_RESET_OFF;

    rc = fpga_mgmt_set_vDIP(slot_id, dip_sw_val);
    fail_on(rc, out, "FAIL TO WRITE VDIP1");

    rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);
    fail_on(rc, out, "FAIL TO READ VDIP1");
    printf("NEW VDIP VALUE: 0x%02x \n", dip_sw_val);

   
    // argv[1] == "elf" ? elfLoader(instructions_arr, argv[1]) : hexLoader(instructions_arr, argv[1]);
    printf("===== Starting with writing into %s via %s =====\n", argv[2] == "dma" ? "DMA" : "BRAM" , argv[2] == "dma" ? "DMA" : "PCIe AppPF BAR1");
    
 
    for(i=0; i < total_instr; i++){
        msleep(1UL);
        instruction = instructions_arr[i];

        printf("Writing 0x%08x to %s", instruction, argv[2] == "dma" ? "DMA" : "PCIe AppPF BAR1");
        printf("ON ADDRESS 0x%08x", address);
        printf("\n");

        rc = fpga_pci_poke(pci_bar_handle, address, instruction);
        fail_on(rc, out, "Unable to write to the fpga !");

        address = address + 4;
    }

    address = BRAM_START_ADDR;
    for (j=0; j < total_instr; j++){

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

    printf("\n ------ ---- --- --- -- - -- WRITING DEADBEEF TO TO-HOST  ---- --- -- -- - -- - - - --- - \n");
    
    instruction = DEADBEEF;
    address = TO_HOST;

    printf("------------- deadbeef val 0x%08x", instruction);

    rc = fpga_pci_poke(pci_bar_handle, address, instruction);
    fail_on(rc, out, "Unable to write to the fpga !");

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

    printf("\n ------ ---- --- --- -- - -- PEEKING THRU TO-HOST  ---- --- -- -- - -- - - - --- - \n");
    
    int k =0;
    address = TO_HOST;
    for(k=0;k<20;k++){

        msleep(1UL);

        rc = fpga_pci_peek(pci_bar_handle, address, &instruction);
        fail_on(rc, out, "Unable to read read from the fpga !");
        printf("peeked value: 0x%x\n", instruction);

        if(instruction == pass_val) {

            printf("TEST PASSED\n");
            printf("Resulting value matched expected value 0x%x.\n It worked!\n", instruction);
            break;

        }
        if(instruction == fail_val) {

            printf("TEST FAILED\n");
            printf("Resulting value matched expected value 0x%x.\n It worked!\n", instruction);
        
        }

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

// AWS FPGA func to check if AFI is loaded in slot 
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

//utility func for counting number of instructions in a file
int count_instructions(char *filename) {
    FILE *fp;
    int count = 0;
    char line[256];

    fp = fopen(filename, "r");
    if (fp == NULL) {
        printf("Error opening file %s\n", filename);
        return -1;
    }
    while (fgets(line, sizeof(line), fp) != NULL) {
        count++;
    }
    fclose(fp);
    return count;
}

// utility func for loading instruction from hex file
void hexLoader(uint32_t hex_arr [], char hex_file_path[]) {
    FILE *fp = fopen(hex_file_path, "r");
    int inst_no = 0;
    // Assigning the instructions to array
    char c;
    for (c = getc(fp); c != EOF; c = getc(fp))
        if (c == '\n')
            // append c in hex_arr[inst_no]
            hex_arr[inst_no] = strtol(hex_arr[inst_no], NULL, 16);
            inst_no++;            
    
    // Closing the file
    fclose(fp);
}

// utility func for loading instruction from elf file
int elfConverter(char elf_file_path[]) 
{
    int      rc;
    uint64_t addr = 0UL;
    FILE     *hfd = NULL;
    char     read_str[10] = {0};
    char     objcopy_cmd[2048] = {0};

    /* Convert the ELF File to a Hex file */
    snprintf(objcopy_cmd, sizeof(objcopy_cmd), "objcopy -O verilog %s %s", elf_file_path, HEX_FILE_PATH);
    rc = system(objcopy_cmd);
    fail_on(rc < 0, out, "Unable to convert ELF file to a Hex file");

    /* Open the Hex file for loading into the FPGA Memory */
    rc = 1;
    hfd = fopen(HEX_FILE_PATH, "r");
    fail_on(hfd == NULL, out, "Unable to open %s\n", HEX_FILE_PATH);

    // /* Load data bytes from hex file into the FPGA Memory */
    // while ((feof(hfd) == 0) && (fscanf(hfd, "%s", read_str) != 0)) 
    // {
    //     /* Load Address ? */
    //     if ((read_str[0] == '@') && (read_str[1]))
    //     {
    //         sscanf(read_str, "@%lX", &addr);
    //         addr -= cmem_base;
    //     }
        
    // }
    fclose(hfd);

    // instrLoader(hex_arr, HEX_FILE_PATH);
        return 0;
    out:
        return 1;

}