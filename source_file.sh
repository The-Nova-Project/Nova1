cd aws-fpga
source hdk_setup.sh
cd ../scalar-unit
source setup.bash
cd ../CL/verif/scripts/
make TEST=test_ddr
cd ../sim/vivado/test_ddr
xsim -gui tb
