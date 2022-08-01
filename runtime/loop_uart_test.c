
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
#include <time.h>

// VDip Switches for Hydra SU Reset
// #define SU_RESET_OFF            0x02
// #define SU_RESET_ON             0x03
// #define DEADBEEF                0xdeadbeef
#define WAIT_DELAY1             1200
#define WAIT_DELAY2             100
#define tx_enable_interrupt     0x0004000C      //for bar1 transmit enable interrupt
#define tx_data                 0x00000         //for bar1 tx data
#define tx_sts                  0x00008      //UART1 status reg
#define rx_enable_interrupt     0x0000000C      ////for bar1 receive enable interrupt
#define rx_data                 0x000000        //read data from receiver
#define rx_valid_status         0x0             //by default value is 0
#define rx_sts                  0x000008        //UART2 status reg
#define tx_empty_status         0x0

#define interrupt_value         0x10
#define data_value              0xabc     

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


int main(int argc, char **argv){


    // uint8_t   reset_su          = 0U;
    // uint16_t  dip_sw_val        = 0U;
    // uint32_t tx_control_reg     = tx_enable_interrupt;
    // uint32_t intrrupt_enable_value        = interrupt_value
    // uint32_t rx_control_reg     = rx_enable_interrupt;
    // uint32_t   tx_status_reg       = tx_sts;
    // uint16_t   dip_sw_val          = 0U;
    uint32_t   tx_data_reg         = tx_data;
    // uint32_t   rx_data_reg         = rx_data;
    // uint32_t   tx_status_reg       = tx_sts;
    // uint32_t   data_write_value    = data_value;
    uint32_t   write_value         = tx_empty_status;
    // uint32_t   valid_status        = rx_valid_status;
    // uint16_t   led_val             = 0U;               
    int        slot_id             = 0, 
               bar_id              = APP_PF_BAR1,
              //  bar_id2             = APP_PF_BAR0,
               rc;
            //   opt;
    long      delayValue2          = WAIT_DELAY2;
    char chr;
    

    rc = fpga_mgmt_init();
    fail_on(rc, out, "Unable to initialize the fpga_mgmt library");

    rc = check_afi_ready(slot_id);
    fail_on(rc, out, "AFI not ready");

    rc = fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);


    printf("\n ------ ---- --- --- -- - -- writing data to TX  ---- --- -- -- - -- - - - --- - \n");


    // printf("enable interrupt 0x%08x of TX register \n", intrrupt_enable_value/*, tx_control_reg*/);   //interrupt enable
    // rc = fpga_pci_poke(pci_bar_handle, tx_control_reg, intrrupt_enable_value);
    // fail_on(rc, out, "Unable to write to the fpga !");

    // printf("SLEEP FOR %4ld nanoseconds \n", delayValue1);
    // nanosleep(&delayValue1, &delayValue1);

    // rc = fpga_mgmt_set_vDIP(slot_id, dip_sw_val);
    // fail_on(rc, out, "FAIL TO WRITE VDIP1");

    // rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);        //set virtual switch to 0
    // fail_on(rc, out, "FAIL TO READ VDIP1");
    // printf("NEW VDIP VALUE: 0x%02x \n", dip_sw_val);

    printf("Please enter a character : ");
    scanf("%c" , &chr);



    printf("writing '%c' to TX register \n", chr/*, tx_data_reg*/);    //write data
    rc = fpga_pci_poke(pci_bar_handle, tx_data_reg, chr);
    fail_on(rc, out, "Unable to write to the fpga !");

    printf("SLEEP FOR %4ld microecond \n", delayValue2);                              //time sleep
    usleep(delayValue2);

    // rc = fpga_pci_peek(pci_bar_handle, tx_status_reg, &valid_status);                 //peek tx empty or not
    // fail_on(rc, out, "Unable to read read from the fpga !");

    // dip_sw_val   =   valid_status;

    // rc = fpga_mgmt_set_vDIP(slot_id, dip_sw_val);
    // fail_on(rc, out, "FAIL TO WRITE VDIP1");

    // rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);                             //check on virtual switch, if empty means byte transferred
    // fail_on(rc, out, "FAIL TO READ VDIP1");
    // printf("NEW VDIP VALUE  OF TX EPMTY IS: 0x%02x \n", dip_sw_val);
    
    
    // rc = fpga_mgmt_get_vLED_status(0, &led_val);
    // fail_on(rc, out, "FAIL TO GET LEDs");
    // printf("VLED VALUE: 0x%02x \n", led_val);







    printf("\n ------ ---- --- --- -- - -- reading data from RX  ---- --- -- -- - -- - - - --- - \n");



    rc = fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);

    

    // printf("writing 0x%08x to RX register \n", intrrupt_enable_value/*, rx_control_reg*/);    //interrupt enable rx
    // rc = fpga_pci_poke(pci_bar_handle, rx_control_reg, intrrupt_enable_value);
    // fail_on(rc, out, "Unable to write to the fpga !");

    printf("SLEEP FOR %4ld microecond \n", delayValue2);                              //time sleep
    usleep(delayValue2);

    printf("SLEEP FOR %4ld microecond \n", delayValue2);                              //time sleep
    usleep(delayValue2);

    // rc = fpga_pci_peek(pci_bar_handle, tx_status_reg, &valid_status);
    // fail_on(rc, out, "Unable to read read from the fpga !");
    // printf("Byte received valid value is  - 0x%08x", valid_status);

    // dip_sw_val   =   valid_status;

    // rc = fpga_mgmt_set_vDIP(slot_id, dip_sw_val);                                             //check data valid 
    // fail_on(rc, out, "FAIL TO WRITE VDIP1");

    // rc = fpga_mgmt_get_vDIP_status(slot_id, &dip_sw_val);
    // fail_on(rc, out, "FAIL TO READ VDIP1");
    // printf("NEW VDIP VALUE OF RX VAILD IS: 0x%02x \n", dip_sw_val);
    
    
    // rc = fpga_mgmt_get_vLED_status(0, &led_val);		
    // fail_on(rc, out, "FAIL TO GET LEDs");							//check VLED
    // printf("VLED VALUE: 0x%02x \n", led_val);

    

    


    rc = fpga_pci_peek(pci_bar_handle, tx_data_reg, &write_value);
    fail_on(rc, out, "Unable to read read from the fpga !");                                 //read byte received

    printf("value received is - '%c'", write_value);

    if(write_value == chr){
            printf(" PASSSED");
        } else {
            printf("FAILED");
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