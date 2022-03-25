vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_24
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_23
vlib modelsim_lib/msim/axi_crossbar_v2_1_25
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_28
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_24
vlib modelsim_lib/msim/axi_clock_converter_v2_1_23
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_24

vmap xpm modelsim_lib/msim/xpm
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_24 modelsim_lib/msim/axi_register_slice_v2_1_24
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 modelsim_lib/msim/axi_data_fifo_v2_1_23
vmap axi_crossbar_v2_1_25 modelsim_lib/msim/axi_crossbar_v2_1_25
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_28 modelsim_lib/msim/axi_uartlite_v2_0_28
vmap axi_protocol_converter_v2_1_24 modelsim_lib/msim/axi_protocol_converter_v2_1_24
vmap axi_clock_converter_v2_1_23 modelsim_lib/msim/axi_clock_converter_v2_1_23
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_24 modelsim_lib/msim/axi_dwidth_converter_v2_1_24

vlog -work xpm -64 -incr -mfcu -sv "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"/opt/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_25 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../bd/AXIcrossbar1/ip/AXIcrossbar1_axi_crossbar_0_0/sim/AXIcrossbar1_axi_crossbar_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_28 -64 -93 \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/8c9b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXIcrossbar1/ip/AXIcrossbar1_axi_uartlite_0_0/sim/AXIcrossbar1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../bd/AXIcrossbar1/ip/AXIcrossbar1_axi_crossbar_1_0/sim/AXIcrossbar1_axi_crossbar_1_0.v" \

vlog -work axi_protocol_converter_v2_1_24 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_23 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_24 -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../cl_test_ss.gen/sources_1/bd/AXIcrossbar1/ipshared/ec67/hdl" \
"../../../bd/AXIcrossbar1/ip/AXIcrossbar1_axi_dwidth_converter_1_0/sim/AXIcrossbar1_axi_dwidth_converter_1_0.v" \
"../../../bd/AXIcrossbar1/ip/AXIcrossbar1_axi_protocol_convert_0_0/sim/AXIcrossbar1_axi_protocol_convert_0_0.v" \
"../../../bd/AXIcrossbar1/sim/AXIcrossbar1.v" \

vlog -work xil_defaultlib \
"glbl.v"

