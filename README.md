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
![image](https://user-images.githubusercontent.com/81433387/195894746-7e0540c7-5104-45db-ac9b-973414a6f6f2.png)

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


