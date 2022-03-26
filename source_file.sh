cd aws-fpga
source hdk_setup.sh
cd ../scalar-unit
source setup.bash
cd ../aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/scripts/
make TEST=test_ddr
