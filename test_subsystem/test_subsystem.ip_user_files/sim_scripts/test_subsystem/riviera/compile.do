vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_23
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_24
vlib riviera/axi_protocol_converter_v2_1_24
vlib riviera/axi_clock_converter_v2_1_23
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_dwidth_converter_v2_1_24
vlib riviera/xil_defaultlib
vlib riviera/axi_crossbar_v2_1_25
vlib riviera/axi_jtag_v1_0_0
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_uartlite_v2_0_28

vmap xpm riviera/xpm
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 riviera/axi_data_fifo_v2_1_23
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_24 riviera/axi_register_slice_v2_1_24
vmap axi_protocol_converter_v2_1_24 riviera/axi_protocol_converter_v2_1_24
vmap axi_clock_converter_v2_1_23 riviera/axi_clock_converter_v2_1_23
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_24 riviera/axi_dwidth_converter_v2_1_24
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_crossbar_v2_1_25 riviera/axi_crossbar_v2_1_25
vmap axi_jtag_v1_0_0 riviera/axi_jtag_v1_0_0
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_28 riviera/axi_uartlite_v2_0_28

vlog -work xpm  -sv2k12 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"/opt/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_24  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_23  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_24  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_axi_dwidth_converter_0_0/sim/test_subsystem_axi_dwidth_converter_0_0.v" \

vlog -work axi_crossbar_v2_1_25  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_axi_crossbar_0_0/sim/test_subsystem_axi_crossbar_0_0.v" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_axi_crossbar_1_0/sim/test_subsystem_axi_crossbar_1_0.v" \

vlog -work axi_jtag_v1_0_0  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/421b/hdl/axi_jtag_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_debug_bridge_0_1/bd_0/ip/ip_0/sim/bd_b364_axi_jtag_0.v" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_debug_bridge_0_1/bd_0/sim/bd_b364.v" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_debug_bridge_0_1/sim/test_subsystem_debug_bridge_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_28 -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/8c9b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ip/test_subsystem_axi_uartlite_0_0/sim/test_subsystem_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_subsystem.gen/sources_1/bd/test_subsystem/ipshared/ec67/hdl" \
"../../../../test_subsystem.gen/sources_1/bd/test_subsystem/sim/test_subsystem.v" \

vlog -work xil_defaultlib \
"glbl.v"

