source /home/muheet/Nova1/aws-fpga/hdk_setup.sh
export CL_DIR="/home/muheet/Nova1/aws-fpga/hdk/cl/developer_designs/nova_project"
export VIVADO_NOVA="/home/muheet/Nova1/nova_project"
export SU_ROOT="/home/muheet/Nova1/scalar-unit"
export VIVADO_TEST="/home/muheet/Nova1/test_subsystem"
sudo rm -rf /home/muheet/Nova1/aws-fpga/hdk/cl/developer_designs/nova_project/build/src_post_encryption
cd aws-fpga/hdk/cl/developer_designs/nova_project/build/scripts
./aws_build_dcp_from_cl.sh -clock_recipe_a A2 -strategy CONGESTION -foreground
