
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
  set DDR_s [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name DDR_s_araddr direction O left 63 right 0 } \
   ARBURST { physical_name DDR_s_arburst direction O left 1 right 0 } \
   ARCACHE { physical_name DDR_s_arcache direction O left 3 right 0 } \
   ARID { physical_name DDR_s_arid direction O left 4 right 0 } \
   ARLEN { physical_name DDR_s_arlen direction O left 7 right 0 } \
   ARLOCK { physical_name DDR_s_arlock direction O left 0 right 0 } \
   ARPROT { physical_name DDR_s_arprot direction O left 2 right 0 } \
   ARQOS { physical_name DDR_s_arqos direction O left 3 right 0 } \
   ARREADY { physical_name DDR_s_arready direction I left 0 right 0 } \
   ARREGION { physical_name DDR_s_arregion direction O left 3 right 0 } \
   ARSIZE { physical_name DDR_s_arsize direction O left 2 right 0 } \
   ARVALID { physical_name DDR_s_arvalid direction O left 0 right 0 } \
   AWADDR { physical_name DDR_s_awaddr direction O left 63 right 0 } \
   AWBURST { physical_name DDR_s_awburst direction O left 1 right 0 } \
   AWCACHE { physical_name DDR_s_awcache direction O left 3 right 0 } \
   AWID { physical_name DDR_s_awid direction O left 4 right 0 } \
   AWLEN { physical_name DDR_s_awlen direction O left 7 right 0 } \
   AWLOCK { physical_name DDR_s_awlock direction O left 0 right 0 } \
   AWPROT { physical_name DDR_s_awprot direction O left 2 right 0 } \
   AWQOS { physical_name DDR_s_awqos direction O left 3 right 0 } \
   AWREADY { physical_name DDR_s_awready direction I left 0 right 0 } \
   AWREGION { physical_name DDR_s_awregion direction O left 3 right 0 } \
   AWSIZE { physical_name DDR_s_awsize direction O left 2 right 0 } \
   AWVALID { physical_name DDR_s_awvalid direction O left 0 right 0 } \
   BID { physical_name DDR_s_bid direction I left 4 right 0 } \
   BREADY { physical_name DDR_s_bready direction O left 0 right 0 } \
   BRESP { physical_name DDR_s_bresp direction I left 1 right 0 } \
   BVALID { physical_name DDR_s_bvalid direction I left 0 right 0 } \
   RDATA { physical_name DDR_s_rdata direction I left 63 right 0 } \
   RID { physical_name DDR_s_rid direction I left 4 right 0 } \
   RLAST { physical_name DDR_s_rlast direction I left 0 right 0 } \
   RREADY { physical_name DDR_s_rready direction O left 0 right 0 } \
   RRESP { physical_name DDR_s_rresp direction I left 1 right 0 } \
   RVALID { physical_name DDR_s_rvalid direction I left 0 right 0 } \
   WDATA { physical_name DDR_s_wdata direction O left 63 right 0 } \
   WLAST { physical_name DDR_s_wlast direction O left 0 right 0 } \
   WREADY { physical_name DDR_s_wready direction I left 0 right 0 } \
   WSTRB { physical_name DDR_s_wstrb direction O left 7 right 0 } \
   WVALID { physical_name DDR_s_wvalid direction O left 0 right 0 } \
   } \
  DDR_s ]
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
   ] $DDR_s
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports DDR_s]

  set MTMLAddr_m [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name MTMLAddr_m_araddr direction I left 63 right 0 } \
   ARBURST { physical_name MTMLAddr_m_arburst direction I left 1 right 0 } \
   ARCACHE { physical_name MTMLAddr_m_arcache direction I left 3 right 0 } \
   ARID { physical_name MTMLAddr_m_arid direction I left 4 right 0 } \
   ARLEN { physical_name MTMLAddr_m_arlen direction I left 7 right 0 } \
   ARLOCK { physical_name MTMLAddr_m_arlock direction I left 0 right 0 } \
   ARPROT { physical_name MTMLAddr_m_arprot direction I left 2 right 0 } \
   ARQOS { physical_name MTMLAddr_m_arqos direction I left 3 right 0 } \
   ARREADY { physical_name MTMLAddr_m_arready direction O left 0 right 0 } \
   ARSIZE { physical_name MTMLAddr_m_arsize direction I left 2 right 0 } \
   ARVALID { physical_name MTMLAddr_m_arvalid direction I left 0 right 0 } \
   AWADDR { physical_name MTMLAddr_m_awaddr direction I left 63 right 0 } \
   AWBURST { physical_name MTMLAddr_m_awburst direction I left 1 right 0 } \
   AWCACHE { physical_name MTMLAddr_m_awcache direction I left 3 right 0 } \
   AWID { physical_name MTMLAddr_m_awid direction I left 4 right 0 } \
   AWLEN { physical_name MTMLAddr_m_awlen direction I left 7 right 0 } \
   AWLOCK { physical_name MTMLAddr_m_awlock direction I left 0 right 0 } \
   AWPROT { physical_name MTMLAddr_m_awprot direction I left 2 right 0 } \
   AWQOS { physical_name MTMLAddr_m_awqos direction I left 3 right 0 } \
   AWREADY { physical_name MTMLAddr_m_awready direction O left 0 right 0 } \
   AWSIZE { physical_name MTMLAddr_m_awsize direction I left 2 right 0 } \
   AWVALID { physical_name MTMLAddr_m_awvalid direction I left 0 right 0 } \
   BID { physical_name MTMLAddr_m_bid direction O left 4 right 0 } \
   BREADY { physical_name MTMLAddr_m_bready direction I left 0 right 0 } \
   BRESP { physical_name MTMLAddr_m_bresp direction O left 1 right 0 } \
   BVALID { physical_name MTMLAddr_m_bvalid direction O left 0 right 0 } \
   RDATA { physical_name MTMLAddr_m_rdata direction O left 63 right 0 } \
   RID { physical_name MTMLAddr_m_rid direction O left 4 right 0 } \
   RLAST { physical_name MTMLAddr_m_rlast direction O left 0 right 0 } \
   RREADY { physical_name MTMLAddr_m_rready direction I left 0 right 0 } \
   RRESP { physical_name MTMLAddr_m_rresp direction O left 1 right 0 } \
   RVALID { physical_name MTMLAddr_m_rvalid direction O left 0 right 0 } \
   WDATA { physical_name MTMLAddr_m_wdata direction I left 63 right 0 } \
   WLAST { physical_name MTMLAddr_m_wlast direction I left 0 right 0 } \
   WREADY { physical_name MTMLAddr_m_wready direction O left 0 right 0 } \
   WSTRB { physical_name MTMLAddr_m_wstrb direction I left 7 right 0 } \
   WVALID { physical_name MTMLAddr_m_wvalid direction I left 0 right 0 } \
   } \
  MTMLAddr_m ]
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
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $MTMLAddr_m
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports MTMLAddr_m]

  set MTMLAddr_s [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name MTMLAddr_s_araddr direction O left 127 right 64 } \
   ARBURST { physical_name MTMLAddr_s_arburst direction O left 3 right 2 } \
   ARCACHE { physical_name MTMLAddr_s_arcache direction O left 7 right 4 } \
   ARID { physical_name MTMLAddr_s_arid direction O left 9 right 5 } \
   ARLEN { physical_name MTMLAddr_s_arlen direction O left 15 right 8 } \
   ARLOCK { physical_name MTMLAddr_s_arlock direction O left 1 right 1 } \
   ARPROT { physical_name MTMLAddr_s_arprot direction O left 5 right 3 } \
   ARQOS { physical_name MTMLAddr_s_arqos direction O left 7 right 4 } \
   ARREADY { physical_name MTMLAddr_s_arready direction I left 1 right 1 } \
   ARREGION { physical_name MTMLAddr_s_arregion direction O left 7 right 4 } \
   ARSIZE { physical_name MTMLAddr_s_arsize direction O left 5 right 3 } \
   ARVALID { physical_name MTMLAddr_s_arvalid direction O left 1 right 1 } \
   AWADDR { physical_name MTMLAddr_s_awaddr direction O left 127 right 64 } \
   AWBURST { physical_name MTMLAddr_s_awburst direction O left 3 right 2 } \
   AWCACHE { physical_name MTMLAddr_s_awcache direction O left 7 right 4 } \
   AWID { physical_name MTMLAddr_s_awid direction O left 9 right 5 } \
   AWLEN { physical_name MTMLAddr_s_awlen direction O left 15 right 8 } \
   AWLOCK { physical_name MTMLAddr_s_awlock direction O left 1 right 1 } \
   AWPROT { physical_name MTMLAddr_s_awprot direction O left 5 right 3 } \
   AWQOS { physical_name MTMLAddr_s_awqos direction O left 7 right 4 } \
   AWREADY { physical_name MTMLAddr_s_awready direction I left 1 right 1 } \
   AWREGION { physical_name MTMLAddr_s_awregion direction O left 7 right 4 } \
   AWSIZE { physical_name MTMLAddr_s_awsize direction O left 5 right 3 } \
   AWVALID { physical_name MTMLAddr_s_awvalid direction O left 1 right 1 } \
   BID { physical_name MTMLAddr_s_bid direction I left 9 right 5 } \
   BREADY { physical_name MTMLAddr_s_bready direction O left 1 right 1 } \
   BRESP { physical_name MTMLAddr_s_bresp direction I left 3 right 2 } \
   BVALID { physical_name MTMLAddr_s_bvalid direction I left 1 right 1 } \
   RDATA { physical_name MTMLAddr_s_rdata direction I left 127 right 64 } \
   RID { physical_name MTMLAddr_s_rid direction I left 9 right 5 } \
   RLAST { physical_name MTMLAddr_s_rlast direction I left 1 right 1 } \
   RREADY { physical_name MTMLAddr_s_rready direction O left 1 right 1 } \
   RRESP { physical_name MTMLAddr_s_rresp direction I left 3 right 2 } \
   RVALID { physical_name MTMLAddr_s_rvalid direction I left 1 right 1 } \
   WDATA { physical_name MTMLAddr_s_wdata direction O left 127 right 64 } \
   WLAST { physical_name MTMLAddr_s_wlast direction O left 1 right 1 } \
   WREADY { physical_name MTMLAddr_s_wready direction I left 1 right 1 } \
   WSTRB { physical_name MTMLAddr_s_wstrb direction O left 15 right 8 } \
   WVALID { physical_name MTMLAddr_s_wvalid direction O left 1 right 1 } \
   } \
  MTMLAddr_s ]
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
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $MTMLAddr_s
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports MTMLAddr_s]

  set S00_AXI_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI_0 ]
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
   ] $S00_AXI_0

  set SMU_s [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name SMU_s_araddr direction O left 191 right 128 } \
   ARBURST { physical_name SMU_s_arburst direction O left 5 right 4 } \
   ARCACHE { physical_name SMU_s_arcache direction O left 11 right 8 } \
   ARID { physical_name SMU_s_arid direction O left 14 right 10 } \
   ARLEN { physical_name SMU_s_arlen direction O left 23 right 16 } \
   ARLOCK { physical_name SMU_s_arlock direction O left 2 right 2 } \
   ARPROT { physical_name SMU_s_arprot direction O left 8 right 6 } \
   ARQOS { physical_name SMU_s_arqos direction O left 11 right 8 } \
   ARREADY { physical_name SMU_s_arready direction I left 2 right 2 } \
   ARREGION { physical_name SMU_s_arregion direction O left 11 right 8 } \
   ARSIZE { physical_name SMU_s_arsize direction O left 8 right 6 } \
   ARVALID { physical_name SMU_s_arvalid direction O left 2 right 2 } \
   AWADDR { physical_name SMU_s_awaddr direction O left 191 right 128 } \
   AWBURST { physical_name SMU_s_awburst direction O left 5 right 4 } \
   AWCACHE { physical_name SMU_s_awcache direction O left 11 right 8 } \
   AWID { physical_name SMU_s_awid direction O left 14 right 10 } \
   AWLEN { physical_name SMU_s_awlen direction O left 23 right 16 } \
   AWLOCK { physical_name SMU_s_awlock direction O left 2 right 2 } \
   AWPROT { physical_name SMU_s_awprot direction O left 8 right 6 } \
   AWQOS { physical_name SMU_s_awqos direction O left 11 right 8 } \
   AWREADY { physical_name SMU_s_awready direction I left 2 right 2 } \
   AWREGION { physical_name SMU_s_awregion direction O left 11 right 8 } \
   AWSIZE { physical_name SMU_s_awsize direction O left 8 right 6 } \
   AWVALID { physical_name SMU_s_awvalid direction O left 2 right 2 } \
   BID { physical_name SMU_s_bid direction I left 14 right 10 } \
   BREADY { physical_name SMU_s_bready direction O left 2 right 2 } \
   BRESP { physical_name SMU_s_bresp direction I left 5 right 4 } \
   BVALID { physical_name SMU_s_bvalid direction I left 2 right 2 } \
   RDATA { physical_name SMU_s_rdata direction I left 191 right 128 } \
   RID { physical_name SMU_s_rid direction I left 14 right 10 } \
   RLAST { physical_name SMU_s_rlast direction I left 2 right 2 } \
   RREADY { physical_name SMU_s_rready direction O left 2 right 2 } \
   RRESP { physical_name SMU_s_rresp direction I left 5 right 4 } \
   RVALID { physical_name SMU_s_rvalid direction I left 2 right 2 } \
   WDATA { physical_name SMU_s_wdata direction O left 191 right 128 } \
   WLAST { physical_name SMU_s_wlast direction O left 2 right 2 } \
   WREADY { physical_name SMU_s_wready direction I left 2 right 2 } \
   WSTRB { physical_name SMU_s_wstrb direction O left 23 right 16 } \
   WVALID { physical_name SMU_s_wvalid direction O left 2 right 2 } \
   } \
  SMU_s ]
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
   ] $SMU_s
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports SMU_s]

  set UART_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART_0 ]

  set XBAR1Addr_m [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name XBAR1Addr_m_araddr direction I left 191 right 128 } \
   ARBURST { physical_name XBAR1Addr_m_arburst direction I left 5 right 4 } \
   ARCACHE { physical_name XBAR1Addr_m_arcache direction I left 11 right 8 } \
   ARID { physical_name XBAR1Addr_m_arid direction I left 14 right 10 } \
   ARLEN { physical_name XBAR1Addr_m_arlen direction I left 23 right 16 } \
   ARLOCK { physical_name XBAR1Addr_m_arlock direction I left 2 right 2 } \
   ARPROT { physical_name XBAR1Addr_m_arprot direction I left 8 right 6 } \
   ARQOS { physical_name XBAR1Addr_m_arqos direction I left 11 right 8 } \
   ARREADY { physical_name XBAR1Addr_m_arready direction O left 2 right 2 } \
   ARSIZE { physical_name XBAR1Addr_m_arsize direction I left 8 right 6 } \
   ARVALID { physical_name XBAR1Addr_m_arvalid direction I left 2 right 2 } \
   AWADDR { physical_name XBAR1Addr_m_awaddr direction I left 191 right 128 } \
   AWBURST { physical_name XBAR1Addr_m_awburst direction I left 5 right 4 } \
   AWCACHE { physical_name XBAR1Addr_m_awcache direction I left 11 right 8 } \
   AWID { physical_name XBAR1Addr_m_awid direction I left 14 right 10 } \
   AWLEN { physical_name XBAR1Addr_m_awlen direction I left 23 right 16 } \
   AWLOCK { physical_name XBAR1Addr_m_awlock direction I left 2 right 2 } \
   AWPROT { physical_name XBAR1Addr_m_awprot direction I left 8 right 6 } \
   AWQOS { physical_name XBAR1Addr_m_awqos direction I left 11 right 8 } \
   AWREADY { physical_name XBAR1Addr_m_awready direction O left 2 right 2 } \
   AWSIZE { physical_name XBAR1Addr_m_awsize direction I left 8 right 6 } \
   AWVALID { physical_name XBAR1Addr_m_awvalid direction I left 2 right 2 } \
   BID { physical_name XBAR1Addr_m_bid direction O left 14 right 10 } \
   BREADY { physical_name XBAR1Addr_m_bready direction I left 2 right 2 } \
   BRESP { physical_name XBAR1Addr_m_bresp direction O left 5 right 4 } \
   BVALID { physical_name XBAR1Addr_m_bvalid direction O left 2 right 2 } \
   RDATA { physical_name XBAR1Addr_m_rdata direction O left 191 right 128 } \
   RID { physical_name XBAR1Addr_m_rid direction O left 14 right 10 } \
   RLAST { physical_name XBAR1Addr_m_rlast direction O left 2 right 2 } \
   RREADY { physical_name XBAR1Addr_m_rready direction I left 2 right 2 } \
   RRESP { physical_name XBAR1Addr_m_rresp direction O left 5 right 4 } \
   RVALID { physical_name XBAR1Addr_m_rvalid direction O left 2 right 2 } \
   WDATA { physical_name XBAR1Addr_m_wdata direction I left 191 right 128 } \
   WLAST { physical_name XBAR1Addr_m_wlast direction I left 2 right 2 } \
   WREADY { physical_name XBAR1Addr_m_wready direction O left 2 right 2 } \
   WSTRB { physical_name XBAR1Addr_m_wstrb direction I left 23 right 16 } \
   WVALID { physical_name XBAR1Addr_m_wvalid direction I left 2 right 2 } \
   } \
  XBAR1Addr_m ]
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
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $XBAR1Addr_m
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports XBAR1Addr_m]

  set XBAR1Addr_s [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name XBAR1Addr_s_araddr direction O left 319 right 256 } \
   ARBURST { physical_name XBAR1Addr_s_arburst direction O left 9 right 8 } \
   ARCACHE { physical_name XBAR1Addr_s_arcache direction O left 19 right 16 } \
   ARID { physical_name XBAR1Addr_s_arid direction O left 24 right 20 } \
   ARLEN { physical_name XBAR1Addr_s_arlen direction O left 39 right 32 } \
   ARLOCK { physical_name XBAR1Addr_s_arlock direction O left 4 right 4 } \
   ARPROT { physical_name XBAR1Addr_s_arprot direction O left 14 right 12 } \
   ARQOS { physical_name XBAR1Addr_s_arqos direction O left 19 right 16 } \
   ARREADY { physical_name XBAR1Addr_s_arready direction I left 4 right 4 } \
   ARREGION { physical_name XBAR1Addr_s_arregion direction O left 19 right 16 } \
   ARSIZE { physical_name XBAR1Addr_s_arsize direction O left 14 right 12 } \
   ARVALID { physical_name XBAR1Addr_s_arvalid direction O left 4 right 4 } \
   AWADDR { physical_name XBAR1Addr_s_awaddr direction O left 319 right 256 } \
   AWBURST { physical_name XBAR1Addr_s_awburst direction O left 9 right 8 } \
   AWCACHE { physical_name XBAR1Addr_s_awcache direction O left 19 right 16 } \
   AWID { physical_name XBAR1Addr_s_awid direction O left 24 right 20 } \
   AWLEN { physical_name XBAR1Addr_s_awlen direction O left 39 right 32 } \
   AWLOCK { physical_name XBAR1Addr_s_awlock direction O left 4 right 4 } \
   AWPROT { physical_name XBAR1Addr_s_awprot direction O left 14 right 12 } \
   AWQOS { physical_name XBAR1Addr_s_awqos direction O left 19 right 16 } \
   AWREADY { physical_name XBAR1Addr_s_awready direction I left 4 right 4 } \
   AWREGION { physical_name XBAR1Addr_s_awregion direction O left 19 right 16 } \
   AWSIZE { physical_name XBAR1Addr_s_awsize direction O left 14 right 12 } \
   AWVALID { physical_name XBAR1Addr_s_awvalid direction O left 4 right 4 } \
   BID { physical_name XBAR1Addr_s_bid direction I left 24 right 20 } \
   BREADY { physical_name XBAR1Addr_s_bready direction O left 4 right 4 } \
   BRESP { physical_name XBAR1Addr_s_bresp direction I left 9 right 8 } \
   BVALID { physical_name XBAR1Addr_s_bvalid direction I left 4 right 4 } \
   RDATA { physical_name XBAR1Addr_s_rdata direction I left 319 right 256 } \
   RID { physical_name XBAR1Addr_s_rid direction I left 24 right 20 } \
   RLAST { physical_name XBAR1Addr_s_rlast direction I left 4 right 4 } \
   RREADY { physical_name XBAR1Addr_s_rready direction O left 4 right 4 } \
   RRESP { physical_name XBAR1Addr_s_rresp direction I left 9 right 8 } \
   RVALID { physical_name XBAR1Addr_s_rvalid direction I left 4 right 4 } \
   WDATA { physical_name XBAR1Addr_s_wdata direction O left 319 right 256 } \
   WLAST { physical_name XBAR1Addr_s_wlast direction O left 4 right 4 } \
   WREADY { physical_name XBAR1Addr_s_wready direction I left 4 right 4 } \
   WSTRB { physical_name XBAR1Addr_s_wstrb direction O left 39 right 32 } \
   WVALID { physical_name XBAR1Addr_s_wvalid direction O left 4 right 4 } \
   } \
  XBAR1Addr_s ]
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
   ] $XBAR1Addr_s
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports XBAR1Addr_s]

  set XBAR2Addr_m [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name XBAR2Addr_m_araddr direction I left 127 right 64 } \
   ARBURST { physical_name XBAR2Addr_m_arburst direction I left 3 right 2 } \
   ARCACHE { physical_name XBAR2Addr_m_arcache direction I left 7 right 4 } \
   ARID { physical_name XBAR2Addr_m_arid direction I left 9 right 5 } \
   ARLEN { physical_name XBAR2Addr_m_arlen direction I left 15 right 8 } \
   ARLOCK { physical_name XBAR2Addr_m_arlock direction I left 1 right 1 } \
   ARPROT { physical_name XBAR2Addr_m_arprot direction I left 5 right 3 } \
   ARQOS { physical_name XBAR2Addr_m_arqos direction I left 7 right 4 } \
   ARREADY { physical_name XBAR2Addr_m_arready direction O left 1 right 1 } \
   ARSIZE { physical_name XBAR2Addr_m_arsize direction I left 5 right 3 } \
   ARVALID { physical_name XBAR2Addr_m_arvalid direction I left 1 right 1 } \
   AWADDR { physical_name XBAR2Addr_m_awaddr direction I left 127 right 64 } \
   AWBURST { physical_name XBAR2Addr_m_awburst direction I left 3 right 2 } \
   AWCACHE { physical_name XBAR2Addr_m_awcache direction I left 7 right 4 } \
   AWID { physical_name XBAR2Addr_m_awid direction I left 9 right 5 } \
   AWLEN { physical_name XBAR2Addr_m_awlen direction I left 15 right 8 } \
   AWLOCK { physical_name XBAR2Addr_m_awlock direction I left 1 right 1 } \
   AWPROT { physical_name XBAR2Addr_m_awprot direction I left 5 right 3 } \
   AWQOS { physical_name XBAR2Addr_m_awqos direction I left 7 right 4 } \
   AWREADY { physical_name XBAR2Addr_m_awready direction O left 1 right 1 } \
   AWSIZE { physical_name XBAR2Addr_m_awsize direction I left 5 right 3 } \
   AWVALID { physical_name XBAR2Addr_m_awvalid direction I left 1 right 1 } \
   BID { physical_name XBAR2Addr_m_bid direction O left 9 right 5 } \
   BREADY { physical_name XBAR2Addr_m_bready direction I left 1 right 1 } \
   BRESP { physical_name XBAR2Addr_m_bresp direction O left 3 right 2 } \
   BVALID { physical_name XBAR2Addr_m_bvalid direction O left 1 right 1 } \
   RDATA { physical_name XBAR2Addr_m_rdata direction O left 127 right 64 } \
   RID { physical_name XBAR2Addr_m_rid direction O left 9 right 5 } \
   RLAST { physical_name XBAR2Addr_m_rlast direction O left 1 right 1 } \
   RREADY { physical_name XBAR2Addr_m_rready direction I left 1 right 1 } \
   RRESP { physical_name XBAR2Addr_m_rresp direction O left 3 right 2 } \
   RVALID { physical_name XBAR2Addr_m_rvalid direction O left 1 right 1 } \
   WDATA { physical_name XBAR2Addr_m_wdata direction I left 127 right 64 } \
   WLAST { physical_name XBAR2Addr_m_wlast direction I left 1 right 1 } \
   WREADY { physical_name XBAR2Addr_m_wready direction O left 1 right 1 } \
   WSTRB { physical_name XBAR2Addr_m_wstrb direction I left 15 right 8 } \
   WVALID { physical_name XBAR2Addr_m_wvalid direction I left 1 right 1 } \
   } \
  XBAR2Addr_m ]
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
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $XBAR2Addr_m
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports XBAR2Addr_m]

  set XBAR2Addr_s [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name XBAR2Addr_s_araddr direction O left 191 right 128 } \
   ARBURST { physical_name XBAR2Addr_s_arburst direction O left 5 right 4 } \
   ARCACHE { physical_name XBAR2Addr_s_arcache direction O left 11 right 8 } \
   ARID { physical_name XBAR2Addr_s_arid direction O left 14 right 10 } \
   ARLEN { physical_name XBAR2Addr_s_arlen direction O left 23 right 16 } \
   ARLOCK { physical_name XBAR2Addr_s_arlock direction O left 2 right 2 } \
   ARPROT { physical_name XBAR2Addr_s_arprot direction O left 8 right 6 } \
   ARQOS { physical_name XBAR2Addr_s_arqos direction O left 11 right 8 } \
   ARREADY { physical_name XBAR2Addr_s_arready direction I left 2 right 2 } \
   ARREGION { physical_name XBAR2Addr_s_arregion direction O left 11 right 8 } \
   ARSIZE { physical_name XBAR2Addr_s_arsize direction O left 8 right 6 } \
   ARVALID { physical_name XBAR2Addr_s_arvalid direction O left 2 right 2 } \
   AWADDR { physical_name XBAR2Addr_s_awaddr direction O left 191 right 128 } \
   AWBURST { physical_name XBAR2Addr_s_awburst direction O left 5 right 4 } \
   AWCACHE { physical_name XBAR2Addr_s_awcache direction O left 11 right 8 } \
   AWID { physical_name XBAR2Addr_s_awid direction O left 14 right 10 } \
   AWLEN { physical_name XBAR2Addr_s_awlen direction O left 23 right 16 } \
   AWLOCK { physical_name XBAR2Addr_s_awlock direction O left 2 right 2 } \
   AWPROT { physical_name XBAR2Addr_s_awprot direction O left 8 right 6 } \
   AWQOS { physical_name XBAR2Addr_s_awqos direction O left 11 right 8 } \
   AWREADY { physical_name XBAR2Addr_s_awready direction I left 2 right 2 } \
   AWREGION { physical_name XBAR2Addr_s_awregion direction O left 11 right 8 } \
   AWSIZE { physical_name XBAR2Addr_s_awsize direction O left 8 right 6 } \
   AWVALID { physical_name XBAR2Addr_s_awvalid direction O left 2 right 2 } \
   BID { physical_name XBAR2Addr_s_bid direction I left 14 right 10 } \
   BREADY { physical_name XBAR2Addr_s_bready direction O left 2 right 2 } \
   BRESP { physical_name XBAR2Addr_s_bresp direction I left 5 right 4 } \
   BVALID { physical_name XBAR2Addr_s_bvalid direction I left 2 right 2 } \
   RDATA { physical_name XBAR2Addr_s_rdata direction I left 191 right 128 } \
   RID { physical_name XBAR2Addr_s_rid direction I left 14 right 10 } \
   RLAST { physical_name XBAR2Addr_s_rlast direction I left 2 right 2 } \
   RREADY { physical_name XBAR2Addr_s_rready direction O left 2 right 2 } \
   RRESP { physical_name XBAR2Addr_s_rresp direction I left 5 right 4 } \
   RVALID { physical_name XBAR2Addr_s_rvalid direction I left 2 right 2 } \
   WDATA { physical_name XBAR2Addr_s_wdata direction O left 191 right 128 } \
   WLAST { physical_name XBAR2Addr_s_wlast direction O left 2 right 2 } \
   WREADY { physical_name XBAR2Addr_s_wready direction I left 2 right 2 } \
   WSTRB { physical_name XBAR2Addr_s_wstrb direction O left 23 right 16 } \
   WVALID { physical_name XBAR2Addr_s_wvalid direction O left 2 right 2 } \
   } \
  XBAR2Addr_s ]
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
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $XBAR2Addr_s
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports XBAR2Addr_s]

  set ethernet_s [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name ethernet_s_araddr direction O left 255 right 192 } \
   ARBURST { physical_name ethernet_s_arburst direction O left 7 right 6 } \
   ARCACHE { physical_name ethernet_s_arcache direction O left 15 right 12 } \
   ARID { physical_name ethernet_s_arid direction O left 19 right 15 } \
   ARLEN { physical_name ethernet_s_arlen direction O left 31 right 24 } \
   ARLOCK { physical_name ethernet_s_arlock direction O left 3 right 3 } \
   ARPROT { physical_name ethernet_s_arprot direction O left 11 right 9 } \
   ARQOS { physical_name ethernet_s_arqos direction O left 15 right 12 } \
   ARREADY { physical_name ethernet_s_arready direction I left 3 right 3 } \
   ARREGION { physical_name ethernet_s_arregion direction O left 15 right 12 } \
   ARSIZE { physical_name ethernet_s_arsize direction O left 11 right 9 } \
   ARVALID { physical_name ethernet_s_arvalid direction O left 3 right 3 } \
   AWADDR { physical_name ethernet_s_awaddr direction O left 255 right 192 } \
   AWBURST { physical_name ethernet_s_awburst direction O left 7 right 6 } \
   AWCACHE { physical_name ethernet_s_awcache direction O left 15 right 12 } \
   AWID { physical_name ethernet_s_awid direction O left 19 right 15 } \
   AWLEN { physical_name ethernet_s_awlen direction O left 31 right 24 } \
   AWLOCK { physical_name ethernet_s_awlock direction O left 3 right 3 } \
   AWPROT { physical_name ethernet_s_awprot direction O left 11 right 9 } \
   AWQOS { physical_name ethernet_s_awqos direction O left 15 right 12 } \
   AWREADY { physical_name ethernet_s_awready direction I left 3 right 3 } \
   AWREGION { physical_name ethernet_s_awregion direction O left 15 right 12 } \
   AWSIZE { physical_name ethernet_s_awsize direction O left 11 right 9 } \
   AWVALID { physical_name ethernet_s_awvalid direction O left 3 right 3 } \
   BID { physical_name ethernet_s_bid direction I left 19 right 15 } \
   BREADY { physical_name ethernet_s_bready direction O left 3 right 3 } \
   BRESP { physical_name ethernet_s_bresp direction I left 7 right 6 } \
   BVALID { physical_name ethernet_s_bvalid direction I left 3 right 3 } \
   RDATA { physical_name ethernet_s_rdata direction I left 255 right 192 } \
   RID { physical_name ethernet_s_rid direction I left 19 right 15 } \
   RLAST { physical_name ethernet_s_rlast direction I left 3 right 3 } \
   RREADY { physical_name ethernet_s_rready direction O left 3 right 3 } \
   RRESP { physical_name ethernet_s_rresp direction I left 7 right 6 } \
   RVALID { physical_name ethernet_s_rvalid direction I left 3 right 3 } \
   WDATA { physical_name ethernet_s_wdata direction O left 255 right 192 } \
   WLAST { physical_name ethernet_s_wlast direction O left 3 right 3 } \
   WREADY { physical_name ethernet_s_wready direction I left 3 right 3 } \
   WSTRB { physical_name ethernet_s_wstrb direction O left 31 right 24 } \
   WVALID { physical_name ethernet_s_wvalid direction O left 3 right 3 } \
   } \
  ethernet_s ]
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
   ] $ethernet_s
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports ethernet_s]

  set hydra_S [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name hydra_S_araddr direction O left 255 right 192 } \
   ARBURST { physical_name hydra_S_arburst direction O left 7 right 6 } \
   ARCACHE { physical_name hydra_S_arcache direction O left 15 right 12 } \
   ARID { physical_name hydra_S_arid direction O left 19 right 15 } \
   ARLEN { physical_name hydra_S_arlen direction O left 31 right 24 } \
   ARLOCK { physical_name hydra_S_arlock direction O left 3 right 3 } \
   ARPROT { physical_name hydra_S_arprot direction O left 11 right 9 } \
   ARQOS { physical_name hydra_S_arqos direction O left 15 right 12 } \
   ARREADY { physical_name hydra_S_arready direction I left 3 right 3 } \
   ARREGION { physical_name hydra_S_arregion direction O left 15 right 12 } \
   ARSIZE { physical_name hydra_S_arsize direction O left 11 right 9 } \
   ARVALID { physical_name hydra_S_arvalid direction O left 3 right 3 } \
   AWADDR { physical_name hydra_S_awaddr direction O left 255 right 192 } \
   AWBURST { physical_name hydra_S_awburst direction O left 7 right 6 } \
   AWCACHE { physical_name hydra_S_awcache direction O left 15 right 12 } \
   AWID { physical_name hydra_S_awid direction O left 19 right 15 } \
   AWLEN { physical_name hydra_S_awlen direction O left 31 right 24 } \
   AWLOCK { physical_name hydra_S_awlock direction O left 3 right 3 } \
   AWPROT { physical_name hydra_S_awprot direction O left 11 right 9 } \
   AWQOS { physical_name hydra_S_awqos direction O left 15 right 12 } \
   AWREADY { physical_name hydra_S_awready direction I left 3 right 3 } \
   AWREGION { physical_name hydra_S_awregion direction O left 15 right 12 } \
   AWSIZE { physical_name hydra_S_awsize direction O left 11 right 9 } \
   AWVALID { physical_name hydra_S_awvalid direction O left 3 right 3 } \
   BID { physical_name hydra_S_bid direction I left 19 right 15 } \
   BREADY { physical_name hydra_S_bready direction O left 3 right 3 } \
   BRESP { physical_name hydra_S_bresp direction I left 7 right 6 } \
   BVALID { physical_name hydra_S_bvalid direction I left 3 right 3 } \
   RDATA { physical_name hydra_S_rdata direction I left 255 right 192 } \
   RID { physical_name hydra_S_rid direction I left 19 right 15 } \
   RLAST { physical_name hydra_S_rlast direction I left 3 right 3 } \
   RREADY { physical_name hydra_S_rready direction O left 3 right 3 } \
   RRESP { physical_name hydra_S_rresp direction I left 7 right 6 } \
   RVALID { physical_name hydra_S_rvalid direction I left 3 right 3 } \
   WDATA { physical_name hydra_S_wdata direction O left 255 right 192 } \
   WLAST { physical_name hydra_S_wlast direction O left 3 right 3 } \
   WREADY { physical_name hydra_S_wready direction I left 3 right 3 } \
   WSTRB { physical_name hydra_S_wstrb direction O left 31 right 24 } \
   WVALID { physical_name hydra_S_wvalid direction O left 3 right 3 } \
   } \
  hydra_S ]
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
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $hydra_S
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports hydra_S]

  set hydra_m [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name hydra_m_araddr direction I left 127 right 64 } \
   ARBURST { physical_name hydra_m_arburst direction I left 3 right 2 } \
   ARCACHE { physical_name hydra_m_arcache direction I left 7 right 4 } \
   ARID { physical_name hydra_m_arid direction I left 9 right 5 } \
   ARLEN { physical_name hydra_m_arlen direction I left 15 right 8 } \
   ARLOCK { physical_name hydra_m_arlock direction I left 1 right 1 } \
   ARPROT { physical_name hydra_m_arprot direction I left 5 right 3 } \
   ARQOS { physical_name hydra_m_arqos direction I left 7 right 4 } \
   ARREADY { physical_name hydra_m_arready direction O left 1 right 1 } \
   ARSIZE { physical_name hydra_m_arsize direction I left 5 right 3 } \
   ARVALID { physical_name hydra_m_arvalid direction I left 1 right 1 } \
   AWADDR { physical_name hydra_m_awaddr direction I left 127 right 64 } \
   AWBURST { physical_name hydra_m_awburst direction I left 3 right 2 } \
   AWCACHE { physical_name hydra_m_awcache direction I left 7 right 4 } \
   AWID { physical_name hydra_m_awid direction I left 9 right 5 } \
   AWLEN { physical_name hydra_m_awlen direction I left 15 right 8 } \
   AWLOCK { physical_name hydra_m_awlock direction I left 1 right 1 } \
   AWPROT { physical_name hydra_m_awprot direction I left 5 right 3 } \
   AWQOS { physical_name hydra_m_awqos direction I left 7 right 4 } \
   AWREADY { physical_name hydra_m_awready direction O left 1 right 1 } \
   AWSIZE { physical_name hydra_m_awsize direction I left 5 right 3 } \
   AWVALID { physical_name hydra_m_awvalid direction I left 1 right 1 } \
   BID { physical_name hydra_m_bid direction O left 9 right 5 } \
   BREADY { physical_name hydra_m_bready direction I left 1 right 1 } \
   BRESP { physical_name hydra_m_bresp direction O left 3 right 2 } \
   BVALID { physical_name hydra_m_bvalid direction O left 1 right 1 } \
   RDATA { physical_name hydra_m_rdata direction O left 127 right 64 } \
   RID { physical_name hydra_m_rid direction O left 9 right 5 } \
   RLAST { physical_name hydra_m_rlast direction O left 1 right 1 } \
   RREADY { physical_name hydra_m_rready direction I left 1 right 1 } \
   RRESP { physical_name hydra_m_rresp direction O left 3 right 2 } \
   RVALID { physical_name hydra_m_rvalid direction O left 1 right 1 } \
   WDATA { physical_name hydra_m_wdata direction I left 127 right 64 } \
   WLAST { physical_name hydra_m_wlast direction I left 1 right 1 } \
   WREADY { physical_name hydra_m_wready direction O left 1 right 1 } \
   WSTRB { physical_name hydra_m_wstrb direction I left 15 right 8 } \
   WVALID { physical_name hydra_m_wvalid direction I left 1 right 1 } \
   } \
  hydra_m ]
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
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0.0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $hydra_m
  set_property HDL_ATTRIBUTE.LOCKED {TRUE} [get_bd_intf_ports hydra_m]


  # Create ports
  set interrupt_0 [ create_bd_port -dir O -type intr interrupt_0 ]
  set s_axi_aclk_0 [ create_bd_port -dir I -type clk -freq_hz 10000000 s_axi_aclk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {hydra_m:SMU_s:ethernet_s:hydra_S:DDR_s:MTMLAddr_s:MTMLAddr_m:XBAR2Addr_s:XBAR2Addr_m:XBAR1Addr_m:XBAR1Addr_s:S00_AXI_0} \
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
   CONFIG.NUM_MI {5} \
   CONFIG.NUM_SI {2} \
   CONFIG.S01_BASE_ID {0x00000010} \
   CONFIG.S02_BASE_ID {0x00000020} \
   CONFIG.S03_BASE_ID {0x00000030} \
   CONFIG.S04_BASE_ID {0x00000040} \
   CONFIG.S05_BASE_ID {0x00000050} \
   CONFIG.S06_BASE_ID {0x00000060} \
   CONFIG.S07_BASE_ID {0x00000070} \
   CONFIG.S08_BASE_ID {0x00000080} \
   CONFIG.S09_BASE_ID {0x00000090} \
   CONFIG.S10_BASE_ID {0x000000a0} \
   CONFIG.S11_BASE_ID {0x000000b0} \
   CONFIG.S12_BASE_ID {0x000000c0} \
   CONFIG.S13_BASE_ID {0x000000d0} \
   CONFIG.S14_BASE_ID {0x000000e0} \
   CONFIG.S15_BASE_ID {0x000000f0} \
 ] $axi_crossbar_0

  # Create instance: axi_crossbar_1, and set properties
  set axi_crossbar_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_1 ]
  set_property -dict [ list \
   CONFIG.ADDR_RANGES {1} \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.ID_WIDTH {5} \
   CONFIG.M00_A00_ADDR_WIDTH {24} \
   CONFIG.M00_A00_BASE_ADDR {0x0000000080000000} \
   CONFIG.M00_S01_READ_CONNECTIVITY {1} \
   CONFIG.M00_S01_WRITE_CONNECTIVITY {1} \
   CONFIG.M01_A00_ADDR_WIDTH {24} \
   CONFIG.M01_A00_BASE_ADDR {0x0000000082000000} \
   CONFIG.M02_A00_ADDR_WIDTH {24} \
   CONFIG.M02_A00_BASE_ADDR {0x0000000081000000} \
   CONFIG.M03_A00_ADDR_WIDTH {24} \
   CONFIG.M03_A00_BASE_ADDR {0x0000000083000000} \
   CONFIG.NUM_MI {4} \
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
 ] $axi_crossbar_1

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
  connect_bd_intf_net -intf_net S00_AXI_0_1 [get_bd_intf_ports MTMLAddr_m] [get_bd_intf_pins axi_crossbar_1/S00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_0_2 [get_bd_intf_ports S00_AXI_0] [get_bd_intf_pins axi_crossbar_0/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_0_1 [get_bd_intf_ports hydra_m] [get_bd_intf_pins axi_crossbar_1/S01_AXI]
  connect_bd_intf_net -intf_net S01_AXI_0_2 [get_bd_intf_ports XBAR2Addr_m] [get_bd_intf_pins axi_crossbar_0/S01_AXI]
  connect_bd_intf_net -intf_net S02_AXI_0_1 [get_bd_intf_ports XBAR1Addr_m] [get_bd_intf_pins axi_crossbar_1/S02_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_crossbar_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M01_AXI [get_bd_intf_pins axi_crossbar_0/M01_AXI] [get_bd_intf_pins axi_dwidth_converter_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M02_AXI [get_bd_intf_ports SMU_s] [get_bd_intf_pins axi_crossbar_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M03_AXI [get_bd_intf_ports ethernet_s] [get_bd_intf_pins axi_crossbar_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M04_AXI [get_bd_intf_ports XBAR1Addr_s] [get_bd_intf_pins axi_crossbar_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_1_M00_AXI [get_bd_intf_ports DDR_s] [get_bd_intf_pins axi_crossbar_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_1_M01_AXI [get_bd_intf_ports MTMLAddr_s] [get_bd_intf_pins axi_crossbar_1/M01_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_1_M02_AXI [get_bd_intf_ports XBAR2Addr_s] [get_bd_intf_pins axi_crossbar_1/M02_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_1_M03_AXI [get_bd_intf_ports hydra_S] [get_bd_intf_pins axi_crossbar_1/M03_AXI]
  connect_bd_intf_net -intf_net axi_dwidth_converter_0_M_AXI [get_bd_intf_pins axi_dwidth_converter_0/M_AXI] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_protocol_convert_0/M_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports UART_0] [get_bd_intf_pins axi_uartlite_0/UART]

  # Create port connections
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_ports interrupt_0] [get_bd_pins axi_uartlite_0/interrupt]
  connect_bd_net -net s_axi_aclk_0_1 [get_bd_ports s_axi_aclk_0] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_crossbar_1/aclk] [get_bd_pins axi_dwidth_converter_0/s_axi_aclk] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_0_1 [get_bd_ports s_axi_aresetn_0] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_crossbar_1/aresetn] [get_bd_pins axi_dwidth_converter_0/s_axi_aresetn] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn]

  # Create address segments
  assign_bd_address -offset 0x80000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hydra_m] [get_bd_addr_segs DDR_s/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces XBAR1Addr_m] [get_bd_addr_segs DDR_s/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces MTMLAddr_m] [get_bd_addr_segs DDR_s/Reg] -force
  assign_bd_address -offset 0x83000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hydra_m] [get_bd_addr_segs MTMLAddr_s/Reg] -force
  assign_bd_address -offset 0x83000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces XBAR1Addr_m] [get_bd_addr_segs MTMLAddr_s/Reg] -force
  assign_bd_address -offset 0x83000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces MTMLAddr_m] [get_bd_addr_segs MTMLAddr_s/Reg] -force
  assign_bd_address -offset 0x00080000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S00_AXI_0] [get_bd_addr_segs SMU_s/Reg] -force
  assign_bd_address -offset 0x00080000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XBAR2Addr_m] [get_bd_addr_segs SMU_s/Reg] -force
  assign_bd_address -offset 0x001C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XBAR2Addr_m] [get_bd_addr_segs XBAR1Addr_s/Reg] -force
  assign_bd_address -offset 0x001C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S00_AXI_0] [get_bd_addr_segs XBAR1Addr_s/Reg] -force
  assign_bd_address -offset 0x81000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces MTMLAddr_m] [get_bd_addr_segs XBAR2Addr_s/Reg] -force
  assign_bd_address -offset 0x81000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hydra_m] [get_bd_addr_segs XBAR2Addr_s/Reg] -force
  assign_bd_address -offset 0x81000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces XBAR1Addr_m] [get_bd_addr_segs XBAR2Addr_s/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces XBAR2Addr_m] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces S00_AXI_0] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S00_AXI_0] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XBAR2Addr_m] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x000C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S00_AXI_0] [get_bd_addr_segs ethernet_s/Reg] -force
  assign_bd_address -offset 0x000C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XBAR2Addr_m] [get_bd_addr_segs ethernet_s/Reg] -force
  assign_bd_address -offset 0x82000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces XBAR1Addr_m] [get_bd_addr_segs hydra_S/Reg] -force
  assign_bd_address -offset 0x82000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces MTMLAddr_m] [get_bd_addr_segs hydra_S/Reg] -force
  assign_bd_address -offset 0x82000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hydra_m] [get_bd_addr_segs hydra_S/Reg] -force


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


