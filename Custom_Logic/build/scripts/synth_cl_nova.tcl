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

#Param needed to avoid clock name collisions
set_param sta.enableAutoGenClkNamePersistence 0
set CL_MODULE $CL_MODULE
set VDEFINES $VDEFINES

create_project -in_memory -part [DEVICE_TYPE] -force

########################################
## Generate clocks based on Recipe 
########################################

puts "AWS FPGA: ([clock format [clock seconds] -format %T]) Calling aws_gen_clk_constraints.tcl to generate clock constraints from developer's specified recipe.";

source $HDK_SHELL_DIR/build/scripts/aws_gen_clk_constraints.tcl

#############################
## Read design files
#############################

#Convenience to set the root of the RTL directory
set ENC_SRC_DIR $CL_DIR/build/src_post_encryption

puts "AWS FPGA: ([clock format [clock seconds] -format %T]) Reading developer's Custom Logic files post encryption.";

#---- User would replace this section -----

# Reading the .sv and .v files, as proper designs would not require
# reading .v, .vh, nor .inc files

read_verilog -sv [glob $ENC_SRC_DIR/*.?v]

read_verilog -sv [ list \
  $CL_DIR/design/nova_subsystem.v 
]

read_verilog -sv [list \
  $SU_ROOT/sub/riscv_core/src/include/riscv_pkg.sv \
  $SU_ROOT/sub/riscv_core/src/include/std_cache_pkg.sv \
  $SU_ROOT/sub/riscv_core/src/include/ariane_pkg.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi/src/axi_pkg.sv \
  $SU_ROOT/sub/riscv_core/src/include/ariane_axi_pkg.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dm_pkg.sv \
  $SU_ROOT/sub/riscv_core/src/include/cv64a6_imacfd_sv39_config_pkg.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/register_interface/src/reg_intf_pkg.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/tb/ariane_soc_pkg.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/tb/ariane_axi_soc_pkg.sv \
  $SU_ROOT/sub/riscv_core/src/include/ariane_rvfi_pkg.sv \
  $SU_ROOT/sub/riscv_core/src/include/wt_cache_pkg.sv \
  $SU_ROOT/src/hydra_su.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/register_interface/src/apb_to_reg.sv \
  $SU_ROOT/sub/riscv_core/src/ariane.sv \
  $SU_ROOT/sub/riscv_core/src/commit_stage.sv \
  $SU_ROOT/sub/riscv_core/src/controller.sv \
  $SU_ROOT/sub/riscv_core/src/csr_regfile.sv \
  $SU_ROOT/sub/riscv_core/src/ex_stage.sv \
  $SU_ROOT/sub/riscv_core/src/alu.sv \
  $SU_ROOT/sub/riscv_core/src/branch_unit.sv \
  $SU_ROOT/sub/riscv_core/src/csr_buffer.sv \
  $SU_ROOT/sub/riscv_core/src/mult.sv \
  $SU_ROOT/sub/riscv_core/src/serdiv.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/lzc.sv \
  $SU_ROOT/sub/riscv_core/src/multiplier.sv \
  $SU_ROOT/sub/riscv_core/src/load_store_unit.sv \
  $SU_ROOT/sub/riscv_core/src/mmu_sv39/mmu.sv \
  $SU_ROOT/sub/riscv_core/src/mmu_sv39/tlb.sv \
  $SU_ROOT/sub/riscv_core/src/pmp/src/pmp.sv \
  $SU_ROOT/sub/riscv_core/src/pmp/src/pmp_entry.sv \
  $SU_ROOT/sub/riscv_core/src/mmu_sv39/ptw.sv \
  $SU_ROOT/sub/riscv_core/src/load_unit.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/shift_reg.sv \
  $SU_ROOT/sub/riscv_core/src/store_unit.sv \
  $SU_ROOT/sub/riscv_core/src/amo_buffer.sv \
  $SU_ROOT/sub/riscv_core/src/store_buffer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/ariane_peripherals_xilinx.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_node_wrap_with_slices.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi/src/axi_multicut.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi/src/axi_intf.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi/test/synth_bench.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/openpiton/riscv_peripherals.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/tb/ariane_testharness.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/rr_arb_tree.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_node_intf_wrap.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_node.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_request_block.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_response_block.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_AR_allocator.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_AW_allocator.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_address_decoder_BR.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_address_decoder_BW.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_BR_allocator.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_BW_allocator.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_address_decoder_DW.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_DW_allocator.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/clint/clint.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/clint/axi_lite_interface.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_multiplexer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_address_decoder_AR.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_address_decoder_AW.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_node/src/axi_node_arbiter.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/stream_arbiter.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/stream_arbiter_flushable.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/deprecated/fifo_v1.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/deprecated/fifo_v2.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_cache_subsystem.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_axi_adapter.sv \
  $SU_ROOT/sub/riscv_core/src/axi_shim.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_slice.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_slice_wrap.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/fifo_v3.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/register_interface/src/reg_intf.sv \
  $SU_ROOT/sub/riscv_core/src/instr_realign.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi2apb/src/axi2apb.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi2apb/src/axi2apb_wrap.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_aw_buffer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv \
  $SU_ROOT/sub/riscv_core/src/axi_adapter.sv \
  $SU_ROOT/sub/riscv_core/common/local/util/axi_master_connect.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/axi_mem_if/src/axi2mem.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/sva/dm_sba_sva.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/debug_rom/debug_rom.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dm_sba.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dm_mem.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dmi_jtag.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dmi_jtag_tap.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/src/tech_cells_generic/src/cluster_clock_inverter.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/src/tech_cells_generic/src/pulp_clock_mux2.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dmi_cdc.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/cdc_2phase.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dm_top.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/riscv-dbg/src/dm_csrs.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/rv_plic/rtl/plic_top.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/rv_plic/rtl/rv_plic_target.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/rv_plic/rtl/rv_plic_gateway.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/rv_plic/rtl/plic_regmap.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/apb_timer/apb_timer.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga/src/apb_timer/timer.sv \
  $SU_ROOT/sub/riscv_core/common/local/util/axi_slave_connect_rev.sv \
  $SU_ROOT/sub/riscv_core/common/local/util/axi_slave_connect.sv \
  $SU_ROOT/sub/riscv_core/src/frontend/frontend.sv \
  $SU_ROOT/sub/riscv_core/src/frontend/bht.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/unread.sv \
  $SU_ROOT/sub/riscv_core/src/frontend/btb.sv \
  $SU_ROOT/sub/riscv_core/src/frontend/ras.sv \
  $SU_ROOT/sub/riscv_core/src/perf_counters.sv \
  $SU_ROOT/sub/riscv_core/src/id_stage.sv \
  $SU_ROOT/sub/riscv_core/src/compressed_decoder.sv \
  $SU_ROOT/sub/riscv_core/src/decoder.sv \
  $SU_ROOT/sub/riscv_core/src/issue_stage.sv \
  $SU_ROOT/sub/riscv_core/src/issue_read_operands.sv \
  $SU_ROOT/sub/riscv_core/src/ariane_regfile.sv \
  $SU_ROOT/sub/riscv_core/src/ariane_regfile_ff.sv \
  $SU_ROOT/sub/riscv_core/src/re_name.sv \
  $SU_ROOT/sub/riscv_core/src/scoreboard.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/popcount.sv \
  $SU_ROOT/sub/riscv_core/src/frontend/instr_scan.sv \
  $SU_ROOT/sub/riscv_core/src/frontend/instr_queue.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/cva6_icache.sv \
  $SU_ROOT/sub/riscv_core/common/local/util/sram.sv \
  $SU_ROOT/sub/riscv_core/corev_apu/fpga-support/rtl/SyncSpRamBeNx64.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/lfsr.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_dcache.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_dcache_ctrl.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_dcache_mem.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_dcache_missunit.sv \
  $SU_ROOT/sub/riscv_core/src/fpu/src/common_cells/src/exp_backoff.sv \
  $SU_ROOT/sub/riscv_core/src/cache_subsystem/wt_dcache_wbuffer.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/lfsr_8bit.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/stream_mux.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/stream_demux.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/rstgen.sv \
  $SU_ROOT/sub/riscv_core/common/submodules/common_cells/src/rstgen_bypass.sv
]

read_bd [ list \
  $VIVADO_NOVA/nova_project.srcs/sources_1/bd/nova_project/nova_project.bd 
]
read_bd [ list \
  $VIVADO_TEST/test_subsystem.srcs/sources_1/bd/test_subsystem/test_subsystem.bd
]

#---- End of section replaced by User ----

puts "AWS FPGA: Reading AWS Shell design";

#Read AWS Design files
read_verilog -sv [ list \
  $HDK_SHELL_DESIGN_DIR/lib/lib_pipe.sv \
  $HDK_SHELL_DESIGN_DIR/lib/bram_2rw.sv \
  $HDK_SHELL_DESIGN_DIR/lib/flop_fifo.sv \
  $HDK_SHELL_DESIGN_DIR/sh_ddr/synth/sync.v \
  $HDK_SHELL_DESIGN_DIR/sh_ddr/synth/flop_ccf.sv \
  $HDK_SHELL_DESIGN_DIR/sh_ddr/synth/ccf_ctl.v \
  $HDK_SHELL_DESIGN_DIR/sh_ddr/synth/mgt_acc_axl.sv  \
  $HDK_SHELL_DESIGN_DIR/sh_ddr/synth/mgt_gen_axl.sv  \
  $HDK_SHELL_DESIGN_DIR/sh_ddr/synth/sh_ddr.sv \
  $HDK_SHELL_DESIGN_DIR/interfaces/cl_ports.vh 
]

puts "AWS FPGA: Reading IP blocks";

#Read DDR IP
read_ip [ list \
  $HDK_SHELL_DESIGN_DIR/ip/ddr4_core/ddr4_core.xci 
]

#Read IP for axi register slices
read_ip [ list \
  $HDK_SHELL_DESIGN_DIR/ip/src_register_slice/src_register_slice.xci \
  $HDK_SHELL_DESIGN_DIR/ip/dest_register_slice/dest_register_slice.xci \
  $HDK_SHELL_DESIGN_DIR/ip/axi_clock_converter_0/axi_clock_converter_0.xci \
  $HDK_SHELL_DESIGN_DIR/ip/axi_register_slice/axi_register_slice.xci \
  $HDK_SHELL_DESIGN_DIR/ip/axi_register_slice_light/axi_register_slice_light.xci
]

#Read IP for virtual jtag / ILA/VIO
#read_ip [ list \
#  $HDK_SHELL_DESIGN_DIR/ip/cl_debug_bridge/cl_debug_bridge.xci \
#  $HDK_SHELL_DESIGN_DIR/ip/ila_1/ila_1.xci \
#  $HDK_SHELL_DESIGN_DIR/ip/ila_vio_counter/ila_vio_counter.xci \
#  $HDK_SHELL_DESIGN_DIR/ip/vio_0/vio_0.xci
#]

# Additional IP's that might be needed if using the DDR
read_bd [ list \
  $HDK_SHELL_DESIGN_DIR/ip/cl_axi_interconnect/cl_axi_interconnect.bd
]

puts "AWS FPGA: Reading AWS constraints";

#Read all the constraints
#
#  cl_clocks_aws.xdc  - AWS auto-generated clock constraint.   ***DO NOT MODIFY***
#  cl_ddr.xdc         - AWS provided DDR pin constraints.      ***DO NOT MODIFY***
#  cl_synth_user.xdc  - Developer synthesis constraints.
read_xdc [ list \
   $CL_DIR/build/constraints/cl_clocks_aws.xdc \
   $HDK_SHELL_DIR/build/constraints/cl_ddr.xdc \
   $HDK_SHELL_DIR/build/constraints/cl_synth_aws.xdc \
   $CL_DIR/build/constraints/cl_synth_user.xdc
]

#Do not propagate local clock constraints for clocks generated in the SH
set_property USED_IN {synthesis implementation OUT_OF_CONTEXT} [get_files cl_clocks_aws.xdc]
set_property PROCESSING_ORDER EARLY  [get_files cl_clocks_aws.xdc]

########################
# CL Synthesis
########################
puts "AWS FPGA: ([clock format [clock seconds] -format %T]) Start design synthesis.";

update_compile_order -fileset sources_1
puts "\nRunning synth_design for $CL_MODULE $CL_DIR/build/scripts \[[clock format [clock seconds] -format {%a %b %d %H:%M:%S %Y}]\]"
eval [concat synth_design -top $CL_MODULE -verilog_define XSDB_SLV_DIS $VDEFINES -part [DEVICE_TYPE] -mode out_of_context $synth_options -directive $synth_directive]

set failval [catch {exec grep "FAIL" failfast.csv}]
if { $failval==0 } {
	puts "AWS FPGA: FATAL ERROR--Resource utilization error; check failfast.csv for details"
	exit 1
}

puts "AWS FPGA: ([clock format [clock seconds] -format %T]) writing post synth checkpoint.";
write_checkpoint -force $CL_DIR/build/checkpoints/${timestamp}.CL.post_synth.dcp

close_project
#Set param back to default value
set_param sta.enableAutoGenClkNamePersistence 1
