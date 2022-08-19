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

#define tx_uart                     0x00000
#define tx_transmit_reg             0x00004
#define rx_uart                     0x80000
#define rx_uart_control_reg         0x8000C
#define rx_uart_status_reg          0x80008



#define interrupt_value         0x10
#define data_value              0xa
#define WAIT_DELAY2             100



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


  
    
    uint32_t   send_data           = data_value;
    uint32_t   tx_transmit         = tx_transmit_reg;
    uint32_t   intrrupt_enable_value = interrupt_value;
    uint32_t   rx_control          = rx_uart_control_reg;
    uint32_t   rx_status           = rx_uart_status_reg;
    uint32_t   rx_data_read        = rx_uart;
    uint32_t   write_value         ;
    int        for_AND             = 16;
    int        result_AND         ;
    uint32_t   intr_sts            ;
    int        slot_id             = 0, 
               bar_id              = APP_PF_BAR1,
               bar_id2             = APP_PF_BAR0,
               rc;
            //   opt;
    long      delayValue2          = WAIT_DELAY2;

    

    rc = fpga_mgmt_init();
    fail_on(rc, out, "Unable to initialize the fpga_mgmt library");

    rc = check_afi_ready(slot_id);
    fail_on(rc, out, "AFI not ready");

    rc = fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);


    printf("\n ------ ---- --- --- -- - -- sending data ---- --- -- -- - -- - - - --- - \n");

    

    printf("writing 0x%08x to transmit register \n", send_data);    //interrupt enable rx
    rc = fpga_pci_poke(pci_bar_handle, tx_transmit, send_data);
    fail_on(rc, out, "Unable to write to the fpga !");
    printf("\n");

    printf("SLEEP FOR %4ld microecond \n", delayValue2);                              //time sleep
    usleep(delayValue2);





    printf("\n ------ ---- --- --- -- - -- receiving data ---- --- -- -- - -- - - - --- - \n");



    rc = fpga_pci_attach(slot_id, pf_id, bar_id2, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);


    printf("writing 0x%08x to enable interrupt \n", intrrupt_enable_value);    //interrupt enable rx
    rc = fpga_pci_poke(pci_bar_handle, rx_control, intrrupt_enable_value);
    fail_on(rc, out, "Unable to write to the fpga !");
    printf("\n");


   
   rc = fpga_pci_peek(pci_bar_handle, rx_status, &intr_sts);
    fail_on(rc, out, "Unable to read read from the fpga !");
    printf(" valid value is  - 0x%08x", intr_sts);
    printf("\n");


    result_AND = intr_sts & for_AND;
    

    while (result_AND != 16)
    {
        rc = fpga_pci_peek(pci_bar_handle, rx_status, &intr_sts);
        fail_on(rc, out, "Unable to read read from the fpga !");
        
        result_AND = intr_sts & for_AND;
        printf("Result of AND is %d" , result_AND);
        
    }

    
    printf("\n");

    printf("Exit from loop ");
    printf("\n");

    printf("valid value is  - 0x%08x", intr_sts);
    printf("\n");
    

    


    rc = fpga_pci_peek(pci_bar_handle, rx_data_read, &write_value);
    fail_on(rc, out, "Unable to read read from the fpga !");                                 //read byte received

    printf("value received is - '%d'", write_value);

    // if(write_value == chr){
    //         printf(" PASSSED");
    //     } else {
    //         printf("FAILED");
    //     }

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