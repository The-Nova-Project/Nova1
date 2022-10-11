cd aws-fpga
source hdk_setup.sh
cd ../scalar-unit
source setup.bash
rm -rf /home/$USER/Custom_Logic/verif/sim/
cd ../Custom_Logic/
export CL_DIR=$(pwd)
cd verif/scripts/
make TEST=test_ddr_peek_poke
cd ../sim/vivado/test_ddr_peek_poke_sv/
xsim -gui tb
