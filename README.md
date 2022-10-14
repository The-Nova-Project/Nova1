# Nova1

Nova is a open source RISCV-based embedded AI platform its objective is to provide students with hands on development experience with latest technologies 
focus on latest open-source tools and low-cost development methodologies

- linux RISCV SystemVerilog Verilator
- AWS-Cloud FPGA


# Block Diagram
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

# Expected Output
![image](https://user-images.githubusercontent.com/81433387/195928756-9597f8d3-59bc-45de-a7ae-a3afc6db75a0.png)


Snapshot tb.
```
cd ../sim/vivado/test_ddr_peek_poke_sv/
xsim -gui tb
```

