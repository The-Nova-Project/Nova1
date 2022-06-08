
################################################################
# This is a generated script based on design: xlx_design_subsystem
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source xlx_design_subsystem_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flga2104-1-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name xlx_design_subsystem

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set BAR1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BAR1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {5} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BAR1

  set DDR_m [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 DDR_m ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.HAS_REGION {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $DDR_m

  set MTML_m [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 MTML_m ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $MTML_m

  set MTML_s [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MTML_s ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $MTML_s

  set SMU_m [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name SMU_m_araddr direction O left 191 right 128 } \
   ARBURST { physical_name SMU_m_arburst direction O left 5 right 4 } \
   ARCACHE { physical_name SMU_m_arcache direction O left 11 right 8 } \
   ARID { physical_name SMU_m_arid direction O left 14 right 10 } \
   ARLEN { physical_name SMU_m_arlen direction O left 23 right 16 } \
   ARLOCK { physical_name SMU_m_arlock direction O left 2 right 2 } \
   ARPROT { physical_name SMU_m_arprot direction O left 8 right 6 } \
   ARQOS { physical_name SMU_m_arqos direction O left 11 right 8 } \
   ARREADY { physical_name SMU_m_arready direction I left 2 right 2 } \
   ARREGION { physical_name SMU_m_arregion direction O left 11 right 8 } \
   ARSIZE { physical_name SMU_m_arsize direction O left 8 right 6 } \
   ARVALID { physical_name SMU_m_arvalid direction O left 2 right 2 } \
   AWADDR { physical_name SMU_m_awaddr direction O left 191 right 128 } \
   AWBURST { physical_name SMU_m_awburst direction O left 5 right 4 } \
   AWCACHE { physical_name SMU_m_awcache direction O left 11 right 8 } \
   AWID { physical_name SMU_m_awid direction O left 14 right 10 } \
   AWLEN { physical_name SMU_m_awlen direction O left 23 right 16 } \
   AWLOCK { physical_name SMU_m_awlock direction O left 2 right 2 } \
   AWPROT { physical_name SMU_m_awprot direction O left 8 right 6 } \
   AWQOS { physical_name SMU_m_awqos direction O left 11 right 8 } \
   AWREADY { physical_name SMU_m_awready direction I left 2 right 2 } \
   AWREGION { physical_name SMU_m_awregion direction O left 11 right 8 } \
   AWSIZE { physical_name SMU_m_awsize direction O left 8 right 6 } \
   AWVALID { physical_name SMU_m_awvalid direction O left 2 right 2 } \
   BID { physical_name SMU_m_bid direction I left 14 right 10 } \
   BREADY { physical_name SMU_m_bready direction O left 2 right 2 } \
   BRESP { physical_name SMU_m_bresp direction I left 5 right 4 } \
   BVALID { physical_name SMU_m_bvalid direction I left 2 right 2 } \
   RDATA { physical_name SMU_m_rdata direction I left 191 right 128 } \
   RID { physical_name SMU_m_rid direction I left 14 right 10 } \
   RLAST { physical_name SMU_m_rlast direction I left 2 right 2 } \
   RREADY { physical_name SMU_m_rready direction O left 2 right 2 } \
   RRESP { physical_name SMU_m_rresp direction I left 5 right 4 } \
   RVALID { physical_name SMU_m_rvalid direction I left 2 right 2 } \
   WDATA { physical_name SMU_m_wdata direction O left 191 right 128 } \
   WLAST { physical_name SMU_m_wlast direction O left 2 right 2 } \
   WREADY { physical_name SMU_m_wready direction I left 2 right 2 } \
   WSTRB { physical_name SMU_m_wstrb direction O left 23 right 16 } \
   WVALID { physical_name SMU_m_wvalid direction O left 2 right 2 } \
   } \
  SMU_m ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $SMU_m
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports SMU_m]

  set UART_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART_0 ]

  set ethernet_m [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name ethernet_m_araddr direction O left 255 right 192 } \
   ARBURST { physical_name ethernet_m_arburst direction O left 7 right 6 } \
   ARCACHE { physical_name ethernet_m_arcache direction O left 15 right 12 } \
   ARID { physical_name ethernet_m_arid direction O left 19 right 15 } \
   ARLEN { physical_name ethernet_m_arlen direction O left 31 right 24 } \
   ARLOCK { physical_name ethernet_m_arlock direction O left 3 right 3 } \
   ARPROT { physical_name ethernet_m_arprot direction O left 11 right 9 } \
   ARQOS { physical_name ethernet_m_arqos direction O left 15 right 12 } \
   ARREADY { physical_name ethernet_m_arready direction I left 3 right 3 } \
   ARREGION { physical_name ethernet_m_arregion direction O left 15 right 12 } \
   ARSIZE { physical_name ethernet_m_arsize direction O left 11 right 9 } \
   ARVALID { physical_name ethernet_m_arvalid direction O left 3 right 3 } \
   AWADDR { physical_name ethernet_m_awaddr direction O left 255 right 192 } \
   AWBURST { physical_name ethernet_m_awburst direction O left 7 right 6 } \
   AWCACHE { physical_name ethernet_m_awcache direction O left 15 right 12 } \
   AWID { physical_name ethernet_m_awid direction O left 19 right 15 } \
   AWLEN { physical_name ethernet_m_awlen direction O left 31 right 24 } \
   AWLOCK { physical_name ethernet_m_awlock direction O left 3 right 3 } \
   AWPROT { physical_name ethernet_m_awprot direction O left 11 right 9 } \
   AWQOS { physical_name ethernet_m_awqos direction O left 15 right 12 } \
   AWREADY { physical_name ethernet_m_awready direction I left 3 right 3 } \
   AWREGION { physical_name ethernet_m_awregion direction O left 15 right 12 } \
   AWSIZE { physical_name ethernet_m_awsize direction O left 11 right 9 } \
   AWVALID { physical_name ethernet_m_awvalid direction O left 3 right 3 } \
   BID { physical_name ethernet_m_bid direction I left 19 right 15 } \
   BREADY { physical_name ethernet_m_bready direction O left 3 right 3 } \
   BRESP { physical_name ethernet_m_bresp direction I left 7 right 6 } \
   BVALID { physical_name ethernet_m_bvalid direction I left 3 right 3 } \
   RDATA { physical_name ethernet_m_rdata direction I left 255 right 192 } \
   RID { physical_name ethernet_m_rid direction I left 19 right 15 } \
   RLAST { physical_name ethernet_m_rlast direction I left 3 right 3 } \
   RREADY { physical_name ethernet_m_rready direction O left 3 right 3 } \
   RRESP { physical_name ethernet_m_rresp direction I left 7 right 6 } \
   RVALID { physical_name ethernet_m_rvalid direction I left 3 right 3 } \
   WDATA { physical_name ethernet_m_wdata direction O left 255 right 192 } \
   WLAST { physical_name ethernet_m_wlast direction O left 3 right 3 } \
   WREADY { physical_name ethernet_m_wready direction I left 3 right 3 } \
   WSTRB { physical_name ethernet_m_wstrb direction O left 31 right 24 } \
   WVALID { physical_name ethernet_m_wvalid direction O left 3 right 3 } \
   } \
  ethernet_m ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $ethernet_m
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports ethernet_m]

  set hydra_s [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 hydra_s ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {5} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $hydra_s


  # Create ports
  set interrupt_0 [ create_bd_port -dir O -type intr interrupt_0 ]
  set s_axi_aclk_0 [ create_bd_port -dir I -type clk -freq_hz 10000000 s_axi_aclk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {SMU_m:ethernet_m:BAR1:hydra_s:MTML_s:DDR_m:MTML_m} \
 ] $s_axi_aclk_0
  set s_axi_aresetn_0 [ create_bd_port -dir I -type rst s_axi_aresetn_0 ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.ID_WIDTH {5} \
   CONFIG.M00_A00_ADDR_WIDTH {24} \
   CONFIG.M00_A00_BASE_ADDR {0x0000000084000000} \
   CONFIG.M01_A00_ADDR_WIDTH {24} \
   CONFIG.M01_A00_BASE_ADDR {0x0000000081000000} \
   CONFIG.M02_A00_ADDR_WIDTH {24} \
   CONFIG.M02_A00_BASE_ADDR {0x0000000082000000} \
   CONFIG.M03_A00_ADDR_WIDTH {24} \
   CONFIG.M03_A00_BASE_ADDR {0x0000000083000000} \
   CONFIG.M04_A00_ADDR_WIDTH {24} \
   CONFIG.M04_A00_BASE_ADDR {0x0000000080000000} \
   CONFIG.M04_S01_READ_CONNECTIVITY {1} \
   CONFIG.M04_S01_WRITE_CONNECTIVITY {1} \
   CONFIG.M04_S02_READ_CONNECTIVITY {1} \
   CONFIG.M04_S02_WRITE_CONNECTIVITY {1} \
   CONFIG.M05_A00_ADDR_WIDTH {24} \
   CONFIG.M05_A00_BASE_ADDR {0x0000000085000000} \
   CONFIG.M05_S02_READ_CONNECTIVITY {0} \
   CONFIG.M05_S02_WRITE_CONNECTIVITY {0} \
   CONFIG.NUM_MI {6} \
   CONFIG.NUM_SI {3} \
   CONFIG.S01_BASE_ID {0x00000008} \
   CONFIG.S02_BASE_ID {0x00000010} \
   CONFIG.S03_BASE_ID {0x00000018} \
   CONFIG.S04_BASE_ID {0x00000020} \
   CONFIG.S05_BASE_ID {0x00000028} \
   CONFIG.S06_BASE_ID {0x00000030} \
   CONFIG.S07_BASE_ID {0x00000038} \
   CONFIG.S08_BASE_ID {0x00000040} \
   CONFIG.S09_BASE_ID {0x00000048} \
   CONFIG.S10_BASE_ID {0x00000050} \
   CONFIG.S11_BASE_ID {0x00000058} \
   CONFIG.S12_BASE_ID {0x00000060} \
   CONFIG.S13_BASE_ID {0x00000068} \
   CONFIG.S14_BASE_ID {0x00000070} \
   CONFIG.S15_BASE_ID {0x00000078} \
 ] $axi_crossbar_0

  # Create instance: axi_dwidth_converter_0, and set properties
  set axi_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dwidth_converter:2.1 axi_dwidth_converter_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.MI_DATA_WIDTH {32} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.SI_DATA_WIDTH {64} \
   CONFIG.SI_ID_WIDTH {5} \
 ] $axi_dwidth_converter_0

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.MI_PROTOCOL {AXI4LITE} \
   CONFIG.SI_PROTOCOL {AXI4} \
   CONFIG.TRANSLATION_MODE {2} \
 ] $axi_protocol_convert_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Read_Width_A {64} \
   CONFIG.Read_Width_B {64} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Write_Width_A {64} \
   CONFIG.Write_Width_B {64} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_0_2 [get_bd_intf_ports BAR1] [get_bd_intf_pins axi_crossbar_0/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_0_2 [get_bd_intf_ports hydra_s] [get_bd_intf_pins axi_crossbar_0/S01_AXI]
  connect_bd_intf_net -intf_net S02_AXI_0_1 [get_bd_intf_ports MTML_s] [get_bd_intf_pins axi_crossbar_0/S02_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_crossbar_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M01_AXI [get_bd_intf_pins axi_crossbar_0/M01_AXI] [get_bd_intf_pins axi_dwidth_converter_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M02_AXI [get_bd_intf_ports SMU_m] [get_bd_intf_pins axi_crossbar_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M03_AXI [get_bd_intf_ports ethernet_m] [get_bd_intf_pins axi_crossbar_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M04_AXI [get_bd_intf_ports DDR_m] [get_bd_intf_pins axi_crossbar_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M05_AXI [get_bd_intf_ports MTML_m] [get_bd_intf_pins axi_crossbar_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_dwidth_converter_0_M_AXI [get_bd_intf_pins axi_dwidth_converter_0/M_AXI] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_protocol_convert_0/M_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports UART_0] [get_bd_intf_pins axi_uartlite_0/UART]

  # Create port connections
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_ports interrupt_0] [get_bd_pins axi_uartlite_0/interrupt]
  connect_bd_net -net s_axi_aclk_0_1 [get_bd_ports s_axi_aclk_0] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_dwidth_converter_0/s_axi_aclk] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_0_1 [get_bd_ports s_axi_aresetn_0] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_dwidth_converter_0/s_axi_aresetn] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn]

  # Create address segments
  assign_bd_address -offset 0x80000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MTML_s] [get_bd_addr_segs DDR_m/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BAR1] [get_bd_addr_segs DDR_m/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces hydra_s] [get_bd_addr_segs DDR_m/Reg] -force
  assign_bd_address -offset 0x85000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces hydra_s] [get_bd_addr_segs MTML_m/Reg] -force
  assign_bd_address -offset 0x85000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BAR1] [get_bd_addr_segs MTML_m/Reg] -force
  assign_bd_address -offset 0x82000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MTML_s] [get_bd_addr_segs SMU_m/Reg] -force
  assign_bd_address -offset 0x82000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces hydra_s] [get_bd_addr_segs SMU_m/Reg] -force
  assign_bd_address -offset 0x82000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BAR1] [get_bd_addr_segs SMU_m/Reg] -force
  assign_bd_address -offset 0x84000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces BAR1] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x84000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces hydra_s] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x84000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces MTML_s] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x81000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces hydra_s] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x81000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MTML_s] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x81000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BAR1] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x83000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MTML_s] [get_bd_addr_segs ethernet_m/Reg] -force
  assign_bd_address -offset 0x83000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces hydra_s] [get_bd_addr_segs ethernet_m/Reg] -force
  assign_bd_address -offset 0x83000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BAR1] [get_bd_addr_segs ethernet_m/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


