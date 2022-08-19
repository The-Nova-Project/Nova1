cd aws-fpga
source hdk_setup.sh
cd ../scalar-unit
source setup.bash
rm -rf /home/$USER/update_bd/afi_check/aws-fpga/hdk/cl/developer_designs/nova_project/verif/sim/
cd ../aws-fpga/hdk/cl/developer_designs/nova_project/
export CL_DIR=$(pwd)
cd verif/scripts/
make TEST=test_ddr_peek_poke
cd ../sim/vivado/test_ddr_peek_poke_sv/
xsim -gui tb
