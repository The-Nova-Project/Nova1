# Nova1

[NOVA](https://the-nova-project.github.io/) is a open source RISCV-based Application Class SoC. This project provided students with hands on development experience with latest technologies and focused on latest open-source tools and low-cost development methodologies. It has also been verified in AWS FPGA prototypes.

We have released both the Verilog RTL code as well as synthesis and back-end flow with complete guiding documentaation.

## Objectives
- To enable students to learn industry based hard skills and experience of the use of soft skills required in a group projects.
- To provide students with hands-on implementation experience with latest technologies and environments.
- To build an application class SoC Focused on latest open-source tools and low-cost development methodologies. 
    - Linux, RISCV, SystemVerilog
    - AWS Cloud FPGA, Xilinx Vivado, Verilator

Staffed by student team with industry mentors.

## Documentation
There are several detailed pieces of documentation about Nova1 in the docs folder listed below:

- [AWS Cloud FPGA](https://github.com/aws/aws-fpga)
- [AXI Lite Interface](https://caslab.csl.yale.edu/courses/EENG428/19-20a/tutorials/axi4lite_interface_development.pdf)
- [Booting Zephyr RTOS Kernel](https://github.com/Abdul-muheet-ghani/Nova1/blob/main/Docs/Porting%20Zephyr%20RTOS.pptx)
- [NOVA Emulation Documentation](https://github.com/Abdul-muheet-ghani/Nova1/blob/main/Docs/NOVA%20EMULATION%20PROJECT%20Documentation.pdf)
- [Nova1 Simulation Presentation](https://github.com/Abdul-muheet-ghani/Nova1/blob/main/Docs/AWS%20EC2%20simulation%20ppt.pdf)
- [RTL Simulation for Verilog/VHDL Custom Logic Design with AWS HDK](https://github.com/aws/aws-fpga/blob/master/hdk/docs/RTL_Simulating_CL_Designs.md)

## Block Diagram
![WhatsApp Image 2022-10-20 at 3 37 40 PM](https://user-images.githubusercontent.com/81433387/198314820-b93e14e2-9ede-4753-a61a-d59f514cb259.jpeg)


## Build Prerequisites
```
git clone https://github.com/The-Nova-Project/Nova1
cd Nova1
git submodule update --init --recursive
```

## Build Instruction
To Build the CL-design, source the environment variables for **Scalar-Unit** and **AWS-FPGA** by runing the script:
```
cd aws-fpga
source hdk_setup.sh
source sdk_setup.sh
cd ../scalar-unit
source setup.bash
```

Setup the Custom Logic directory Path.
```
cd ../Custom_Logic/
export CL_DIR=$(pwd)
```

Test Simulation On Vivado.
```
cd verif/scripts/
make TEST=test_file
```
The Pre-built testbench `test_ddr_peek_poke` reads `the ddr_to_bram.hex` file which contains the test assembly.

```
make TEST=test_ddr_peek_poke
```

## Expected Output
![image](https://user-images.githubusercontent.com/81433387/195928756-9597f8d3-59bc-45de-a7ae-a3afc6db75a0.png)


Snapshot tb.
```
cd ../sim/vivado/test_ddr_peek_poke_sv/
xsim -gui tb
```
![image](https://user-images.githubusercontent.com/81433387/195996144-1a61f14f-e668-4ca3-8d51-8dcf930bb22f.png)



## AWS-FPGA EC2 Porting
To clear the AFI, use the following command will clear the FPGA image, including internal and external memories and expose the default AFI Vendor and Device Id, and display the final state for the given FPGA slot number.
```sudo fpga-clear-local-image -S 0 -H```

To load the AFI, use the FPGA slot number and Amazon Global FPGA Image ID parameters; this command will wait for the AFI to transition to the "loaded" state. And expose the unique AFI Vendor and Device Id, and display the final state for the given FPGA slot number.


 ```sudo fpga-load-local-image -S 0 -I agfi-01e33810ff4c9d23c```

### Expected Output
```
[muheet@ip-172-33-7-206 runtime]$ sudo fpga-clear-local-image -S 0 -H
Type  FpgaImageSlot  FpgaImageId             StatusName    StatusCode   ErrorName    ErrorCode   ShVersion
AFI          0       none                    cleared           1        ok               0       0x04261818
Type  FpgaImageSlot  VendorId    DeviceId    DBDF
AFIDEVICE    0       0x1d0f      0x1042      0000:00:1d.0


[muheet@ip-172-33-7-206 runtime]$ sudo fpga-load-local-image -S 0 -I agfi-01e33810ff4c9d23c

AFI          0       agfi-01e33810ff4c9d23c  loaded            0        ok               0       0x04261818
AFIDEVICE    0       0x1d0f      0xf000      0000:00:1d.0

```

# Runtime Driver

This repo contains [AWS-FPGA](https://github.com/aws/aws-fpga) compatible Runtime C Drivers that will drive the AWS-FPGA CL Designs to interract with the Cloud FPGA via AFI.

# How to Run

1. First Copy the Driver you want to run. (Considering the AFI is loaded in slot 0)
2. Paste it in your design's `software/runtime` directory.
3. Open Terminal in this directory.
4. First type `make driverName` (for example if the driver is loader.c then type `make loader`)
5. Then once the driver is compiled successfully type `sudo ./driverName` (for example if driver if bramLoader.c then type `sudo ./loader *args`)
6. All the interactions that the driver has done with the FPGA will be shown on the terminal screen

## Drivers
This repo contains the following drivers

| Driver | Format | Purpose |
| ------------- | ------------- | ------------- |
| Loader | ./BRAMLoader &lt;hex-file&gt;/&lt;elf-file&gt; dma/bram | Reads a hex/elf file and stores the data into BRAM/DMA (WORD aligned) |
| UART   | ./uart_recieve | Transmit and Receive data through UART via OCL Interface |

## Hello World Example
Once the kernel is loaded in the DDR and after the reset is disabled, Hydra start fetching the kernel from DDR due to having DDR boot address set in it.
We have two peripheral UART and BRAM to check the expected output of the main application.
Hydra transmit the data on UART and uart is connect with OCL interface so we access the data through UART via OCL interface using runtime driver. 

- sudo ./DDRLoader
- sudo ./uart_recieve

## Expected Output
```
[muheet@ip-172-33-7-206 runtime]$ sudo ./uart_receive 
AFI PCI  Vendor ID: 0x1d0f, Device ID 0xf000

 ----------------------------Receiving Data from Target UART---------------------------- 

Hello_world

 ------From CORE to UART1 and UART1 to UART2 transmission complete------

```
## Debugging 

NOVA supports the RISC-V External Debug Draft Spec and hence you can debug (and program) the AWS-FPGA using OpenOCD. We provide two example scripts for OpenOCD below.

To get started you require to run OpenOCD configuration file as the below command
```
/home/muheet/Nova1/Custom_Logic/software/runtime
```
In this is the case, you can go on and start openocd with the runtime/aws_f1_pcie_xvc.cfg configuration file below.

```
sudo /home/shared/tools/experimental/openocd_aws_f1_xvc_app_bar0/bin/openocd -f aws_f1_pcie_xvc.cfg
```
Then you will be able to either connect through telnet or with gdb:
```
riscv64-unknown-elf-gdb -ex "target extended-remote localhost:3333"
```



