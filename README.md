# Nova1

Nova is a open source RISCV-based embedded AI platform its objective is to provide students with hands on development experience with latest technologies 
focus on latest open-source tools and low-cost development methodologies

- linux RISCV SystemVerilog Verilator
- AWS-Cloud FPGA

## Build Prerequisites
 Create a `StableEnv` folder for setting up the system `/home/$USER/StableEnv` 
 Change the `$USER` name in this repo with your `$USER` name 

## Build Instruction
To Build the CL-design, first source the environment variables for **Scalar-Unit** and **AWS-FPGA** and then run the script:
```
source source_file.sh
```

Then change the directory for test
```
cd /home/$USER/StableEnv/aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/scripts/
```

Then make the environment for simulation and compilation
```
make TEST = 'test_file'
```

for snapshot of Project change the directory and run the xsim command
```
cd ../sim/vivado/test_file_name/
xsim -gui tb
```


# Block Diagram
![Block Diagram](https://user-images.githubusercontent.com/81433387/160123688-4e167296-8104-4c32-89f9-1c53b9c22632.png)
