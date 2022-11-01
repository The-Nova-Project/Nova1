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
#include <pthread.h>
#include  <signal.h>

#include <arpa/inet.h>
#include <sys/socket.h>
#define PORT 8080


#define WAIT_DELAY2             100

#define rx_enable_interrupt     0x8000C               //rx control reg
#define rx_data                 0x80000        //read data from receiver
#define rx_intr_status          0x0             //by default value is 0
#define rx_sts_reg              0x80008           //UART1 status reg

#define tx_data                 0x80004        //read data from receiver

#define interrupt_value         0x10   
#define data_value              0xa





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


uint32_t receiver(){


    uint32_t intrrupt_enable_value        = interrupt_value;
    uint32_t rx_control_reg        = rx_enable_interrupt;
    uint32_t   rx_data_reg         = rx_data;
    uint32_t   rx_status_reg       = rx_sts_reg;
    uint32_t   write_value          ;
    int        for_AND             = 16;
    int        result_AND         ;
    uint32_t   intr_sts            ;             
    int        slot_id             = 0, 
              //  bar_id              = APP_PF_BAR1,
               bar_id2             = APP_PF_BAR0,
               rc;

    

    rc = fpga_mgmt_init();
    fail_on(rc, out, "Unable to initialize the fpga_mgmt library");

    rc = check_afi_ready(slot_id);
    fail_on(rc, out, "AFI not ready");




    printf("\n ------ ---- --- --- -- - -- reading data from RX  ---- --- -- -- - -- - - - --- - \n");



    rc = fpga_pci_attach(slot_id, pf_id, bar_id2, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);

    

    printf("writing 0x%08x to RX register \n", intrrupt_enable_value);  
    rc = fpga_pci_poke(pci_bar_handle, rx_control_reg, intrrupt_enable_value);
    fail_on(rc, out, "Unable to write to the fpga !");


    rc = fpga_pci_peek(pci_bar_handle, rx_status_reg, &intr_sts);
    fail_on(rc, out, "Unable to read read from the fpga !");
    printf("Byte received valid value is  - 0x%08x", intr_sts);


    result_AND = intr_sts & for_AND;
    

    while (result_AND != 16)
    {
        rc = fpga_pci_peek(pci_bar_handle, rx_status_reg, &intr_sts);
        fail_on(rc, out, "Unable to read read from the fpga !");
        printf("Byte received valid value is  - 0x%08x", intr_sts);

        result_AND = intr_sts & for_AND;
        
    }

    rc = fpga_pci_peek(pci_bar_handle, rx_data_reg, &write_value);
    fail_on(rc, out, "Unable to read read from the fpga !");                            
    printf("The received value is  - 0x%08x \n", write_value);

    // return write_value;


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

    return write_value;

    
}

void* receiver_thread(void* arg){



  int server_fd, new_socket;
	struct sockaddr_in address;
	int opt = 1;
	int addrlen = sizeof(address);
	// char buffer[1024] = { 0 };
	// char* hello = "Hello from server";

  char str[100];
	


	// Creating socket file descriptor
	if ((server_fd = socket(AF_INET, SOCK_STREAM, 0))
		== 0) {
		perror("socket failed");
		exit(EXIT_FAILURE);
	}

	// Forcefully attaching socket to the port 8080
	if (setsockopt(server_fd, SOL_SOCKET,
				SO_REUSEADDR , &opt,
				sizeof(opt))) {
		perror("setsockopt");
		exit(EXIT_FAILURE);
	}


	if (setsockopt(server_fd, SOL_SOCKET,
				 SO_REUSEPORT, &opt,
				sizeof(opt))) {
		perror("setsockopt");
		exit(EXIT_FAILURE);
	}


	address.sin_family = AF_INET;
	address.sin_addr.s_addr = INADDR_ANY;
	address.sin_port = htons(PORT);

	// Forcefully attaching socket to the port 8080
	if (bind(server_fd, (struct sockaddr*)&address,
			sizeof(address))
		< 0) {
		perror("bind failed");
		exit(EXIT_FAILURE);
	}
	if (listen(server_fd, 3) < 0) {
		perror("listen");
		exit(EXIT_FAILURE);
	}
	if ((new_socket
		= accept(server_fd, (struct sockaddr*)&address,
				(socklen_t*)&addrlen))
		< 0) {
		perror("accept");
		exit(EXIT_FAILURE);
	}


	uint32_t final_val = receiver();
	// receiver(final_val);
    printf("\nFINAL VALUE COMING IS %08x",final_val );
  sprintf(str, "%d", final_val);
  printf("\nCONVERTED TO SRT IS %s", str);
  char* hello = str;
    printf("\nSAVED IN HELLLO IS %s", hello);


  printf("Your chararcter is %s" , hello);
  printf("\n");
	send(new_socket, hello, strlen(hello), 0);
	printf("Your message sent\n");

	
// closing the connected socket
	close(new_socket);
// closing the listening socket
	shutdown(server_fd, SHUT_RDWR);
  // return 1;

  return NULL;
}




void* transmitter(void* arg){

    uint32_t   send_data           = data_value;
    uint32_t   tx_transmit         = tx_data;
    int loop_true                  = 1;
    int        slot_id             = 0,
    
            //    bar_id              = APP_PF_BAR1,
               bar_id2             = APP_PF_BAR0,
               rc;
    long      delayValue2          = WAIT_DELAY2;

    rc = fpga_mgmt_init();
    fail_on(rc, out, "Unable to initialize the fpga_mgmt library");

    rc = check_afi_ready(slot_id);
    fail_on(rc, out, "AFI not ready");

    rc = fpga_pci_attach(slot_id, pf_id, bar_id2, 0, &pci_bar_handle);
    fail_on(rc, out, "Unable to attach to the AFI on slot id %d", slot_id);


    printf("\n ------ ---- --- --- -- - -- sending data ---- --- -- -- - -- - - - --- - \n");


    while (loop_true){
      printf("writing 0x%08x to transmit register \n", send_data);    
      rc = fpga_pci_poke(pci_bar_handle, tx_transmit, send_data);
      fail_on(rc, out, "Unable to write to the fpga !");
      printf("\n");


      printf("SLEEP FOR %4ld microecond \n", delayValue2);                              //time sleep
      usleep(delayValue2);
    }
    

    // return 0;

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

    return NULL;

    
}




void INThandler(int);


int main(){

    pthread_t newthread;
    pthread_create(&newthread , NULL , receiver_thread, NULL);
    pthread_join(newthread, NULL);

    transmitter(NULL);
}


void INThandler(int sig)
{
     char  c;

     signal(sig, SIG_IGN);
     printf("OUCH, did you hit Ctrl-C?\n"
            "Do you really want to quit? [y/n] ");
     c = getchar();
     if (c == 'y' || c == 'Y')
          exit(0);
     else
          signal(SIGINT, INThandler);
     getchar(); // Get new line character
}
