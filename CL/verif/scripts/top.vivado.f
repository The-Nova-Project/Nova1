# Amazon FPGA Hardware Development Kit
#
# Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Amazon Software License (the "License"). You may not use
# this file except in compliance with the License. A copy of the License is
# located at
#
#    http://aws.amazon.com/asl/
#
# or in the "license" file accompanying this file. This file is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
# implied. See the License for the specific language governing permissions and
# limitations under the License.

--define VIVADO_SIM
--define WT_DCACHE
--define VERILATOR
--define XILINX_SIMULATOR

--sourcelibext .v
--sourcelibext .sv
--sourcelibext .svh

--sourcelibdir ${CL_ROOT}/design
--sourcelibdir ${SH_LIB_DIR}
--sourcelibdir ${SH_INF_DIR}
--sourcelibdir ${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim

--include ${CL_ROOT}/../common/design
--include ${CL_ROOT}/design
--include ${CL_ROOT}/verif/sv

--include ${SH_LIB_DIR}
--include ${SH_INF_DIR}
--include ${HDK_COMMON_DIR}/verif/include
--include ${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_0/sim
--include ${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_0/hdl/verilog
--include ${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice/hdl
--include ${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice_light/hdl
--include ${CL_ROOT}/design/axi_crossbar_0
--include ${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ipshared/7e3a/hdl
--include ${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim

-f ${HDK_COMMON_DIR}/verif/tb/filelists/tb.${SIMULATOR}.f
${TEST_NAME}

-f /home/muheet/stableEnv/scalar-unit/build/flist
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/276e/simulation/fifo_generator_vlog_beh.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/2985/simulation/blk_mem_gen_v8_4.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ip/xlx_design_subsystem_axi_dwidth_converter_0_0/sim/xlx_design_subsystem_axi_dwidth_converter_0_0.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ip/xlx_design_subsystem_axi_protocol_convert_0_0/sim/xlx_design_subsystem_axi_protocol_convert_0_0.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ip/xlx_design_subsystem_axi_crossbar_0_0/sim/xlx_design_subsystem_axi_crossbar_0_0.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/ip/xlx_design_subsystem_blk_mem_gen_0_0/sim/xlx_design_subsystem_blk_mem_gen_0_0.v
/home/$USER/stableEnv/nova_project/nova_project.gen/sources_1/bd/xlx_design_subsystem/sim/xlx_design_subsystem.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/276e/simulation/fifo_generator_vlog_beh.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ip/AXIcrossbar1_axi_crossbar_0_0/sim/AXIcrossbar1_axi_crossbar_0_0.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ip/AXIcrossbar1_axi_crossbar_1_0/sim/AXIcrossbar1_axi_crossbar_1_0.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/2985/simulation/blk_mem_gen_v8_4.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ip/AXIcrossbar1_axi_dwidth_converter_0_0/sim/AXIcrossbar1_axi_dwidth_converter_0_0.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ip/AXIcrossbar1_axi_dwidth_converter_1_0/sim/AXIcrossbar1_axi_dwidth_converter_1_0.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ip/AXIcrossbar1_axi_protocol_convert_0_0/sim/AXIcrossbar1_axi_protocol_convert_0_0.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/sim/AXIcrossbar1.v
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.srcs/sources_1/imports/new/test.sv
/home/$USER/stableEnv/cl_test_ss/cl_test_ss.gen/sources_1/bd/AXIcrossbar1/hdl/AXIcrossbar1_wrapper.v
/home/$USER/stableEnv/CL/design/nova_subsystem.sv
/home/$USER/stableEnv/CL/design/cl_test.v
/home/$USER/stableEnv/CL/design/cl_nova.v

${CL_ROOT}/design/cl_dram_dma_defines.vh
${HDK_SHELL_DESIGN_DIR}/ip/axi_clock_converter_0/sim/axi_clock_converter_0.v
${HDK_SHELL_DESIGN_DIR}/ip/dest_register_slice/sim/dest_register_slice.v
${HDK_SHELL_DESIGN_DIR}/ip/src_register_slice/sim/src_register_slice.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice/sim/axi_register_slice.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice_light/sim/axi_register_slice_light.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_xbar_0/sim/cl_axi_interconnect_xbar_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_s00_regslice_0/sim/cl_axi_interconnect_s00_regslice_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_s01_regslice_0/sim/cl_axi_interconnect_s01_regslice_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_m00_regslice_0/sim/cl_axi_interconnect_m00_regslice_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_m01_regslice_0/sim/cl_axi_interconnect_m01_regslice_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_m02_regslice_0/sim/cl_axi_interconnect_m02_regslice_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/ip/cl_axi_interconnect_m03_regslice_0/sim/cl_axi_interconnect_m03_regslice_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_axi_interconnect/sim/cl_axi_interconnect.v
${HDK_SHELL_DESIGN_DIR}/ip/dest_register_slice/hdl/axi_register_slice_v2_1_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_clock_converter_0/hdl/axi_clock_converter_v2_1_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_clock_converter_0/hdl/fifo_generator_v13_2_rfs.v


${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_bi_delay.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_db_delay_model.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_db_dly_dir.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_dir_detect.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_rcd_model.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_rank.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_dimm.sv
${HDK_COMMON_DIR}/verif/models/ddr4_rdimm_wrapper/ddr4_rdimm_wrapper.sv 
${SH_LIB_DIR}/bram_2rw.sv
${SH_LIB_DIR}/flop_fifo.sv
${SH_LIB_DIR}/lib_pipe.sv
${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim/mgt_gen_axl.sv
${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim/ccf_ctl.v
${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim/mgt_acc_axl.sv
${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim/sync.v
${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim/flop_ccf.sv
${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim/sh_ddr.sv


--define DISABLE_VJTAG_DEBUG
${CL_ROOT}/design/cl_dram_dma_pkg.sv
${CL_ROOT}/design/cl_dma_pcis_slv.sv
${CL_ROOT}/design/cl_dram_dma_axi_mstr.sv
${CL_ROOT}/design/cl_top.sv
