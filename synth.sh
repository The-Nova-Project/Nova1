source /home/muheet/update_bd/afi_check/aws-fpga/hdk_setup.sh
export CL_DIR="/home/muheet/update_bd/afi_check/aws-fpga/hdk/cl/developer_designs/nova_project"
export VIVADO_NOVA="/home/muheet/update_bd/afi_check/nova_project"
export SU_ROOT="/home/muheet/update_bd/afi_check/scalar-unit"
export VIVADO_TEST="/home/muheet/update_bd/afi_check/test_subsystem"
sudo rm -rf /home/muheet/update_bd/afi_check/aws-fpga/hdk/cl/developer_designs/nova_project/build/src_post_encryption
cd aws-fpga/hdk/cl/developer_designs/nova_project/build/scripts
./aws_build_dcp_from_cl.sh -clock_recipe_a A2 -strategy CONGESTION -foreground
