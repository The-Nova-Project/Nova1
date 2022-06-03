cd aws-fpga
source hdk_setup.sh
cd ../scalar-unit
source setup.bash
cd ../aws-fpga/hdk/cl/example/cl_dram_dma/verif/scripts/
make TEST=test_ddr_peek_poke
