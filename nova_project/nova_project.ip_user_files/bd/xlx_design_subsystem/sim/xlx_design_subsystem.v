//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Thu Mar 24 15:19:15 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target xlx_design_subsystem.bd
//Design      : xlx_design_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "xlx_design_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xlx_design_subsystem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "xlx_design_subsystem.hwdef" *) 
module xlx_design_subsystem
   (DDR_s_araddr,
    DDR_s_arburst,
    DDR_s_arcache,
    DDR_s_arid,
    DDR_s_arlen,
    DDR_s_arlock,
    DDR_s_arprot,
    DDR_s_arqos,
    DDR_s_arready,
    DDR_s_arregion,
    DDR_s_arsize,
    DDR_s_arvalid,
    DDR_s_awaddr,
    DDR_s_awburst,
    DDR_s_awcache,
    DDR_s_awid,
    DDR_s_awlen,
    DDR_s_awlock,
    DDR_s_awprot,
    DDR_s_awqos,
    DDR_s_awready,
    DDR_s_awregion,
    DDR_s_awsize,
    DDR_s_awvalid,
    DDR_s_bid,
    DDR_s_bready,
    DDR_s_bresp,
    DDR_s_bvalid,
    DDR_s_rdata,
    DDR_s_rid,
    DDR_s_rlast,
    DDR_s_rready,
    DDR_s_rresp,
    DDR_s_rvalid,
    DDR_s_wdata,
    DDR_s_wlast,
    DDR_s_wready,
    DDR_s_wstrb,
    DDR_s_wvalid,
    MTMLAddr_m_araddr,
    MTMLAddr_m_arburst,
    MTMLAddr_m_arcache,
    MTMLAddr_m_arid,
    MTMLAddr_m_arlen,
    MTMLAddr_m_arlock,
    MTMLAddr_m_arprot,
    MTMLAddr_m_arqos,
    MTMLAddr_m_arready,
    MTMLAddr_m_arsize,
    MTMLAddr_m_arvalid,
    MTMLAddr_m_awaddr,
    MTMLAddr_m_awburst,
    MTMLAddr_m_awcache,
    MTMLAddr_m_awid,
    MTMLAddr_m_awlen,
    MTMLAddr_m_awlock,
    MTMLAddr_m_awprot,
    MTMLAddr_m_awqos,
    MTMLAddr_m_awready,
    MTMLAddr_m_awsize,
    MTMLAddr_m_awvalid,
    MTMLAddr_m_bid,
    MTMLAddr_m_bready,
    MTMLAddr_m_bresp,
    MTMLAddr_m_bvalid,
    MTMLAddr_m_rdata,
    MTMLAddr_m_rid,
    MTMLAddr_m_rlast,
    MTMLAddr_m_rready,
    MTMLAddr_m_rresp,
    MTMLAddr_m_rvalid,
    MTMLAddr_m_wdata,
    MTMLAddr_m_wlast,
    MTMLAddr_m_wready,
    MTMLAddr_m_wstrb,
    MTMLAddr_m_wvalid,
    MTMLAddr_s_araddr,
    MTMLAddr_s_arburst,
    MTMLAddr_s_arcache,
    MTMLAddr_s_arid,
    MTMLAddr_s_arlen,
    MTMLAddr_s_arlock,
    MTMLAddr_s_arprot,
    MTMLAddr_s_arqos,
    MTMLAddr_s_arready,
    MTMLAddr_s_arregion,
    MTMLAddr_s_arsize,
    MTMLAddr_s_arvalid,
    MTMLAddr_s_awaddr,
    MTMLAddr_s_awburst,
    MTMLAddr_s_awcache,
    MTMLAddr_s_awid,
    MTMLAddr_s_awlen,
    MTMLAddr_s_awlock,
    MTMLAddr_s_awprot,
    MTMLAddr_s_awqos,
    MTMLAddr_s_awready,
    MTMLAddr_s_awregion,
    MTMLAddr_s_awsize,
    MTMLAddr_s_awvalid,
    MTMLAddr_s_bid,
    MTMLAddr_s_bready,
    MTMLAddr_s_bresp,
    MTMLAddr_s_bvalid,
    MTMLAddr_s_rdata,
    MTMLAddr_s_rid,
    MTMLAddr_s_rlast,
    MTMLAddr_s_rready,
    MTMLAddr_s_rresp,
    MTMLAddr_s_rvalid,
    MTMLAddr_s_wdata,
    MTMLAddr_s_wlast,
    MTMLAddr_s_wready,
    MTMLAddr_s_wstrb,
    MTMLAddr_s_wvalid,
    S00_AXI_0_araddr,
    S00_AXI_0_arburst,
    S00_AXI_0_arcache,
    S00_AXI_0_arid,
    S00_AXI_0_arlen,
    S00_AXI_0_arlock,
    S00_AXI_0_arprot,
    S00_AXI_0_arqos,
    S00_AXI_0_arready,
    S00_AXI_0_arsize,
    S00_AXI_0_arvalid,
    S00_AXI_0_awaddr,
    S00_AXI_0_awburst,
    S00_AXI_0_awcache,
    S00_AXI_0_awid,
    S00_AXI_0_awlen,
    S00_AXI_0_awlock,
    S00_AXI_0_awprot,
    S00_AXI_0_awqos,
    S00_AXI_0_awready,
    S00_AXI_0_awsize,
    S00_AXI_0_awvalid,
    S00_AXI_0_bid,
    S00_AXI_0_bready,
    S00_AXI_0_bresp,
    S00_AXI_0_bvalid,
    S00_AXI_0_rdata,
    S00_AXI_0_rid,
    S00_AXI_0_rlast,
    S00_AXI_0_rready,
    S00_AXI_0_rresp,
    S00_AXI_0_rvalid,
    S00_AXI_0_wdata,
    S00_AXI_0_wlast,
    S00_AXI_0_wready,
    S00_AXI_0_wstrb,
    S00_AXI_0_wvalid,
    SMU_s_araddr,
    SMU_s_arburst,
    SMU_s_arcache,
    SMU_s_arid,
    SMU_s_arlen,
    SMU_s_arlock,
    SMU_s_arprot,
    SMU_s_arqos,
    SMU_s_arready,
    SMU_s_arregion,
    SMU_s_arsize,
    SMU_s_arvalid,
    SMU_s_awaddr,
    SMU_s_awburst,
    SMU_s_awcache,
    SMU_s_awid,
    SMU_s_awlen,
    SMU_s_awlock,
    SMU_s_awprot,
    SMU_s_awqos,
    SMU_s_awready,
    SMU_s_awregion,
    SMU_s_awsize,
    SMU_s_awvalid,
    SMU_s_bid,
    SMU_s_bready,
    SMU_s_bresp,
    SMU_s_bvalid,
    SMU_s_rdata,
    SMU_s_rid,
    SMU_s_rlast,
    SMU_s_rready,
    SMU_s_rresp,
    SMU_s_rvalid,
    SMU_s_wdata,
    SMU_s_wlast,
    SMU_s_wready,
    SMU_s_wstrb,
    SMU_s_wvalid,
    UART_0_rxd,
    UART_0_txd,
    XBAR1Addr_m_araddr,
    XBAR1Addr_m_arburst,
    XBAR1Addr_m_arcache,
    XBAR1Addr_m_arid,
    XBAR1Addr_m_arlen,
    XBAR1Addr_m_arlock,
    XBAR1Addr_m_arprot,
    XBAR1Addr_m_arqos,
    XBAR1Addr_m_arready,
    XBAR1Addr_m_arsize,
    XBAR1Addr_m_arvalid,
    XBAR1Addr_m_awaddr,
    XBAR1Addr_m_awburst,
    XBAR1Addr_m_awcache,
    XBAR1Addr_m_awid,
    XBAR1Addr_m_awlen,
    XBAR1Addr_m_awlock,
    XBAR1Addr_m_awprot,
    XBAR1Addr_m_awqos,
    XBAR1Addr_m_awready,
    XBAR1Addr_m_awsize,
    XBAR1Addr_m_awvalid,
    XBAR1Addr_m_bid,
    XBAR1Addr_m_bready,
    XBAR1Addr_m_bresp,
    XBAR1Addr_m_bvalid,
    XBAR1Addr_m_rdata,
    XBAR1Addr_m_rid,
    XBAR1Addr_m_rlast,
    XBAR1Addr_m_rready,
    XBAR1Addr_m_rresp,
    XBAR1Addr_m_rvalid,
    XBAR1Addr_m_wdata,
    XBAR1Addr_m_wlast,
    XBAR1Addr_m_wready,
    XBAR1Addr_m_wstrb,
    XBAR1Addr_m_wvalid,
    XBAR1Addr_s_araddr,
    XBAR1Addr_s_arburst,
    XBAR1Addr_s_arcache,
    XBAR1Addr_s_arid,
    XBAR1Addr_s_arlen,
    XBAR1Addr_s_arlock,
    XBAR1Addr_s_arprot,
    XBAR1Addr_s_arqos,
    XBAR1Addr_s_arready,
    XBAR1Addr_s_arregion,
    XBAR1Addr_s_arsize,
    XBAR1Addr_s_arvalid,
    XBAR1Addr_s_awaddr,
    XBAR1Addr_s_awburst,
    XBAR1Addr_s_awcache,
    XBAR1Addr_s_awid,
    XBAR1Addr_s_awlen,
    XBAR1Addr_s_awlock,
    XBAR1Addr_s_awprot,
    XBAR1Addr_s_awqos,
    XBAR1Addr_s_awready,
    XBAR1Addr_s_awregion,
    XBAR1Addr_s_awsize,
    XBAR1Addr_s_awvalid,
    XBAR1Addr_s_bid,
    XBAR1Addr_s_bready,
    XBAR1Addr_s_bresp,
    XBAR1Addr_s_bvalid,
    XBAR1Addr_s_rdata,
    XBAR1Addr_s_rid,
    XBAR1Addr_s_rlast,
    XBAR1Addr_s_rready,
    XBAR1Addr_s_rresp,
    XBAR1Addr_s_rvalid,
    XBAR1Addr_s_wdata,
    XBAR1Addr_s_wlast,
    XBAR1Addr_s_wready,
    XBAR1Addr_s_wstrb,
    XBAR1Addr_s_wvalid,
    XBAR2Addr_m_araddr,
    XBAR2Addr_m_arburst,
    XBAR2Addr_m_arcache,
    XBAR2Addr_m_arid,
    XBAR2Addr_m_arlen,
    XBAR2Addr_m_arlock,
    XBAR2Addr_m_arprot,
    XBAR2Addr_m_arqos,
    XBAR2Addr_m_arready,
    XBAR2Addr_m_arsize,
    XBAR2Addr_m_arvalid,
    XBAR2Addr_m_awaddr,
    XBAR2Addr_m_awburst,
    XBAR2Addr_m_awcache,
    XBAR2Addr_m_awid,
    XBAR2Addr_m_awlen,
    XBAR2Addr_m_awlock,
    XBAR2Addr_m_awprot,
    XBAR2Addr_m_awqos,
    XBAR2Addr_m_awready,
    XBAR2Addr_m_awsize,
    XBAR2Addr_m_awvalid,
    XBAR2Addr_m_bid,
    XBAR2Addr_m_bready,
    XBAR2Addr_m_bresp,
    XBAR2Addr_m_bvalid,
    XBAR2Addr_m_rdata,
    XBAR2Addr_m_rid,
    XBAR2Addr_m_rlast,
    XBAR2Addr_m_rready,
    XBAR2Addr_m_rresp,
    XBAR2Addr_m_rvalid,
    XBAR2Addr_m_wdata,
    XBAR2Addr_m_wlast,
    XBAR2Addr_m_wready,
    XBAR2Addr_m_wstrb,
    XBAR2Addr_m_wvalid,
    XBAR2Addr_s_araddr,
    XBAR2Addr_s_arburst,
    XBAR2Addr_s_arcache,
    XBAR2Addr_s_arid,
    XBAR2Addr_s_arlen,
    XBAR2Addr_s_arlock,
    XBAR2Addr_s_arprot,
    XBAR2Addr_s_arqos,
    XBAR2Addr_s_arready,
    XBAR2Addr_s_arregion,
    XBAR2Addr_s_arsize,
    XBAR2Addr_s_arvalid,
    XBAR2Addr_s_awaddr,
    XBAR2Addr_s_awburst,
    XBAR2Addr_s_awcache,
    XBAR2Addr_s_awid,
    XBAR2Addr_s_awlen,
    XBAR2Addr_s_awlock,
    XBAR2Addr_s_awprot,
    XBAR2Addr_s_awqos,
    XBAR2Addr_s_awready,
    XBAR2Addr_s_awregion,
    XBAR2Addr_s_awsize,
    XBAR2Addr_s_awvalid,
    XBAR2Addr_s_bid,
    XBAR2Addr_s_bready,
    XBAR2Addr_s_bresp,
    XBAR2Addr_s_bvalid,
    XBAR2Addr_s_rdata,
    XBAR2Addr_s_rid,
    XBAR2Addr_s_rlast,
    XBAR2Addr_s_rready,
    XBAR2Addr_s_rresp,
    XBAR2Addr_s_rvalid,
    XBAR2Addr_s_wdata,
    XBAR2Addr_s_wlast,
    XBAR2Addr_s_wready,
    XBAR2Addr_s_wstrb,
    XBAR2Addr_s_wvalid,
    ethernet_s_araddr,
    ethernet_s_arburst,
    ethernet_s_arcache,
    ethernet_s_arid,
    ethernet_s_arlen,
    ethernet_s_arlock,
    ethernet_s_arprot,
    ethernet_s_arqos,
    ethernet_s_arready,
    ethernet_s_arregion,
    ethernet_s_arsize,
    ethernet_s_arvalid,
    ethernet_s_awaddr,
    ethernet_s_awburst,
    ethernet_s_awcache,
    ethernet_s_awid,
    ethernet_s_awlen,
    ethernet_s_awlock,
    ethernet_s_awprot,
    ethernet_s_awqos,
    ethernet_s_awready,
    ethernet_s_awregion,
    ethernet_s_awsize,
    ethernet_s_awvalid,
    ethernet_s_bid,
    ethernet_s_bready,
    ethernet_s_bresp,
    ethernet_s_bvalid,
    ethernet_s_rdata,
    ethernet_s_rid,
    ethernet_s_rlast,
    ethernet_s_rready,
    ethernet_s_rresp,
    ethernet_s_rvalid,
    ethernet_s_wdata,
    ethernet_s_wlast,
    ethernet_s_wready,
    ethernet_s_wstrb,
    ethernet_s_wvalid,
    hydra_S_araddr,
    hydra_S_arburst,
    hydra_S_arcache,
    hydra_S_arid,
    hydra_S_arlen,
    hydra_S_arlock,
    hydra_S_arprot,
    hydra_S_arqos,
    hydra_S_arready,
    hydra_S_arregion,
    hydra_S_arsize,
    hydra_S_arvalid,
    hydra_S_awaddr,
    hydra_S_awburst,
    hydra_S_awcache,
    hydra_S_awid,
    hydra_S_awlen,
    hydra_S_awlock,
    hydra_S_awprot,
    hydra_S_awqos,
    hydra_S_awready,
    hydra_S_awregion,
    hydra_S_awsize,
    hydra_S_awvalid,
    hydra_S_bid,
    hydra_S_bready,
    hydra_S_bresp,
    hydra_S_bvalid,
    hydra_S_rdata,
    hydra_S_rid,
    hydra_S_rlast,
    hydra_S_rready,
    hydra_S_rresp,
    hydra_S_rvalid,
    hydra_S_wdata,
    hydra_S_wlast,
    hydra_S_wready,
    hydra_S_wstrb,
    hydra_S_wvalid,
    hydra_m_araddr,
    hydra_m_arburst,
    hydra_m_arcache,
    hydra_m_arid,
    hydra_m_arlen,
    hydra_m_arlock,
    hydra_m_arprot,
    hydra_m_arqos,
    hydra_m_arready,
    hydra_m_arsize,
    hydra_m_arvalid,
    hydra_m_awaddr,
    hydra_m_awburst,
    hydra_m_awcache,
    hydra_m_awid,
    hydra_m_awlen,
    hydra_m_awlock,
    hydra_m_awprot,
    hydra_m_awqos,
    hydra_m_awready,
    hydra_m_awsize,
    hydra_m_awvalid,
    hydra_m_bid,
    hydra_m_bready,
    hydra_m_bresp,
    hydra_m_bvalid,
    hydra_m_rdata,
    hydra_m_rid,
    hydra_m_rlast,
    hydra_m_rready,
    hydra_m_rresp,
    hydra_m_rvalid,
    hydra_m_wdata,
    hydra_m_wlast,
    hydra_m_wready,
    hydra_m_wstrb,
    hydra_m_wvalid,
    interrupt_0,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]DDR_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARBURST" *) output [1:0]DDR_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARCACHE" *) output [3:0]DDR_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARID" *) output [4:0]DDR_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARLEN" *) output [7:0]DDR_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARLOCK" *) output [0:0]DDR_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARPROT" *) output [2:0]DDR_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARQOS" *) output [3:0]DDR_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARREADY" *) input [0:0]DDR_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARREGION" *) output [3:0]DDR_s_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARSIZE" *) output [2:0]DDR_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s ARVALID" *) output [0:0]DDR_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWADDR" *) output [63:0]DDR_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWBURST" *) output [1:0]DDR_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWCACHE" *) output [3:0]DDR_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWID" *) output [4:0]DDR_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWLEN" *) output [7:0]DDR_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWLOCK" *) output [0:0]DDR_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWPROT" *) output [2:0]DDR_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWQOS" *) output [3:0]DDR_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWREADY" *) input [0:0]DDR_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWREGION" *) output [3:0]DDR_s_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWSIZE" *) output [2:0]DDR_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s AWVALID" *) output [0:0]DDR_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s BID" *) input [4:0]DDR_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s BREADY" *) output [0:0]DDR_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s BRESP" *) input [1:0]DDR_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s BVALID" *) input [0:0]DDR_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s RDATA" *) input [63:0]DDR_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s RID" *) input [4:0]DDR_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s RLAST" *) input [0:0]DDR_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s RREADY" *) output [0:0]DDR_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s RRESP" *) input [1:0]DDR_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s RVALID" *) input [0:0]DDR_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s WDATA" *) output [63:0]DDR_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s WLAST" *) output [0:0]DDR_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s WREADY" *) input [0:0]DDR_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s WSTRB" *) output [7:0]DDR_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_s WVALID" *) output [0:0]DDR_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MTMLAddr_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]MTMLAddr_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARBURST" *) input [1:0]MTMLAddr_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARCACHE" *) input [3:0]MTMLAddr_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARID" *) input [4:0]MTMLAddr_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARLEN" *) input [7:0]MTMLAddr_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARLOCK" *) input [0:0]MTMLAddr_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARPROT" *) input [2:0]MTMLAddr_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARQOS" *) input [3:0]MTMLAddr_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARREADY" *) output [0:0]MTMLAddr_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARSIZE" *) input [2:0]MTMLAddr_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m ARVALID" *) input [0:0]MTMLAddr_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWADDR" *) input [63:0]MTMLAddr_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWBURST" *) input [1:0]MTMLAddr_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWCACHE" *) input [3:0]MTMLAddr_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWID" *) input [4:0]MTMLAddr_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWLEN" *) input [7:0]MTMLAddr_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWLOCK" *) input [0:0]MTMLAddr_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWPROT" *) input [2:0]MTMLAddr_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWQOS" *) input [3:0]MTMLAddr_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWREADY" *) output [0:0]MTMLAddr_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWSIZE" *) input [2:0]MTMLAddr_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m AWVALID" *) input [0:0]MTMLAddr_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m BID" *) output [4:0]MTMLAddr_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m BREADY" *) input [0:0]MTMLAddr_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m BRESP" *) output [1:0]MTMLAddr_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m BVALID" *) output [0:0]MTMLAddr_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m RDATA" *) output [63:0]MTMLAddr_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m RID" *) output [4:0]MTMLAddr_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m RLAST" *) output [0:0]MTMLAddr_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m RREADY" *) input [0:0]MTMLAddr_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m RRESP" *) output [1:0]MTMLAddr_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m RVALID" *) output [0:0]MTMLAddr_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m WDATA" *) input [63:0]MTMLAddr_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m WLAST" *) input [0:0]MTMLAddr_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m WREADY" *) output [0:0]MTMLAddr_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m WSTRB" *) input [7:0]MTMLAddr_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_m WVALID" *) input [0:0]MTMLAddr_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MTMLAddr_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [127:64]MTMLAddr_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARBURST" *) output [3:2]MTMLAddr_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARCACHE" *) output [7:4]MTMLAddr_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARID" *) output [9:5]MTMLAddr_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARLEN" *) output [15:8]MTMLAddr_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARLOCK" *) output [1:1]MTMLAddr_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARPROT" *) output [5:3]MTMLAddr_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARQOS" *) output [7:4]MTMLAddr_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARREADY" *) input [1:1]MTMLAddr_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARREGION" *) output [7:4]MTMLAddr_s_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARSIZE" *) output [5:3]MTMLAddr_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s ARVALID" *) output [1:1]MTMLAddr_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWADDR" *) output [127:64]MTMLAddr_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWBURST" *) output [3:2]MTMLAddr_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWCACHE" *) output [7:4]MTMLAddr_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWID" *) output [9:5]MTMLAddr_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWLEN" *) output [15:8]MTMLAddr_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWLOCK" *) output [1:1]MTMLAddr_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWPROT" *) output [5:3]MTMLAddr_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWQOS" *) output [7:4]MTMLAddr_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWREADY" *) input [1:1]MTMLAddr_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWREGION" *) output [7:4]MTMLAddr_s_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWSIZE" *) output [5:3]MTMLAddr_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s AWVALID" *) output [1:1]MTMLAddr_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s BID" *) input [9:5]MTMLAddr_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s BREADY" *) output [1:1]MTMLAddr_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s BRESP" *) input [3:2]MTMLAddr_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s BVALID" *) input [1:1]MTMLAddr_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s RDATA" *) input [127:64]MTMLAddr_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s RID" *) input [9:5]MTMLAddr_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s RLAST" *) input [1:1]MTMLAddr_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s RREADY" *) output [1:1]MTMLAddr_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s RRESP" *) input [3:2]MTMLAddr_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s RVALID" *) input [1:1]MTMLAddr_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s WDATA" *) output [127:64]MTMLAddr_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s WLAST" *) output [1:1]MTMLAddr_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s WREADY" *) input [1:1]MTMLAddr_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s WSTRB" *) output [15:8]MTMLAddr_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTMLAddr_s WVALID" *) output [1:1]MTMLAddr_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S00_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARBURST" *) input [1:0]S00_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARCACHE" *) input [3:0]S00_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARID" *) input [4:0]S00_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARLEN" *) input [7:0]S00_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARLOCK" *) input [0:0]S00_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARPROT" *) input [2:0]S00_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARQOS" *) input [3:0]S00_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARREADY" *) output [0:0]S00_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARSIZE" *) input [2:0]S00_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARVALID" *) input [0:0]S00_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWADDR" *) input [63:0]S00_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWBURST" *) input [1:0]S00_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWCACHE" *) input [3:0]S00_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWID" *) input [4:0]S00_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWLEN" *) input [7:0]S00_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWLOCK" *) input [0:0]S00_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWPROT" *) input [2:0]S00_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWQOS" *) input [3:0]S00_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWREADY" *) output [0:0]S00_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWSIZE" *) input [2:0]S00_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWVALID" *) input [0:0]S00_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BID" *) output [4:0]S00_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BREADY" *) input [0:0]S00_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BRESP" *) output [1:0]S00_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BVALID" *) output [0:0]S00_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RDATA" *) output [63:0]S00_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RID" *) output [4:0]S00_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RLAST" *) output [0:0]S00_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RREADY" *) input [0:0]S00_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RRESP" *) output [1:0]S00_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RVALID" *) output [0:0]S00_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WDATA" *) input [63:0]S00_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WLAST" *) input [0:0]S00_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WREADY" *) output [0:0]S00_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WSTRB" *) input [7:0]S00_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WVALID" *) input [0:0]S00_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SMU_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [191:128]SMU_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARBURST" *) output [5:4]SMU_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARCACHE" *) output [11:8]SMU_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARID" *) output [14:10]SMU_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARLEN" *) output [23:16]SMU_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARLOCK" *) output [2:2]SMU_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARPROT" *) output [8:6]SMU_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARQOS" *) output [11:8]SMU_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARREADY" *) input [2:2]SMU_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARREGION" *) output [11:8]SMU_s_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARSIZE" *) output [8:6]SMU_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s ARVALID" *) output [2:2]SMU_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWADDR" *) output [191:128]SMU_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWBURST" *) output [5:4]SMU_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWCACHE" *) output [11:8]SMU_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWID" *) output [14:10]SMU_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWLEN" *) output [23:16]SMU_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWLOCK" *) output [2:2]SMU_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWPROT" *) output [8:6]SMU_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWQOS" *) output [11:8]SMU_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWREADY" *) input [2:2]SMU_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWREGION" *) output [11:8]SMU_s_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWSIZE" *) output [8:6]SMU_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s AWVALID" *) output [2:2]SMU_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s BID" *) input [14:10]SMU_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s BREADY" *) output [2:2]SMU_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s BRESP" *) input [5:4]SMU_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s BVALID" *) input [2:2]SMU_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s RDATA" *) input [191:128]SMU_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s RID" *) input [14:10]SMU_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s RLAST" *) input [2:2]SMU_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s RREADY" *) output [2:2]SMU_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s RRESP" *) input [5:4]SMU_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s RVALID" *) input [2:2]SMU_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s WDATA" *) output [191:128]SMU_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s WLAST" *) output [2:2]SMU_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s WREADY" *) input [2:2]SMU_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s WSTRB" *) output [23:16]SMU_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_s WVALID" *) output [2:2]SMU_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 RxD" *) input UART_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 TxD" *) output UART_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME XBAR1Addr_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [191:128]XBAR1Addr_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARBURST" *) input [5:4]XBAR1Addr_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARCACHE" *) input [11:8]XBAR1Addr_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARID" *) input [14:10]XBAR1Addr_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARLEN" *) input [23:16]XBAR1Addr_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARLOCK" *) input [2:2]XBAR1Addr_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARPROT" *) input [8:6]XBAR1Addr_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARQOS" *) input [11:8]XBAR1Addr_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARREADY" *) output [2:2]XBAR1Addr_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARSIZE" *) input [8:6]XBAR1Addr_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m ARVALID" *) input [2:2]XBAR1Addr_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWADDR" *) input [191:128]XBAR1Addr_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWBURST" *) input [5:4]XBAR1Addr_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWCACHE" *) input [11:8]XBAR1Addr_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWID" *) input [14:10]XBAR1Addr_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWLEN" *) input [23:16]XBAR1Addr_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWLOCK" *) input [2:2]XBAR1Addr_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWPROT" *) input [8:6]XBAR1Addr_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWQOS" *) input [11:8]XBAR1Addr_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWREADY" *) output [2:2]XBAR1Addr_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWSIZE" *) input [8:6]XBAR1Addr_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m AWVALID" *) input [2:2]XBAR1Addr_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m BID" *) output [14:10]XBAR1Addr_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m BREADY" *) input [2:2]XBAR1Addr_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m BRESP" *) output [5:4]XBAR1Addr_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m BVALID" *) output [2:2]XBAR1Addr_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m RDATA" *) output [191:128]XBAR1Addr_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m RID" *) output [14:10]XBAR1Addr_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m RLAST" *) output [2:2]XBAR1Addr_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m RREADY" *) input [2:2]XBAR1Addr_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m RRESP" *) output [5:4]XBAR1Addr_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m RVALID" *) output [2:2]XBAR1Addr_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m WDATA" *) input [191:128]XBAR1Addr_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m WLAST" *) input [2:2]XBAR1Addr_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m WREADY" *) output [2:2]XBAR1Addr_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m WSTRB" *) input [23:16]XBAR1Addr_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_m WVALID" *) input [2:2]XBAR1Addr_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME XBAR1Addr_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [319:256]XBAR1Addr_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARBURST" *) output [9:8]XBAR1Addr_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARCACHE" *) output [19:16]XBAR1Addr_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARID" *) output [24:20]XBAR1Addr_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARLEN" *) output [39:32]XBAR1Addr_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARLOCK" *) output [4:4]XBAR1Addr_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARPROT" *) output [14:12]XBAR1Addr_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARQOS" *) output [19:16]XBAR1Addr_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARREADY" *) input [4:4]XBAR1Addr_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARREGION" *) output [19:16]XBAR1Addr_s_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARSIZE" *) output [14:12]XBAR1Addr_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s ARVALID" *) output [4:4]XBAR1Addr_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWADDR" *) output [319:256]XBAR1Addr_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWBURST" *) output [9:8]XBAR1Addr_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWCACHE" *) output [19:16]XBAR1Addr_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWID" *) output [24:20]XBAR1Addr_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWLEN" *) output [39:32]XBAR1Addr_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWLOCK" *) output [4:4]XBAR1Addr_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWPROT" *) output [14:12]XBAR1Addr_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWQOS" *) output [19:16]XBAR1Addr_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWREADY" *) input [4:4]XBAR1Addr_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWREGION" *) output [19:16]XBAR1Addr_s_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWSIZE" *) output [14:12]XBAR1Addr_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s AWVALID" *) output [4:4]XBAR1Addr_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s BID" *) input [24:20]XBAR1Addr_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s BREADY" *) output [4:4]XBAR1Addr_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s BRESP" *) input [9:8]XBAR1Addr_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s BVALID" *) input [4:4]XBAR1Addr_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s RDATA" *) input [319:256]XBAR1Addr_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s RID" *) input [24:20]XBAR1Addr_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s RLAST" *) input [4:4]XBAR1Addr_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s RREADY" *) output [4:4]XBAR1Addr_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s RRESP" *) input [9:8]XBAR1Addr_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s RVALID" *) input [4:4]XBAR1Addr_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s WDATA" *) output [319:256]XBAR1Addr_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s WLAST" *) output [4:4]XBAR1Addr_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s WREADY" *) input [4:4]XBAR1Addr_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s WSTRB" *) output [39:32]XBAR1Addr_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR1Addr_s WVALID" *) output [4:4]XBAR1Addr_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME XBAR2Addr_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [127:64]XBAR2Addr_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARBURST" *) input [3:2]XBAR2Addr_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARCACHE" *) input [7:4]XBAR2Addr_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARID" *) input [9:5]XBAR2Addr_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARLEN" *) input [15:8]XBAR2Addr_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARLOCK" *) input [1:1]XBAR2Addr_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARPROT" *) input [5:3]XBAR2Addr_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARQOS" *) input [7:4]XBAR2Addr_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARREADY" *) output [1:1]XBAR2Addr_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARSIZE" *) input [5:3]XBAR2Addr_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m ARVALID" *) input [1:1]XBAR2Addr_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWADDR" *) input [127:64]XBAR2Addr_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWBURST" *) input [3:2]XBAR2Addr_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWCACHE" *) input [7:4]XBAR2Addr_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWID" *) input [9:5]XBAR2Addr_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWLEN" *) input [15:8]XBAR2Addr_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWLOCK" *) input [1:1]XBAR2Addr_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWPROT" *) input [5:3]XBAR2Addr_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWQOS" *) input [7:4]XBAR2Addr_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWREADY" *) output [1:1]XBAR2Addr_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWSIZE" *) input [5:3]XBAR2Addr_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m AWVALID" *) input [1:1]XBAR2Addr_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m BID" *) output [9:5]XBAR2Addr_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m BREADY" *) input [1:1]XBAR2Addr_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m BRESP" *) output [3:2]XBAR2Addr_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m BVALID" *) output [1:1]XBAR2Addr_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m RDATA" *) output [127:64]XBAR2Addr_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m RID" *) output [9:5]XBAR2Addr_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m RLAST" *) output [1:1]XBAR2Addr_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m RREADY" *) input [1:1]XBAR2Addr_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m RRESP" *) output [3:2]XBAR2Addr_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m RVALID" *) output [1:1]XBAR2Addr_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m WDATA" *) input [127:64]XBAR2Addr_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m WLAST" *) input [1:1]XBAR2Addr_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m WREADY" *) output [1:1]XBAR2Addr_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m WSTRB" *) input [15:8]XBAR2Addr_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_m WVALID" *) input [1:1]XBAR2Addr_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME XBAR2Addr_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [191:128]XBAR2Addr_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARBURST" *) output [5:4]XBAR2Addr_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARCACHE" *) output [11:8]XBAR2Addr_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARID" *) output [14:10]XBAR2Addr_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARLEN" *) output [23:16]XBAR2Addr_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARLOCK" *) output [2:2]XBAR2Addr_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARPROT" *) output [8:6]XBAR2Addr_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARQOS" *) output [11:8]XBAR2Addr_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARREADY" *) input [2:2]XBAR2Addr_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARREGION" *) output [11:8]XBAR2Addr_s_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARSIZE" *) output [8:6]XBAR2Addr_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s ARVALID" *) output [2:2]XBAR2Addr_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWADDR" *) output [191:128]XBAR2Addr_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWBURST" *) output [5:4]XBAR2Addr_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWCACHE" *) output [11:8]XBAR2Addr_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWID" *) output [14:10]XBAR2Addr_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWLEN" *) output [23:16]XBAR2Addr_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWLOCK" *) output [2:2]XBAR2Addr_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWPROT" *) output [8:6]XBAR2Addr_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWQOS" *) output [11:8]XBAR2Addr_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWREADY" *) input [2:2]XBAR2Addr_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWREGION" *) output [11:8]XBAR2Addr_s_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWSIZE" *) output [8:6]XBAR2Addr_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s AWVALID" *) output [2:2]XBAR2Addr_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s BID" *) input [14:10]XBAR2Addr_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s BREADY" *) output [2:2]XBAR2Addr_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s BRESP" *) input [5:4]XBAR2Addr_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s BVALID" *) input [2:2]XBAR2Addr_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s RDATA" *) input [191:128]XBAR2Addr_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s RID" *) input [14:10]XBAR2Addr_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s RLAST" *) input [2:2]XBAR2Addr_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s RREADY" *) output [2:2]XBAR2Addr_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s RRESP" *) input [5:4]XBAR2Addr_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s RVALID" *) input [2:2]XBAR2Addr_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s WDATA" *) output [191:128]XBAR2Addr_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s WLAST" *) output [2:2]XBAR2Addr_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s WREADY" *) input [2:2]XBAR2Addr_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s WSTRB" *) output [23:16]XBAR2Addr_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 XBAR2Addr_s WVALID" *) output [2:2]XBAR2Addr_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ethernet_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [255:192]ethernet_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARBURST" *) output [7:6]ethernet_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARCACHE" *) output [15:12]ethernet_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARID" *) output [19:15]ethernet_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARLEN" *) output [31:24]ethernet_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARLOCK" *) output [3:3]ethernet_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARPROT" *) output [11:9]ethernet_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARQOS" *) output [15:12]ethernet_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARREADY" *) input [3:3]ethernet_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARREGION" *) output [15:12]ethernet_s_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARSIZE" *) output [11:9]ethernet_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s ARVALID" *) output [3:3]ethernet_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWADDR" *) output [255:192]ethernet_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWBURST" *) output [7:6]ethernet_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWCACHE" *) output [15:12]ethernet_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWID" *) output [19:15]ethernet_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWLEN" *) output [31:24]ethernet_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWLOCK" *) output [3:3]ethernet_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWPROT" *) output [11:9]ethernet_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWQOS" *) output [15:12]ethernet_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWREADY" *) input [3:3]ethernet_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWREGION" *) output [15:12]ethernet_s_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWSIZE" *) output [11:9]ethernet_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s AWVALID" *) output [3:3]ethernet_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s BID" *) input [19:15]ethernet_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s BREADY" *) output [3:3]ethernet_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s BRESP" *) input [7:6]ethernet_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s BVALID" *) input [3:3]ethernet_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s RDATA" *) input [255:192]ethernet_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s RID" *) input [19:15]ethernet_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s RLAST" *) input [3:3]ethernet_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s RREADY" *) output [3:3]ethernet_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s RRESP" *) input [7:6]ethernet_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s RVALID" *) input [3:3]ethernet_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s WDATA" *) output [255:192]ethernet_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s WLAST" *) output [3:3]ethernet_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s WREADY" *) input [3:3]ethernet_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s WSTRB" *) output [31:24]ethernet_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_s WVALID" *) output [3:3]ethernet_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hydra_S, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [255:192]hydra_S_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARBURST" *) output [7:6]hydra_S_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARCACHE" *) output [15:12]hydra_S_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARID" *) output [19:15]hydra_S_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARLEN" *) output [31:24]hydra_S_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARLOCK" *) output [3:3]hydra_S_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARPROT" *) output [11:9]hydra_S_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARQOS" *) output [15:12]hydra_S_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARREADY" *) input [3:3]hydra_S_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARREGION" *) output [15:12]hydra_S_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARSIZE" *) output [11:9]hydra_S_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S ARVALID" *) output [3:3]hydra_S_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWADDR" *) output [255:192]hydra_S_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWBURST" *) output [7:6]hydra_S_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWCACHE" *) output [15:12]hydra_S_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWID" *) output [19:15]hydra_S_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWLEN" *) output [31:24]hydra_S_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWLOCK" *) output [3:3]hydra_S_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWPROT" *) output [11:9]hydra_S_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWQOS" *) output [15:12]hydra_S_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWREADY" *) input [3:3]hydra_S_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWREGION" *) output [15:12]hydra_S_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWSIZE" *) output [11:9]hydra_S_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S AWVALID" *) output [3:3]hydra_S_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S BID" *) input [19:15]hydra_S_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S BREADY" *) output [3:3]hydra_S_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S BRESP" *) input [7:6]hydra_S_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S BVALID" *) input [3:3]hydra_S_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S RDATA" *) input [255:192]hydra_S_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S RID" *) input [19:15]hydra_S_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S RLAST" *) input [3:3]hydra_S_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S RREADY" *) output [3:3]hydra_S_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S RRESP" *) input [7:6]hydra_S_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S RVALID" *) input [3:3]hydra_S_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S WDATA" *) output [255:192]hydra_S_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S WLAST" *) output [3:3]hydra_S_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S WREADY" *) input [3:3]hydra_S_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S WSTRB" *) output [31:24]hydra_S_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_S WVALID" *) output [3:3]hydra_S_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hydra_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [127:64]hydra_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARBURST" *) input [3:2]hydra_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARCACHE" *) input [7:4]hydra_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARID" *) input [9:5]hydra_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARLEN" *) input [15:8]hydra_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARLOCK" *) input [1:1]hydra_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARPROT" *) input [5:3]hydra_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARQOS" *) input [7:4]hydra_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARREADY" *) output [1:1]hydra_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARSIZE" *) input [5:3]hydra_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m ARVALID" *) input [1:1]hydra_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWADDR" *) input [127:64]hydra_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWBURST" *) input [3:2]hydra_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWCACHE" *) input [7:4]hydra_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWID" *) input [9:5]hydra_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWLEN" *) input [15:8]hydra_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWLOCK" *) input [1:1]hydra_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWPROT" *) input [5:3]hydra_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWQOS" *) input [7:4]hydra_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWREADY" *) output [1:1]hydra_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWSIZE" *) input [5:3]hydra_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m AWVALID" *) input [1:1]hydra_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m BID" *) output [9:5]hydra_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m BREADY" *) input [1:1]hydra_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m BRESP" *) output [3:2]hydra_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m BVALID" *) output [1:1]hydra_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m RDATA" *) output [127:64]hydra_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m RID" *) output [9:5]hydra_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m RLAST" *) output [1:1]hydra_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m RREADY" *) input [1:1]hydra_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m RRESP" *) output [3:2]hydra_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m RVALID" *) output [1:1]hydra_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m WDATA" *) input [127:64]hydra_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m WLAST" *) input [1:1]hydra_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m WREADY" *) output [1:1]hydra_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m WSTRB" *) input [15:8]hydra_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_m WVALID" *) input [1:1]hydra_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_0;
  (* LOCKED = "TRUE" *) (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF hydra_m:SMU_s:ethernet_s:hydra_S:DDR_s:MTMLAddr_s:MTMLAddr_m:XBAR2Addr_s:XBAR2Addr_m:XBAR1Addr_m:XBAR1Addr_s:S00_AXI_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* LOCKED = "TRUE" *) (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

  wire [63:0]S00_AXI_0_1_ARADDR;
  wire [1:0]S00_AXI_0_1_ARBURST;
  wire [3:0]S00_AXI_0_1_ARCACHE;
  wire [4:0]S00_AXI_0_1_ARID;
  wire [7:0]S00_AXI_0_1_ARLEN;
  wire [0:0]S00_AXI_0_1_ARLOCK;
  wire [2:0]S00_AXI_0_1_ARPROT;
  wire [3:0]S00_AXI_0_1_ARQOS;
  wire [0:0]S00_AXI_0_1_ARREADY;
  wire [2:0]S00_AXI_0_1_ARSIZE;
  wire [0:0]S00_AXI_0_1_ARVALID;
  wire [63:0]S00_AXI_0_1_AWADDR;
  wire [1:0]S00_AXI_0_1_AWBURST;
  wire [3:0]S00_AXI_0_1_AWCACHE;
  wire [4:0]S00_AXI_0_1_AWID;
  wire [7:0]S00_AXI_0_1_AWLEN;
  wire [0:0]S00_AXI_0_1_AWLOCK;
  wire [2:0]S00_AXI_0_1_AWPROT;
  wire [3:0]S00_AXI_0_1_AWQOS;
  wire [0:0]S00_AXI_0_1_AWREADY;
  wire [2:0]S00_AXI_0_1_AWSIZE;
  wire [0:0]S00_AXI_0_1_AWVALID;
  wire [4:0]S00_AXI_0_1_BID;
  wire [0:0]S00_AXI_0_1_BREADY;
  wire [1:0]S00_AXI_0_1_BRESP;
  wire [0:0]S00_AXI_0_1_BVALID;
  wire [63:0]S00_AXI_0_1_RDATA;
  wire [4:0]S00_AXI_0_1_RID;
  wire [0:0]S00_AXI_0_1_RLAST;
  wire [0:0]S00_AXI_0_1_RREADY;
  wire [1:0]S00_AXI_0_1_RRESP;
  wire [0:0]S00_AXI_0_1_RVALID;
  wire [63:0]S00_AXI_0_1_WDATA;
  wire [0:0]S00_AXI_0_1_WLAST;
  wire [0:0]S00_AXI_0_1_WREADY;
  wire [7:0]S00_AXI_0_1_WSTRB;
  wire [0:0]S00_AXI_0_1_WVALID;
  wire [63:0]S00_AXI_0_2_ARADDR;
  wire [1:0]S00_AXI_0_2_ARBURST;
  wire [3:0]S00_AXI_0_2_ARCACHE;
  wire [4:0]S00_AXI_0_2_ARID;
  wire [7:0]S00_AXI_0_2_ARLEN;
  wire [0:0]S00_AXI_0_2_ARLOCK;
  wire [2:0]S00_AXI_0_2_ARPROT;
  wire [3:0]S00_AXI_0_2_ARQOS;
  wire [0:0]S00_AXI_0_2_ARREADY;
  wire [2:0]S00_AXI_0_2_ARSIZE;
  wire [0:0]S00_AXI_0_2_ARVALID;
  wire [63:0]S00_AXI_0_2_AWADDR;
  wire [1:0]S00_AXI_0_2_AWBURST;
  wire [3:0]S00_AXI_0_2_AWCACHE;
  wire [4:0]S00_AXI_0_2_AWID;
  wire [7:0]S00_AXI_0_2_AWLEN;
  wire [0:0]S00_AXI_0_2_AWLOCK;
  wire [2:0]S00_AXI_0_2_AWPROT;
  wire [3:0]S00_AXI_0_2_AWQOS;
  wire [0:0]S00_AXI_0_2_AWREADY;
  wire [2:0]S00_AXI_0_2_AWSIZE;
  wire [0:0]S00_AXI_0_2_AWVALID;
  wire [4:0]S00_AXI_0_2_BID;
  wire [0:0]S00_AXI_0_2_BREADY;
  wire [1:0]S00_AXI_0_2_BRESP;
  wire [0:0]S00_AXI_0_2_BVALID;
  wire [63:0]S00_AXI_0_2_RDATA;
  wire [4:0]S00_AXI_0_2_RID;
  wire [0:0]S00_AXI_0_2_RLAST;
  wire [0:0]S00_AXI_0_2_RREADY;
  wire [1:0]S00_AXI_0_2_RRESP;
  wire [0:0]S00_AXI_0_2_RVALID;
  wire [63:0]S00_AXI_0_2_WDATA;
  wire [0:0]S00_AXI_0_2_WLAST;
  wire [0:0]S00_AXI_0_2_WREADY;
  wire [7:0]S00_AXI_0_2_WSTRB;
  wire [0:0]S00_AXI_0_2_WVALID;
  wire [127:64]S01_AXI_0_1_ARADDR;
  wire [3:2]S01_AXI_0_1_ARBURST;
  wire [7:4]S01_AXI_0_1_ARCACHE;
  wire [9:5]S01_AXI_0_1_ARID;
  wire [15:8]S01_AXI_0_1_ARLEN;
  wire [1:1]S01_AXI_0_1_ARLOCK;
  wire [5:3]S01_AXI_0_1_ARPROT;
  wire [7:4]S01_AXI_0_1_ARQOS;
  wire [1:1]S01_AXI_0_1_ARREADY;
  wire [5:3]S01_AXI_0_1_ARSIZE;
  wire [1:1]S01_AXI_0_1_ARVALID;
  wire [127:64]S01_AXI_0_1_AWADDR;
  wire [3:2]S01_AXI_0_1_AWBURST;
  wire [7:4]S01_AXI_0_1_AWCACHE;
  wire [9:5]S01_AXI_0_1_AWID;
  wire [15:8]S01_AXI_0_1_AWLEN;
  wire [1:1]S01_AXI_0_1_AWLOCK;
  wire [5:3]S01_AXI_0_1_AWPROT;
  wire [7:4]S01_AXI_0_1_AWQOS;
  wire [1:1]S01_AXI_0_1_AWREADY;
  wire [5:3]S01_AXI_0_1_AWSIZE;
  wire [1:1]S01_AXI_0_1_AWVALID;
  wire [9:5]S01_AXI_0_1_BID;
  wire [1:1]S01_AXI_0_1_BREADY;
  wire [3:2]S01_AXI_0_1_BRESP;
  wire [1:1]S01_AXI_0_1_BVALID;
  wire [127:64]S01_AXI_0_1_RDATA;
  wire [9:5]S01_AXI_0_1_RID;
  wire [1:1]S01_AXI_0_1_RLAST;
  wire [1:1]S01_AXI_0_1_RREADY;
  wire [3:2]S01_AXI_0_1_RRESP;
  wire [1:1]S01_AXI_0_1_RVALID;
  wire [127:64]S01_AXI_0_1_WDATA;
  wire [1:1]S01_AXI_0_1_WLAST;
  wire [1:1]S01_AXI_0_1_WREADY;
  wire [15:8]S01_AXI_0_1_WSTRB;
  wire [1:1]S01_AXI_0_1_WVALID;
  wire [127:64]S01_AXI_0_2_ARADDR;
  wire [3:2]S01_AXI_0_2_ARBURST;
  wire [7:4]S01_AXI_0_2_ARCACHE;
  wire [9:5]S01_AXI_0_2_ARID;
  wire [15:8]S01_AXI_0_2_ARLEN;
  wire [1:1]S01_AXI_0_2_ARLOCK;
  wire [5:3]S01_AXI_0_2_ARPROT;
  wire [7:4]S01_AXI_0_2_ARQOS;
  wire [1:1]S01_AXI_0_2_ARREADY;
  wire [5:3]S01_AXI_0_2_ARSIZE;
  wire [1:1]S01_AXI_0_2_ARVALID;
  wire [127:64]S01_AXI_0_2_AWADDR;
  wire [3:2]S01_AXI_0_2_AWBURST;
  wire [7:4]S01_AXI_0_2_AWCACHE;
  wire [9:5]S01_AXI_0_2_AWID;
  wire [15:8]S01_AXI_0_2_AWLEN;
  wire [1:1]S01_AXI_0_2_AWLOCK;
  wire [5:3]S01_AXI_0_2_AWPROT;
  wire [7:4]S01_AXI_0_2_AWQOS;
  wire [1:1]S01_AXI_0_2_AWREADY;
  wire [5:3]S01_AXI_0_2_AWSIZE;
  wire [1:1]S01_AXI_0_2_AWVALID;
  wire [9:5]S01_AXI_0_2_BID;
  wire [1:1]S01_AXI_0_2_BREADY;
  wire [3:2]S01_AXI_0_2_BRESP;
  wire [1:1]S01_AXI_0_2_BVALID;
  wire [127:64]S01_AXI_0_2_RDATA;
  wire [9:5]S01_AXI_0_2_RID;
  wire [1:1]S01_AXI_0_2_RLAST;
  wire [1:1]S01_AXI_0_2_RREADY;
  wire [3:2]S01_AXI_0_2_RRESP;
  wire [1:1]S01_AXI_0_2_RVALID;
  wire [127:64]S01_AXI_0_2_WDATA;
  wire [1:1]S01_AXI_0_2_WLAST;
  wire [1:1]S01_AXI_0_2_WREADY;
  wire [15:8]S01_AXI_0_2_WSTRB;
  wire [1:1]S01_AXI_0_2_WVALID;
  wire [191:128]S02_AXI_0_1_ARADDR;
  wire [5:4]S02_AXI_0_1_ARBURST;
  wire [11:8]S02_AXI_0_1_ARCACHE;
  wire [14:10]S02_AXI_0_1_ARID;
  wire [23:16]S02_AXI_0_1_ARLEN;
  wire [2:2]S02_AXI_0_1_ARLOCK;
  wire [8:6]S02_AXI_0_1_ARPROT;
  wire [11:8]S02_AXI_0_1_ARQOS;
  wire [2:2]S02_AXI_0_1_ARREADY;
  wire [8:6]S02_AXI_0_1_ARSIZE;
  wire [2:2]S02_AXI_0_1_ARVALID;
  wire [191:128]S02_AXI_0_1_AWADDR;
  wire [5:4]S02_AXI_0_1_AWBURST;
  wire [11:8]S02_AXI_0_1_AWCACHE;
  wire [14:10]S02_AXI_0_1_AWID;
  wire [23:16]S02_AXI_0_1_AWLEN;
  wire [2:2]S02_AXI_0_1_AWLOCK;
  wire [8:6]S02_AXI_0_1_AWPROT;
  wire [11:8]S02_AXI_0_1_AWQOS;
  wire [2:2]S02_AXI_0_1_AWREADY;
  wire [8:6]S02_AXI_0_1_AWSIZE;
  wire [2:2]S02_AXI_0_1_AWVALID;
  wire [14:10]S02_AXI_0_1_BID;
  wire [2:2]S02_AXI_0_1_BREADY;
  wire [5:4]S02_AXI_0_1_BRESP;
  wire [2:2]S02_AXI_0_1_BVALID;
  wire [191:128]S02_AXI_0_1_RDATA;
  wire [14:10]S02_AXI_0_1_RID;
  wire [2:2]S02_AXI_0_1_RLAST;
  wire [2:2]S02_AXI_0_1_RREADY;
  wire [5:4]S02_AXI_0_1_RRESP;
  wire [2:2]S02_AXI_0_1_RVALID;
  wire [191:128]S02_AXI_0_1_WDATA;
  wire [2:2]S02_AXI_0_1_WLAST;
  wire [2:2]S02_AXI_0_1_WREADY;
  wire [23:16]S02_AXI_0_1_WSTRB;
  wire [2:2]S02_AXI_0_1_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [7:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [63:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_ARCACHE;
  wire [4:0]axi_crossbar_0_M00_AXI_ARID;
  wire [7:0]axi_crossbar_0_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_ARPROT;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_0_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_AWCACHE;
  wire [4:0]axi_crossbar_0_M00_AXI_AWID;
  wire [7:0]axi_crossbar_0_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_AWPROT;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_0_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M00_AXI_BID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M00_AXI_RID;
  wire axi_crossbar_0_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_WLAST;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [7:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [127:64]axi_crossbar_0_M01_AXI_ARADDR;
  wire [3:2]axi_crossbar_0_M01_AXI_ARBURST;
  wire [7:4]axi_crossbar_0_M01_AXI_ARCACHE;
  wire [9:5]axi_crossbar_0_M01_AXI_ARID;
  wire [15:8]axi_crossbar_0_M01_AXI_ARLEN;
  wire [1:1]axi_crossbar_0_M01_AXI_ARLOCK;
  wire [5:3]axi_crossbar_0_M01_AXI_ARPROT;
  wire [7:4]axi_crossbar_0_M01_AXI_ARQOS;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_ARREGION;
  wire [5:3]axi_crossbar_0_M01_AXI_ARSIZE;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [127:64]axi_crossbar_0_M01_AXI_AWADDR;
  wire [3:2]axi_crossbar_0_M01_AXI_AWBURST;
  wire [7:4]axi_crossbar_0_M01_AXI_AWCACHE;
  wire [9:5]axi_crossbar_0_M01_AXI_AWID;
  wire [15:8]axi_crossbar_0_M01_AXI_AWLEN;
  wire [1:1]axi_crossbar_0_M01_AXI_AWLOCK;
  wire [5:3]axi_crossbar_0_M01_AXI_AWPROT;
  wire [7:4]axi_crossbar_0_M01_AXI_AWQOS;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_AWREGION;
  wire [5:3]axi_crossbar_0_M01_AXI_AWSIZE;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M01_AXI_BID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M01_AXI_RID;
  wire axi_crossbar_0_M01_AXI_RLAST;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [127:64]axi_crossbar_0_M01_AXI_WDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_WLAST;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [15:8]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [191:128]axi_crossbar_0_M02_AXI_ARADDR;
  wire [5:4]axi_crossbar_0_M02_AXI_ARBURST;
  wire [11:8]axi_crossbar_0_M02_AXI_ARCACHE;
  wire [14:10]axi_crossbar_0_M02_AXI_ARID;
  wire [23:16]axi_crossbar_0_M02_AXI_ARLEN;
  wire [2:2]axi_crossbar_0_M02_AXI_ARLOCK;
  wire [8:6]axi_crossbar_0_M02_AXI_ARPROT;
  wire [11:8]axi_crossbar_0_M02_AXI_ARQOS;
  wire [2:2]axi_crossbar_0_M02_AXI_ARREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_ARREGION;
  wire [8:6]axi_crossbar_0_M02_AXI_ARSIZE;
  wire [2:2]axi_crossbar_0_M02_AXI_ARVALID;
  wire [191:128]axi_crossbar_0_M02_AXI_AWADDR;
  wire [5:4]axi_crossbar_0_M02_AXI_AWBURST;
  wire [11:8]axi_crossbar_0_M02_AXI_AWCACHE;
  wire [14:10]axi_crossbar_0_M02_AXI_AWID;
  wire [23:16]axi_crossbar_0_M02_AXI_AWLEN;
  wire [2:2]axi_crossbar_0_M02_AXI_AWLOCK;
  wire [8:6]axi_crossbar_0_M02_AXI_AWPROT;
  wire [11:8]axi_crossbar_0_M02_AXI_AWQOS;
  wire [2:2]axi_crossbar_0_M02_AXI_AWREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_AWREGION;
  wire [8:6]axi_crossbar_0_M02_AXI_AWSIZE;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [14:10]axi_crossbar_0_M02_AXI_BID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [5:4]axi_crossbar_0_M02_AXI_BRESP;
  wire [2:2]axi_crossbar_0_M02_AXI_BVALID;
  wire [191:128]axi_crossbar_0_M02_AXI_RDATA;
  wire [14:10]axi_crossbar_0_M02_AXI_RID;
  wire [2:2]axi_crossbar_0_M02_AXI_RLAST;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [5:4]axi_crossbar_0_M02_AXI_RRESP;
  wire [2:2]axi_crossbar_0_M02_AXI_RVALID;
  wire [191:128]axi_crossbar_0_M02_AXI_WDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_WLAST;
  wire [2:2]axi_crossbar_0_M02_AXI_WREADY;
  wire [23:16]axi_crossbar_0_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_ARADDR;
  wire [7:6]axi_crossbar_0_M03_AXI_ARBURST;
  wire [15:12]axi_crossbar_0_M03_AXI_ARCACHE;
  wire [19:15]axi_crossbar_0_M03_AXI_ARID;
  wire [31:24]axi_crossbar_0_M03_AXI_ARLEN;
  wire [3:3]axi_crossbar_0_M03_AXI_ARLOCK;
  wire [11:9]axi_crossbar_0_M03_AXI_ARPROT;
  wire [15:12]axi_crossbar_0_M03_AXI_ARQOS;
  wire [3:3]axi_crossbar_0_M03_AXI_ARREADY;
  wire [15:12]axi_crossbar_0_M03_AXI_ARREGION;
  wire [11:9]axi_crossbar_0_M03_AXI_ARSIZE;
  wire [3:3]axi_crossbar_0_M03_AXI_ARVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_AWADDR;
  wire [7:6]axi_crossbar_0_M03_AXI_AWBURST;
  wire [15:12]axi_crossbar_0_M03_AXI_AWCACHE;
  wire [19:15]axi_crossbar_0_M03_AXI_AWID;
  wire [31:24]axi_crossbar_0_M03_AXI_AWLEN;
  wire [3:3]axi_crossbar_0_M03_AXI_AWLOCK;
  wire [11:9]axi_crossbar_0_M03_AXI_AWPROT;
  wire [15:12]axi_crossbar_0_M03_AXI_AWQOS;
  wire [3:3]axi_crossbar_0_M03_AXI_AWREADY;
  wire [15:12]axi_crossbar_0_M03_AXI_AWREGION;
  wire [11:9]axi_crossbar_0_M03_AXI_AWSIZE;
  wire [3:3]axi_crossbar_0_M03_AXI_AWVALID;
  wire [19:15]axi_crossbar_0_M03_AXI_BID;
  wire [3:3]axi_crossbar_0_M03_AXI_BREADY;
  wire [7:6]axi_crossbar_0_M03_AXI_BRESP;
  wire [3:3]axi_crossbar_0_M03_AXI_BVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_RDATA;
  wire [19:15]axi_crossbar_0_M03_AXI_RID;
  wire [3:3]axi_crossbar_0_M03_AXI_RLAST;
  wire [3:3]axi_crossbar_0_M03_AXI_RREADY;
  wire [7:6]axi_crossbar_0_M03_AXI_RRESP;
  wire [3:3]axi_crossbar_0_M03_AXI_RVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_WDATA;
  wire [3:3]axi_crossbar_0_M03_AXI_WLAST;
  wire [3:3]axi_crossbar_0_M03_AXI_WREADY;
  wire [31:24]axi_crossbar_0_M03_AXI_WSTRB;
  wire [3:3]axi_crossbar_0_M03_AXI_WVALID;
  wire [319:256]axi_crossbar_0_M04_AXI_ARADDR;
  wire [9:8]axi_crossbar_0_M04_AXI_ARBURST;
  wire [19:16]axi_crossbar_0_M04_AXI_ARCACHE;
  wire [24:20]axi_crossbar_0_M04_AXI_ARID;
  wire [39:32]axi_crossbar_0_M04_AXI_ARLEN;
  wire [4:4]axi_crossbar_0_M04_AXI_ARLOCK;
  wire [14:12]axi_crossbar_0_M04_AXI_ARPROT;
  wire [19:16]axi_crossbar_0_M04_AXI_ARQOS;
  wire [4:4]axi_crossbar_0_M04_AXI_ARREADY;
  wire [19:16]axi_crossbar_0_M04_AXI_ARREGION;
  wire [14:12]axi_crossbar_0_M04_AXI_ARSIZE;
  wire [4:4]axi_crossbar_0_M04_AXI_ARVALID;
  wire [319:256]axi_crossbar_0_M04_AXI_AWADDR;
  wire [9:8]axi_crossbar_0_M04_AXI_AWBURST;
  wire [19:16]axi_crossbar_0_M04_AXI_AWCACHE;
  wire [24:20]axi_crossbar_0_M04_AXI_AWID;
  wire [39:32]axi_crossbar_0_M04_AXI_AWLEN;
  wire [4:4]axi_crossbar_0_M04_AXI_AWLOCK;
  wire [14:12]axi_crossbar_0_M04_AXI_AWPROT;
  wire [19:16]axi_crossbar_0_M04_AXI_AWQOS;
  wire [4:4]axi_crossbar_0_M04_AXI_AWREADY;
  wire [19:16]axi_crossbar_0_M04_AXI_AWREGION;
  wire [14:12]axi_crossbar_0_M04_AXI_AWSIZE;
  wire [4:4]axi_crossbar_0_M04_AXI_AWVALID;
  wire [24:20]axi_crossbar_0_M04_AXI_BID;
  wire [4:4]axi_crossbar_0_M04_AXI_BREADY;
  wire [9:8]axi_crossbar_0_M04_AXI_BRESP;
  wire [4:4]axi_crossbar_0_M04_AXI_BVALID;
  wire [319:256]axi_crossbar_0_M04_AXI_RDATA;
  wire [24:20]axi_crossbar_0_M04_AXI_RID;
  wire [4:4]axi_crossbar_0_M04_AXI_RLAST;
  wire [4:4]axi_crossbar_0_M04_AXI_RREADY;
  wire [9:8]axi_crossbar_0_M04_AXI_RRESP;
  wire [4:4]axi_crossbar_0_M04_AXI_RVALID;
  wire [319:256]axi_crossbar_0_M04_AXI_WDATA;
  wire [4:4]axi_crossbar_0_M04_AXI_WLAST;
  wire [4:4]axi_crossbar_0_M04_AXI_WREADY;
  wire [39:32]axi_crossbar_0_M04_AXI_WSTRB;
  wire [4:4]axi_crossbar_0_M04_AXI_WVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_1_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_1_M00_AXI_ARCACHE;
  wire [4:0]axi_crossbar_1_M00_AXI_ARID;
  wire [7:0]axi_crossbar_1_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_1_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_1_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_1_M00_AXI_ARQOS;
  wire [0:0]axi_crossbar_1_M00_AXI_ARREADY;
  wire [3:0]axi_crossbar_1_M00_AXI_ARREGION;
  wire [2:0]axi_crossbar_1_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_1_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_1_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_1_M00_AXI_AWCACHE;
  wire [4:0]axi_crossbar_1_M00_AXI_AWID;
  wire [7:0]axi_crossbar_1_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_1_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_1_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_1_M00_AXI_AWQOS;
  wire [0:0]axi_crossbar_1_M00_AXI_AWREADY;
  wire [3:0]axi_crossbar_1_M00_AXI_AWREGION;
  wire [2:0]axi_crossbar_1_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_1_M00_AXI_AWVALID;
  wire [4:0]axi_crossbar_1_M00_AXI_BID;
  wire [0:0]axi_crossbar_1_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_BRESP;
  wire [0:0]axi_crossbar_1_M00_AXI_BVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_RDATA;
  wire [4:0]axi_crossbar_1_M00_AXI_RID;
  wire [0:0]axi_crossbar_1_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_1_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_RRESP;
  wire [0:0]axi_crossbar_1_M00_AXI_RVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_1_M00_AXI_WLAST;
  wire [0:0]axi_crossbar_1_M00_AXI_WREADY;
  wire [7:0]axi_crossbar_1_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_1_M00_AXI_WVALID;
  wire [127:64]axi_crossbar_1_M01_AXI_ARADDR;
  wire [3:2]axi_crossbar_1_M01_AXI_ARBURST;
  wire [7:4]axi_crossbar_1_M01_AXI_ARCACHE;
  wire [9:5]axi_crossbar_1_M01_AXI_ARID;
  wire [15:8]axi_crossbar_1_M01_AXI_ARLEN;
  wire [1:1]axi_crossbar_1_M01_AXI_ARLOCK;
  wire [5:3]axi_crossbar_1_M01_AXI_ARPROT;
  wire [7:4]axi_crossbar_1_M01_AXI_ARQOS;
  wire [1:1]axi_crossbar_1_M01_AXI_ARREADY;
  wire [7:4]axi_crossbar_1_M01_AXI_ARREGION;
  wire [5:3]axi_crossbar_1_M01_AXI_ARSIZE;
  wire [1:1]axi_crossbar_1_M01_AXI_ARVALID;
  wire [127:64]axi_crossbar_1_M01_AXI_AWADDR;
  wire [3:2]axi_crossbar_1_M01_AXI_AWBURST;
  wire [7:4]axi_crossbar_1_M01_AXI_AWCACHE;
  wire [9:5]axi_crossbar_1_M01_AXI_AWID;
  wire [15:8]axi_crossbar_1_M01_AXI_AWLEN;
  wire [1:1]axi_crossbar_1_M01_AXI_AWLOCK;
  wire [5:3]axi_crossbar_1_M01_AXI_AWPROT;
  wire [7:4]axi_crossbar_1_M01_AXI_AWQOS;
  wire [1:1]axi_crossbar_1_M01_AXI_AWREADY;
  wire [7:4]axi_crossbar_1_M01_AXI_AWREGION;
  wire [5:3]axi_crossbar_1_M01_AXI_AWSIZE;
  wire [1:1]axi_crossbar_1_M01_AXI_AWVALID;
  wire [9:5]axi_crossbar_1_M01_AXI_BID;
  wire [1:1]axi_crossbar_1_M01_AXI_BREADY;
  wire [3:2]axi_crossbar_1_M01_AXI_BRESP;
  wire [1:1]axi_crossbar_1_M01_AXI_BVALID;
  wire [127:64]axi_crossbar_1_M01_AXI_RDATA;
  wire [9:5]axi_crossbar_1_M01_AXI_RID;
  wire [1:1]axi_crossbar_1_M01_AXI_RLAST;
  wire [1:1]axi_crossbar_1_M01_AXI_RREADY;
  wire [3:2]axi_crossbar_1_M01_AXI_RRESP;
  wire [1:1]axi_crossbar_1_M01_AXI_RVALID;
  wire [127:64]axi_crossbar_1_M01_AXI_WDATA;
  wire [1:1]axi_crossbar_1_M01_AXI_WLAST;
  wire [1:1]axi_crossbar_1_M01_AXI_WREADY;
  wire [15:8]axi_crossbar_1_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_1_M01_AXI_WVALID;
  wire [191:128]axi_crossbar_1_M02_AXI_ARADDR;
  wire [5:4]axi_crossbar_1_M02_AXI_ARBURST;
  wire [11:8]axi_crossbar_1_M02_AXI_ARCACHE;
  wire [14:10]axi_crossbar_1_M02_AXI_ARID;
  wire [23:16]axi_crossbar_1_M02_AXI_ARLEN;
  wire [2:2]axi_crossbar_1_M02_AXI_ARLOCK;
  wire [8:6]axi_crossbar_1_M02_AXI_ARPROT;
  wire [11:8]axi_crossbar_1_M02_AXI_ARQOS;
  wire [2:2]axi_crossbar_1_M02_AXI_ARREADY;
  wire [11:8]axi_crossbar_1_M02_AXI_ARREGION;
  wire [8:6]axi_crossbar_1_M02_AXI_ARSIZE;
  wire [2:2]axi_crossbar_1_M02_AXI_ARVALID;
  wire [191:128]axi_crossbar_1_M02_AXI_AWADDR;
  wire [5:4]axi_crossbar_1_M02_AXI_AWBURST;
  wire [11:8]axi_crossbar_1_M02_AXI_AWCACHE;
  wire [14:10]axi_crossbar_1_M02_AXI_AWID;
  wire [23:16]axi_crossbar_1_M02_AXI_AWLEN;
  wire [2:2]axi_crossbar_1_M02_AXI_AWLOCK;
  wire [8:6]axi_crossbar_1_M02_AXI_AWPROT;
  wire [11:8]axi_crossbar_1_M02_AXI_AWQOS;
  wire [2:2]axi_crossbar_1_M02_AXI_AWREADY;
  wire [11:8]axi_crossbar_1_M02_AXI_AWREGION;
  wire [8:6]axi_crossbar_1_M02_AXI_AWSIZE;
  wire [2:2]axi_crossbar_1_M02_AXI_AWVALID;
  wire [14:10]axi_crossbar_1_M02_AXI_BID;
  wire [2:2]axi_crossbar_1_M02_AXI_BREADY;
  wire [5:4]axi_crossbar_1_M02_AXI_BRESP;
  wire [2:2]axi_crossbar_1_M02_AXI_BVALID;
  wire [191:128]axi_crossbar_1_M02_AXI_RDATA;
  wire [14:10]axi_crossbar_1_M02_AXI_RID;
  wire [2:2]axi_crossbar_1_M02_AXI_RLAST;
  wire [2:2]axi_crossbar_1_M02_AXI_RREADY;
  wire [5:4]axi_crossbar_1_M02_AXI_RRESP;
  wire [2:2]axi_crossbar_1_M02_AXI_RVALID;
  wire [191:128]axi_crossbar_1_M02_AXI_WDATA;
  wire [2:2]axi_crossbar_1_M02_AXI_WLAST;
  wire [2:2]axi_crossbar_1_M02_AXI_WREADY;
  wire [23:16]axi_crossbar_1_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_1_M02_AXI_WVALID;
  wire [255:192]axi_crossbar_1_M03_AXI_ARADDR;
  wire [7:6]axi_crossbar_1_M03_AXI_ARBURST;
  wire [15:12]axi_crossbar_1_M03_AXI_ARCACHE;
  wire [19:15]axi_crossbar_1_M03_AXI_ARID;
  wire [31:24]axi_crossbar_1_M03_AXI_ARLEN;
  wire [3:3]axi_crossbar_1_M03_AXI_ARLOCK;
  wire [11:9]axi_crossbar_1_M03_AXI_ARPROT;
  wire [15:12]axi_crossbar_1_M03_AXI_ARQOS;
  wire [3:3]axi_crossbar_1_M03_AXI_ARREADY;
  wire [15:12]axi_crossbar_1_M03_AXI_ARREGION;
  wire [11:9]axi_crossbar_1_M03_AXI_ARSIZE;
  wire [3:3]axi_crossbar_1_M03_AXI_ARVALID;
  wire [255:192]axi_crossbar_1_M03_AXI_AWADDR;
  wire [7:6]axi_crossbar_1_M03_AXI_AWBURST;
  wire [15:12]axi_crossbar_1_M03_AXI_AWCACHE;
  wire [19:15]axi_crossbar_1_M03_AXI_AWID;
  wire [31:24]axi_crossbar_1_M03_AXI_AWLEN;
  wire [3:3]axi_crossbar_1_M03_AXI_AWLOCK;
  wire [11:9]axi_crossbar_1_M03_AXI_AWPROT;
  wire [15:12]axi_crossbar_1_M03_AXI_AWQOS;
  wire [3:3]axi_crossbar_1_M03_AXI_AWREADY;
  wire [15:12]axi_crossbar_1_M03_AXI_AWREGION;
  wire [11:9]axi_crossbar_1_M03_AXI_AWSIZE;
  wire [3:3]axi_crossbar_1_M03_AXI_AWVALID;
  wire [19:15]axi_crossbar_1_M03_AXI_BID;
  wire [3:3]axi_crossbar_1_M03_AXI_BREADY;
  wire [7:6]axi_crossbar_1_M03_AXI_BRESP;
  wire [3:3]axi_crossbar_1_M03_AXI_BVALID;
  wire [255:192]axi_crossbar_1_M03_AXI_RDATA;
  wire [19:15]axi_crossbar_1_M03_AXI_RID;
  wire [3:3]axi_crossbar_1_M03_AXI_RLAST;
  wire [3:3]axi_crossbar_1_M03_AXI_RREADY;
  wire [7:6]axi_crossbar_1_M03_AXI_RRESP;
  wire [3:3]axi_crossbar_1_M03_AXI_RVALID;
  wire [255:192]axi_crossbar_1_M03_AXI_WDATA;
  wire [3:3]axi_crossbar_1_M03_AXI_WLAST;
  wire [3:3]axi_crossbar_1_M03_AXI_WREADY;
  wire [31:24]axi_crossbar_1_M03_AXI_WSTRB;
  wire [3:3]axi_crossbar_1_M03_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARQOS;
  wire axi_dwidth_converter_0_M_AXI_ARREADY;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARREGION;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARSIZE;
  wire axi_dwidth_converter_0_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWQOS;
  wire axi_dwidth_converter_0_M_AXI_AWREADY;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWREGION;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWSIZE;
  wire axi_dwidth_converter_0_M_AXI_AWVALID;
  wire axi_dwidth_converter_0_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_BRESP;
  wire axi_dwidth_converter_0_M_AXI_BVALID;
  wire [31:0]axi_dwidth_converter_0_M_AXI_RDATA;
  wire axi_dwidth_converter_0_M_AXI_RLAST;
  wire axi_dwidth_converter_0_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_RRESP;
  wire axi_dwidth_converter_0_M_AXI_RVALID;
  wire [31:0]axi_dwidth_converter_0_M_AXI_WDATA;
  wire axi_dwidth_converter_0_M_AXI_WLAST;
  wire axi_dwidth_converter_0_M_AXI_WREADY;
  wire [3:0]axi_dwidth_converter_0_M_AXI_WSTRB;
  wire axi_dwidth_converter_0_M_AXI_WVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;
  wire [19:0]NLW_axi_crossbar_0_m_axi_arqos_UNCONNECTED;
  wire [19:0]NLW_axi_crossbar_0_m_axi_arregion_UNCONNECTED;
  wire [19:0]NLW_axi_crossbar_0_m_axi_awqos_UNCONNECTED;
  wire [19:0]NLW_axi_crossbar_0_m_axi_awregion_UNCONNECTED;

  assign DDR_s_araddr[63:0] = axi_crossbar_1_M00_AXI_ARADDR;
  assign DDR_s_arburst[1:0] = axi_crossbar_1_M00_AXI_ARBURST;
  assign DDR_s_arcache[3:0] = axi_crossbar_1_M00_AXI_ARCACHE;
  assign DDR_s_arid[4:0] = axi_crossbar_1_M00_AXI_ARID;
  assign DDR_s_arlen[7:0] = axi_crossbar_1_M00_AXI_ARLEN;
  assign DDR_s_arlock[0] = axi_crossbar_1_M00_AXI_ARLOCK;
  assign DDR_s_arprot[2:0] = axi_crossbar_1_M00_AXI_ARPROT;
  assign DDR_s_arqos[3:0] = axi_crossbar_1_M00_AXI_ARQOS;
  assign DDR_s_arregion[3:0] = axi_crossbar_1_M00_AXI_ARREGION;
  assign DDR_s_arsize[2:0] = axi_crossbar_1_M00_AXI_ARSIZE;
  assign DDR_s_arvalid[0] = axi_crossbar_1_M00_AXI_ARVALID;
  assign DDR_s_awaddr[63:0] = axi_crossbar_1_M00_AXI_AWADDR;
  assign DDR_s_awburst[1:0] = axi_crossbar_1_M00_AXI_AWBURST;
  assign DDR_s_awcache[3:0] = axi_crossbar_1_M00_AXI_AWCACHE;
  assign DDR_s_awid[4:0] = axi_crossbar_1_M00_AXI_AWID;
  assign DDR_s_awlen[7:0] = axi_crossbar_1_M00_AXI_AWLEN;
  assign DDR_s_awlock[0] = axi_crossbar_1_M00_AXI_AWLOCK;
  assign DDR_s_awprot[2:0] = axi_crossbar_1_M00_AXI_AWPROT;
  assign DDR_s_awqos[3:0] = axi_crossbar_1_M00_AXI_AWQOS;
  assign DDR_s_awregion[3:0] = axi_crossbar_1_M00_AXI_AWREGION;
  assign DDR_s_awsize[2:0] = axi_crossbar_1_M00_AXI_AWSIZE;
  assign DDR_s_awvalid[0] = axi_crossbar_1_M00_AXI_AWVALID;
  assign DDR_s_bready[0] = axi_crossbar_1_M00_AXI_BREADY;
  assign DDR_s_rready[0] = axi_crossbar_1_M00_AXI_RREADY;
  assign DDR_s_wdata[63:0] = axi_crossbar_1_M00_AXI_WDATA;
  assign DDR_s_wlast[0] = axi_crossbar_1_M00_AXI_WLAST;
  assign DDR_s_wstrb[7:0] = axi_crossbar_1_M00_AXI_WSTRB;
  assign DDR_s_wvalid[0] = axi_crossbar_1_M00_AXI_WVALID;
  assign MTMLAddr_m_arready[0] = S00_AXI_0_1_ARREADY;
  assign MTMLAddr_m_awready[0] = S00_AXI_0_1_AWREADY;
  assign MTMLAddr_m_bid[4:0] = S00_AXI_0_1_BID;
  assign MTMLAddr_m_bresp[1:0] = S00_AXI_0_1_BRESP;
  assign MTMLAddr_m_bvalid[0] = S00_AXI_0_1_BVALID;
  assign MTMLAddr_m_rdata[63:0] = S00_AXI_0_1_RDATA;
  assign MTMLAddr_m_rid[4:0] = S00_AXI_0_1_RID;
  assign MTMLAddr_m_rlast[0] = S00_AXI_0_1_RLAST;
  assign MTMLAddr_m_rresp[1:0] = S00_AXI_0_1_RRESP;
  assign MTMLAddr_m_rvalid[0] = S00_AXI_0_1_RVALID;
  assign MTMLAddr_m_wready[0] = S00_AXI_0_1_WREADY;
  assign MTMLAddr_s_araddr[127:64] = axi_crossbar_1_M01_AXI_ARADDR;
  assign MTMLAddr_s_arburst[3:2] = axi_crossbar_1_M01_AXI_ARBURST;
  assign MTMLAddr_s_arcache[7:4] = axi_crossbar_1_M01_AXI_ARCACHE;
  assign MTMLAddr_s_arid[9:5] = axi_crossbar_1_M01_AXI_ARID;
  assign MTMLAddr_s_arlen[15:8] = axi_crossbar_1_M01_AXI_ARLEN;
  assign MTMLAddr_s_arlock[1] = axi_crossbar_1_M01_AXI_ARLOCK;
  assign MTMLAddr_s_arprot[5:3] = axi_crossbar_1_M01_AXI_ARPROT;
  assign MTMLAddr_s_arqos[7:4] = axi_crossbar_1_M01_AXI_ARQOS;
  assign MTMLAddr_s_arregion[7:4] = axi_crossbar_1_M01_AXI_ARREGION;
  assign MTMLAddr_s_arsize[5:3] = axi_crossbar_1_M01_AXI_ARSIZE;
  assign MTMLAddr_s_arvalid[1] = axi_crossbar_1_M01_AXI_ARVALID;
  assign MTMLAddr_s_awaddr[127:64] = axi_crossbar_1_M01_AXI_AWADDR;
  assign MTMLAddr_s_awburst[3:2] = axi_crossbar_1_M01_AXI_AWBURST;
  assign MTMLAddr_s_awcache[7:4] = axi_crossbar_1_M01_AXI_AWCACHE;
  assign MTMLAddr_s_awid[9:5] = axi_crossbar_1_M01_AXI_AWID;
  assign MTMLAddr_s_awlen[15:8] = axi_crossbar_1_M01_AXI_AWLEN;
  assign MTMLAddr_s_awlock[1] = axi_crossbar_1_M01_AXI_AWLOCK;
  assign MTMLAddr_s_awprot[5:3] = axi_crossbar_1_M01_AXI_AWPROT;
  assign MTMLAddr_s_awqos[7:4] = axi_crossbar_1_M01_AXI_AWQOS;
  assign MTMLAddr_s_awregion[7:4] = axi_crossbar_1_M01_AXI_AWREGION;
  assign MTMLAddr_s_awsize[5:3] = axi_crossbar_1_M01_AXI_AWSIZE;
  assign MTMLAddr_s_awvalid[1] = axi_crossbar_1_M01_AXI_AWVALID;
  assign MTMLAddr_s_bready[1] = axi_crossbar_1_M01_AXI_BREADY;
  assign MTMLAddr_s_rready[1] = axi_crossbar_1_M01_AXI_RREADY;
  assign MTMLAddr_s_wdata[127:64] = axi_crossbar_1_M01_AXI_WDATA;
  assign MTMLAddr_s_wlast[1] = axi_crossbar_1_M01_AXI_WLAST;
  assign MTMLAddr_s_wstrb[15:8] = axi_crossbar_1_M01_AXI_WSTRB;
  assign MTMLAddr_s_wvalid[1] = axi_crossbar_1_M01_AXI_WVALID;
  assign S00_AXI_0_1_ARADDR = MTMLAddr_m_araddr[63:0];
  assign S00_AXI_0_1_ARBURST = MTMLAddr_m_arburst[1:0];
  assign S00_AXI_0_1_ARCACHE = MTMLAddr_m_arcache[3:0];
  assign S00_AXI_0_1_ARID = MTMLAddr_m_arid[4:0];
  assign S00_AXI_0_1_ARLEN = MTMLAddr_m_arlen[7:0];
  assign S00_AXI_0_1_ARLOCK = MTMLAddr_m_arlock[0];
  assign S00_AXI_0_1_ARPROT = MTMLAddr_m_arprot[2:0];
  assign S00_AXI_0_1_ARQOS = MTMLAddr_m_arqos[3:0];
  assign S00_AXI_0_1_ARSIZE = MTMLAddr_m_arsize[2:0];
  assign S00_AXI_0_1_ARVALID = MTMLAddr_m_arvalid[0];
  assign S00_AXI_0_1_AWADDR = MTMLAddr_m_awaddr[63:0];
  assign S00_AXI_0_1_AWBURST = MTMLAddr_m_awburst[1:0];
  assign S00_AXI_0_1_AWCACHE = MTMLAddr_m_awcache[3:0];
  assign S00_AXI_0_1_AWID = MTMLAddr_m_awid[4:0];
  assign S00_AXI_0_1_AWLEN = MTMLAddr_m_awlen[7:0];
  assign S00_AXI_0_1_AWLOCK = MTMLAddr_m_awlock[0];
  assign S00_AXI_0_1_AWPROT = MTMLAddr_m_awprot[2:0];
  assign S00_AXI_0_1_AWQOS = MTMLAddr_m_awqos[3:0];
  assign S00_AXI_0_1_AWSIZE = MTMLAddr_m_awsize[2:0];
  assign S00_AXI_0_1_AWVALID = MTMLAddr_m_awvalid[0];
  assign S00_AXI_0_1_BREADY = MTMLAddr_m_bready[0];
  assign S00_AXI_0_1_RREADY = MTMLAddr_m_rready[0];
  assign S00_AXI_0_1_WDATA = MTMLAddr_m_wdata[63:0];
  assign S00_AXI_0_1_WLAST = MTMLAddr_m_wlast[0];
  assign S00_AXI_0_1_WSTRB = MTMLAddr_m_wstrb[7:0];
  assign S00_AXI_0_1_WVALID = MTMLAddr_m_wvalid[0];
  assign S00_AXI_0_2_ARADDR = S00_AXI_0_araddr[63:0];
  assign S00_AXI_0_2_ARBURST = S00_AXI_0_arburst[1:0];
  assign S00_AXI_0_2_ARCACHE = S00_AXI_0_arcache[3:0];
  assign S00_AXI_0_2_ARID = S00_AXI_0_arid[4:0];
  assign S00_AXI_0_2_ARLEN = S00_AXI_0_arlen[7:0];
  assign S00_AXI_0_2_ARLOCK = S00_AXI_0_arlock[0];
  assign S00_AXI_0_2_ARPROT = S00_AXI_0_arprot[2:0];
  assign S00_AXI_0_2_ARQOS = S00_AXI_0_arqos[3:0];
  assign S00_AXI_0_2_ARSIZE = S00_AXI_0_arsize[2:0];
  assign S00_AXI_0_2_ARVALID = S00_AXI_0_arvalid[0];
  assign S00_AXI_0_2_AWADDR = S00_AXI_0_awaddr[63:0];
  assign S00_AXI_0_2_AWBURST = S00_AXI_0_awburst[1:0];
  assign S00_AXI_0_2_AWCACHE = S00_AXI_0_awcache[3:0];
  assign S00_AXI_0_2_AWID = S00_AXI_0_awid[4:0];
  assign S00_AXI_0_2_AWLEN = S00_AXI_0_awlen[7:0];
  assign S00_AXI_0_2_AWLOCK = S00_AXI_0_awlock[0];
  assign S00_AXI_0_2_AWPROT = S00_AXI_0_awprot[2:0];
  assign S00_AXI_0_2_AWQOS = S00_AXI_0_awqos[3:0];
  assign S00_AXI_0_2_AWSIZE = S00_AXI_0_awsize[2:0];
  assign S00_AXI_0_2_AWVALID = S00_AXI_0_awvalid[0];
  assign S00_AXI_0_2_BREADY = S00_AXI_0_bready[0];
  assign S00_AXI_0_2_RREADY = S00_AXI_0_rready[0];
  assign S00_AXI_0_2_WDATA = S00_AXI_0_wdata[63:0];
  assign S00_AXI_0_2_WLAST = S00_AXI_0_wlast[0];
  assign S00_AXI_0_2_WSTRB = S00_AXI_0_wstrb[7:0];
  assign S00_AXI_0_2_WVALID = S00_AXI_0_wvalid[0];
  assign S00_AXI_0_arready[0] = S00_AXI_0_2_ARREADY;
  assign S00_AXI_0_awready[0] = S00_AXI_0_2_AWREADY;
  assign S00_AXI_0_bid[4:0] = S00_AXI_0_2_BID;
  assign S00_AXI_0_bresp[1:0] = S00_AXI_0_2_BRESP;
  assign S00_AXI_0_bvalid[0] = S00_AXI_0_2_BVALID;
  assign S00_AXI_0_rdata[63:0] = S00_AXI_0_2_RDATA;
  assign S00_AXI_0_rid[4:0] = S00_AXI_0_2_RID;
  assign S00_AXI_0_rlast[0] = S00_AXI_0_2_RLAST;
  assign S00_AXI_0_rresp[1:0] = S00_AXI_0_2_RRESP;
  assign S00_AXI_0_rvalid[0] = S00_AXI_0_2_RVALID;
  assign S00_AXI_0_wready[0] = S00_AXI_0_2_WREADY;
  assign S01_AXI_0_1_ARADDR = hydra_m_araddr[127:64];
  assign S01_AXI_0_1_ARBURST = hydra_m_arburst[3:2];
  assign S01_AXI_0_1_ARCACHE = hydra_m_arcache[7:4];
  assign S01_AXI_0_1_ARID = hydra_m_arid[9:5];
  assign S01_AXI_0_1_ARLEN = hydra_m_arlen[15:8];
  assign S01_AXI_0_1_ARLOCK = hydra_m_arlock[1];
  assign S01_AXI_0_1_ARPROT = hydra_m_arprot[5:3];
  assign S01_AXI_0_1_ARQOS = hydra_m_arqos[7:4];
  assign S01_AXI_0_1_ARSIZE = hydra_m_arsize[5:3];
  assign S01_AXI_0_1_ARVALID = hydra_m_arvalid[1];
  assign S01_AXI_0_1_AWADDR = hydra_m_awaddr[127:64];
  assign S01_AXI_0_1_AWBURST = hydra_m_awburst[3:2];
  assign S01_AXI_0_1_AWCACHE = hydra_m_awcache[7:4];
  assign S01_AXI_0_1_AWID = hydra_m_awid[9:5];
  assign S01_AXI_0_1_AWLEN = hydra_m_awlen[15:8];
  assign S01_AXI_0_1_AWLOCK = hydra_m_awlock[1];
  assign S01_AXI_0_1_AWPROT = hydra_m_awprot[5:3];
  assign S01_AXI_0_1_AWQOS = hydra_m_awqos[7:4];
  assign S01_AXI_0_1_AWSIZE = hydra_m_awsize[5:3];
  assign S01_AXI_0_1_AWVALID = hydra_m_awvalid[1];
  assign S01_AXI_0_1_BREADY = hydra_m_bready[1];
  assign S01_AXI_0_1_RREADY = hydra_m_rready[1];
  assign S01_AXI_0_1_WDATA = hydra_m_wdata[127:64];
  assign S01_AXI_0_1_WLAST = hydra_m_wlast[1];
  assign S01_AXI_0_1_WSTRB = hydra_m_wstrb[15:8];
  assign S01_AXI_0_1_WVALID = hydra_m_wvalid[1];
  assign S01_AXI_0_2_ARADDR = XBAR2Addr_m_araddr[127:64];
  assign S01_AXI_0_2_ARBURST = XBAR2Addr_m_arburst[3:2];
  assign S01_AXI_0_2_ARCACHE = XBAR2Addr_m_arcache[7:4];
  assign S01_AXI_0_2_ARID = XBAR2Addr_m_arid[9:5];
  assign S01_AXI_0_2_ARLEN = XBAR2Addr_m_arlen[15:8];
  assign S01_AXI_0_2_ARLOCK = XBAR2Addr_m_arlock[1];
  assign S01_AXI_0_2_ARPROT = XBAR2Addr_m_arprot[5:3];
  assign S01_AXI_0_2_ARQOS = XBAR2Addr_m_arqos[7:4];
  assign S01_AXI_0_2_ARSIZE = XBAR2Addr_m_arsize[5:3];
  assign S01_AXI_0_2_ARVALID = XBAR2Addr_m_arvalid[1];
  assign S01_AXI_0_2_AWADDR = XBAR2Addr_m_awaddr[127:64];
  assign S01_AXI_0_2_AWBURST = XBAR2Addr_m_awburst[3:2];
  assign S01_AXI_0_2_AWCACHE = XBAR2Addr_m_awcache[7:4];
  assign S01_AXI_0_2_AWID = XBAR2Addr_m_awid[9:5];
  assign S01_AXI_0_2_AWLEN = XBAR2Addr_m_awlen[15:8];
  assign S01_AXI_0_2_AWLOCK = XBAR2Addr_m_awlock[1];
  assign S01_AXI_0_2_AWPROT = XBAR2Addr_m_awprot[5:3];
  assign S01_AXI_0_2_AWQOS = XBAR2Addr_m_awqos[7:4];
  assign S01_AXI_0_2_AWSIZE = XBAR2Addr_m_awsize[5:3];
  assign S01_AXI_0_2_AWVALID = XBAR2Addr_m_awvalid[1];
  assign S01_AXI_0_2_BREADY = XBAR2Addr_m_bready[1];
  assign S01_AXI_0_2_RREADY = XBAR2Addr_m_rready[1];
  assign S01_AXI_0_2_WDATA = XBAR2Addr_m_wdata[127:64];
  assign S01_AXI_0_2_WLAST = XBAR2Addr_m_wlast[1];
  assign S01_AXI_0_2_WSTRB = XBAR2Addr_m_wstrb[15:8];
  assign S01_AXI_0_2_WVALID = XBAR2Addr_m_wvalid[1];
  assign S02_AXI_0_1_ARADDR = XBAR1Addr_m_araddr[191:128];
  assign S02_AXI_0_1_ARBURST = XBAR1Addr_m_arburst[5:4];
  assign S02_AXI_0_1_ARCACHE = XBAR1Addr_m_arcache[11:8];
  assign S02_AXI_0_1_ARID = XBAR1Addr_m_arid[14:10];
  assign S02_AXI_0_1_ARLEN = XBAR1Addr_m_arlen[23:16];
  assign S02_AXI_0_1_ARLOCK = XBAR1Addr_m_arlock[2];
  assign S02_AXI_0_1_ARPROT = XBAR1Addr_m_arprot[8:6];
  assign S02_AXI_0_1_ARQOS = XBAR1Addr_m_arqos[11:8];
  assign S02_AXI_0_1_ARSIZE = XBAR1Addr_m_arsize[8:6];
  assign S02_AXI_0_1_ARVALID = XBAR1Addr_m_arvalid[2];
  assign S02_AXI_0_1_AWADDR = XBAR1Addr_m_awaddr[191:128];
  assign S02_AXI_0_1_AWBURST = XBAR1Addr_m_awburst[5:4];
  assign S02_AXI_0_1_AWCACHE = XBAR1Addr_m_awcache[11:8];
  assign S02_AXI_0_1_AWID = XBAR1Addr_m_awid[14:10];
  assign S02_AXI_0_1_AWLEN = XBAR1Addr_m_awlen[23:16];
  assign S02_AXI_0_1_AWLOCK = XBAR1Addr_m_awlock[2];
  assign S02_AXI_0_1_AWPROT = XBAR1Addr_m_awprot[8:6];
  assign S02_AXI_0_1_AWQOS = XBAR1Addr_m_awqos[11:8];
  assign S02_AXI_0_1_AWSIZE = XBAR1Addr_m_awsize[8:6];
  assign S02_AXI_0_1_AWVALID = XBAR1Addr_m_awvalid[2];
  assign S02_AXI_0_1_BREADY = XBAR1Addr_m_bready[2];
  assign S02_AXI_0_1_RREADY = XBAR1Addr_m_rready[2];
  assign S02_AXI_0_1_WDATA = XBAR1Addr_m_wdata[191:128];
  assign S02_AXI_0_1_WLAST = XBAR1Addr_m_wlast[2];
  assign S02_AXI_0_1_WSTRB = XBAR1Addr_m_wstrb[23:16];
  assign S02_AXI_0_1_WVALID = XBAR1Addr_m_wvalid[2];
  assign SMU_s_araddr[191:128] = axi_crossbar_0_M02_AXI_ARADDR;
  assign SMU_s_arburst[5:4] = axi_crossbar_0_M02_AXI_ARBURST;
  assign SMU_s_arcache[11:8] = axi_crossbar_0_M02_AXI_ARCACHE;
  assign SMU_s_arid[14:10] = axi_crossbar_0_M02_AXI_ARID;
  assign SMU_s_arlen[23:16] = axi_crossbar_0_M02_AXI_ARLEN;
  assign SMU_s_arlock[2] = axi_crossbar_0_M02_AXI_ARLOCK;
  assign SMU_s_arprot[8:6] = axi_crossbar_0_M02_AXI_ARPROT;
  assign SMU_s_arqos[11:8] = axi_crossbar_0_M02_AXI_ARQOS;
  assign SMU_s_arregion[11:8] = axi_crossbar_0_M02_AXI_ARREGION;
  assign SMU_s_arsize[8:6] = axi_crossbar_0_M02_AXI_ARSIZE;
  assign SMU_s_arvalid[2] = axi_crossbar_0_M02_AXI_ARVALID;
  assign SMU_s_awaddr[191:128] = axi_crossbar_0_M02_AXI_AWADDR;
  assign SMU_s_awburst[5:4] = axi_crossbar_0_M02_AXI_AWBURST;
  assign SMU_s_awcache[11:8] = axi_crossbar_0_M02_AXI_AWCACHE;
  assign SMU_s_awid[14:10] = axi_crossbar_0_M02_AXI_AWID;
  assign SMU_s_awlen[23:16] = axi_crossbar_0_M02_AXI_AWLEN;
  assign SMU_s_awlock[2] = axi_crossbar_0_M02_AXI_AWLOCK;
  assign SMU_s_awprot[8:6] = axi_crossbar_0_M02_AXI_AWPROT;
  assign SMU_s_awqos[11:8] = axi_crossbar_0_M02_AXI_AWQOS;
  assign SMU_s_awregion[11:8] = axi_crossbar_0_M02_AXI_AWREGION;
  assign SMU_s_awsize[8:6] = axi_crossbar_0_M02_AXI_AWSIZE;
  assign SMU_s_awvalid[2] = axi_crossbar_0_M02_AXI_AWVALID;
  assign SMU_s_bready[2] = axi_crossbar_0_M02_AXI_BREADY;
  assign SMU_s_rready[2] = axi_crossbar_0_M02_AXI_RREADY;
  assign SMU_s_wdata[191:128] = axi_crossbar_0_M02_AXI_WDATA;
  assign SMU_s_wlast[2] = axi_crossbar_0_M02_AXI_WLAST;
  assign SMU_s_wstrb[23:16] = axi_crossbar_0_M02_AXI_WSTRB;
  assign SMU_s_wvalid[2] = axi_crossbar_0_M02_AXI_WVALID;
  assign UART_0_txd = axi_uartlite_0_UART_TxD;
  assign XBAR1Addr_m_arready[2] = S02_AXI_0_1_ARREADY;
  assign XBAR1Addr_m_awready[2] = S02_AXI_0_1_AWREADY;
  assign XBAR1Addr_m_bid[14:10] = S02_AXI_0_1_BID;
  assign XBAR1Addr_m_bresp[5:4] = S02_AXI_0_1_BRESP;
  assign XBAR1Addr_m_bvalid[2] = S02_AXI_0_1_BVALID;
  assign XBAR1Addr_m_rdata[191:128] = S02_AXI_0_1_RDATA;
  assign XBAR1Addr_m_rid[14:10] = S02_AXI_0_1_RID;
  assign XBAR1Addr_m_rlast[2] = S02_AXI_0_1_RLAST;
  assign XBAR1Addr_m_rresp[5:4] = S02_AXI_0_1_RRESP;
  assign XBAR1Addr_m_rvalid[2] = S02_AXI_0_1_RVALID;
  assign XBAR1Addr_m_wready[2] = S02_AXI_0_1_WREADY;
  assign XBAR1Addr_s_araddr[319:256] = axi_crossbar_0_M04_AXI_ARADDR;
  assign XBAR1Addr_s_arburst[9:8] = axi_crossbar_0_M04_AXI_ARBURST;
  assign XBAR1Addr_s_arcache[19:16] = axi_crossbar_0_M04_AXI_ARCACHE;
  assign XBAR1Addr_s_arid[24:20] = axi_crossbar_0_M04_AXI_ARID;
  assign XBAR1Addr_s_arlen[39:32] = axi_crossbar_0_M04_AXI_ARLEN;
  assign XBAR1Addr_s_arlock[4] = axi_crossbar_0_M04_AXI_ARLOCK;
  assign XBAR1Addr_s_arprot[14:12] = axi_crossbar_0_M04_AXI_ARPROT;
  assign XBAR1Addr_s_arqos[19:16] = axi_crossbar_0_M04_AXI_ARQOS;
  assign XBAR1Addr_s_arregion[19:16] = axi_crossbar_0_M04_AXI_ARREGION;
  assign XBAR1Addr_s_arsize[14:12] = axi_crossbar_0_M04_AXI_ARSIZE;
  assign XBAR1Addr_s_arvalid[4] = axi_crossbar_0_M04_AXI_ARVALID;
  assign XBAR1Addr_s_awaddr[319:256] = axi_crossbar_0_M04_AXI_AWADDR;
  assign XBAR1Addr_s_awburst[9:8] = axi_crossbar_0_M04_AXI_AWBURST;
  assign XBAR1Addr_s_awcache[19:16] = axi_crossbar_0_M04_AXI_AWCACHE;
  assign XBAR1Addr_s_awid[24:20] = axi_crossbar_0_M04_AXI_AWID;
  assign XBAR1Addr_s_awlen[39:32] = axi_crossbar_0_M04_AXI_AWLEN;
  assign XBAR1Addr_s_awlock[4] = axi_crossbar_0_M04_AXI_AWLOCK;
  assign XBAR1Addr_s_awprot[14:12] = axi_crossbar_0_M04_AXI_AWPROT;
  assign XBAR1Addr_s_awqos[19:16] = axi_crossbar_0_M04_AXI_AWQOS;
  assign XBAR1Addr_s_awregion[19:16] = axi_crossbar_0_M04_AXI_AWREGION;
  assign XBAR1Addr_s_awsize[14:12] = axi_crossbar_0_M04_AXI_AWSIZE;
  assign XBAR1Addr_s_awvalid[4] = axi_crossbar_0_M04_AXI_AWVALID;
  assign XBAR1Addr_s_bready[4] = axi_crossbar_0_M04_AXI_BREADY;
  assign XBAR1Addr_s_rready[4] = axi_crossbar_0_M04_AXI_RREADY;
  assign XBAR1Addr_s_wdata[319:256] = axi_crossbar_0_M04_AXI_WDATA;
  assign XBAR1Addr_s_wlast[4] = axi_crossbar_0_M04_AXI_WLAST;
  assign XBAR1Addr_s_wstrb[39:32] = axi_crossbar_0_M04_AXI_WSTRB;
  assign XBAR1Addr_s_wvalid[4] = axi_crossbar_0_M04_AXI_WVALID;
  assign XBAR2Addr_m_arready[1] = S01_AXI_0_2_ARREADY;
  assign XBAR2Addr_m_awready[1] = S01_AXI_0_2_AWREADY;
  assign XBAR2Addr_m_bid[9:5] = S01_AXI_0_2_BID;
  assign XBAR2Addr_m_bresp[3:2] = S01_AXI_0_2_BRESP;
  assign XBAR2Addr_m_bvalid[1] = S01_AXI_0_2_BVALID;
  assign XBAR2Addr_m_rdata[127:64] = S01_AXI_0_2_RDATA;
  assign XBAR2Addr_m_rid[9:5] = S01_AXI_0_2_RID;
  assign XBAR2Addr_m_rlast[1] = S01_AXI_0_2_RLAST;
  assign XBAR2Addr_m_rresp[3:2] = S01_AXI_0_2_RRESP;
  assign XBAR2Addr_m_rvalid[1] = S01_AXI_0_2_RVALID;
  assign XBAR2Addr_m_wready[1] = S01_AXI_0_2_WREADY;
  assign XBAR2Addr_s_araddr[191:128] = axi_crossbar_1_M02_AXI_ARADDR;
  assign XBAR2Addr_s_arburst[5:4] = axi_crossbar_1_M02_AXI_ARBURST;
  assign XBAR2Addr_s_arcache[11:8] = axi_crossbar_1_M02_AXI_ARCACHE;
  assign XBAR2Addr_s_arid[14:10] = axi_crossbar_1_M02_AXI_ARID;
  assign XBAR2Addr_s_arlen[23:16] = axi_crossbar_1_M02_AXI_ARLEN;
  assign XBAR2Addr_s_arlock[2] = axi_crossbar_1_M02_AXI_ARLOCK;
  assign XBAR2Addr_s_arprot[8:6] = axi_crossbar_1_M02_AXI_ARPROT;
  assign XBAR2Addr_s_arqos[11:8] = axi_crossbar_1_M02_AXI_ARQOS;
  assign XBAR2Addr_s_arregion[11:8] = axi_crossbar_1_M02_AXI_ARREGION;
  assign XBAR2Addr_s_arsize[8:6] = axi_crossbar_1_M02_AXI_ARSIZE;
  assign XBAR2Addr_s_arvalid[2] = axi_crossbar_1_M02_AXI_ARVALID;
  assign XBAR2Addr_s_awaddr[191:128] = axi_crossbar_1_M02_AXI_AWADDR;
  assign XBAR2Addr_s_awburst[5:4] = axi_crossbar_1_M02_AXI_AWBURST;
  assign XBAR2Addr_s_awcache[11:8] = axi_crossbar_1_M02_AXI_AWCACHE;
  assign XBAR2Addr_s_awid[14:10] = axi_crossbar_1_M02_AXI_AWID;
  assign XBAR2Addr_s_awlen[23:16] = axi_crossbar_1_M02_AXI_AWLEN;
  assign XBAR2Addr_s_awlock[2] = axi_crossbar_1_M02_AXI_AWLOCK;
  assign XBAR2Addr_s_awprot[8:6] = axi_crossbar_1_M02_AXI_AWPROT;
  assign XBAR2Addr_s_awqos[11:8] = axi_crossbar_1_M02_AXI_AWQOS;
  assign XBAR2Addr_s_awregion[11:8] = axi_crossbar_1_M02_AXI_AWREGION;
  assign XBAR2Addr_s_awsize[8:6] = axi_crossbar_1_M02_AXI_AWSIZE;
  assign XBAR2Addr_s_awvalid[2] = axi_crossbar_1_M02_AXI_AWVALID;
  assign XBAR2Addr_s_bready[2] = axi_crossbar_1_M02_AXI_BREADY;
  assign XBAR2Addr_s_rready[2] = axi_crossbar_1_M02_AXI_RREADY;
  assign XBAR2Addr_s_wdata[191:128] = axi_crossbar_1_M02_AXI_WDATA;
  assign XBAR2Addr_s_wlast[2] = axi_crossbar_1_M02_AXI_WLAST;
  assign XBAR2Addr_s_wstrb[23:16] = axi_crossbar_1_M02_AXI_WSTRB;
  assign XBAR2Addr_s_wvalid[2] = axi_crossbar_1_M02_AXI_WVALID;
  assign axi_crossbar_0_M02_AXI_ARREADY = SMU_s_arready[2];
  assign axi_crossbar_0_M02_AXI_AWREADY = SMU_s_awready[2];
  assign axi_crossbar_0_M02_AXI_BID = SMU_s_bid[14:10];
  assign axi_crossbar_0_M02_AXI_BRESP = SMU_s_bresp[5:4];
  assign axi_crossbar_0_M02_AXI_BVALID = SMU_s_bvalid[2];
  assign axi_crossbar_0_M02_AXI_RDATA = SMU_s_rdata[191:128];
  assign axi_crossbar_0_M02_AXI_RID = SMU_s_rid[14:10];
  assign axi_crossbar_0_M02_AXI_RLAST = SMU_s_rlast[2];
  assign axi_crossbar_0_M02_AXI_RRESP = SMU_s_rresp[5:4];
  assign axi_crossbar_0_M02_AXI_RVALID = SMU_s_rvalid[2];
  assign axi_crossbar_0_M02_AXI_WREADY = SMU_s_wready[2];
  assign axi_crossbar_0_M03_AXI_ARREADY = ethernet_s_arready[3];
  assign axi_crossbar_0_M03_AXI_AWREADY = ethernet_s_awready[3];
  assign axi_crossbar_0_M03_AXI_BID = ethernet_s_bid[19:15];
  assign axi_crossbar_0_M03_AXI_BRESP = ethernet_s_bresp[7:6];
  assign axi_crossbar_0_M03_AXI_BVALID = ethernet_s_bvalid[3];
  assign axi_crossbar_0_M03_AXI_RDATA = ethernet_s_rdata[255:192];
  assign axi_crossbar_0_M03_AXI_RID = ethernet_s_rid[19:15];
  assign axi_crossbar_0_M03_AXI_RLAST = ethernet_s_rlast[3];
  assign axi_crossbar_0_M03_AXI_RRESP = ethernet_s_rresp[7:6];
  assign axi_crossbar_0_M03_AXI_RVALID = ethernet_s_rvalid[3];
  assign axi_crossbar_0_M03_AXI_WREADY = ethernet_s_wready[3];
  assign axi_crossbar_0_M04_AXI_ARREADY = XBAR1Addr_s_arready[4];
  assign axi_crossbar_0_M04_AXI_AWREADY = XBAR1Addr_s_awready[4];
  assign axi_crossbar_0_M04_AXI_BID = XBAR1Addr_s_bid[24:20];
  assign axi_crossbar_0_M04_AXI_BRESP = XBAR1Addr_s_bresp[9:8];
  assign axi_crossbar_0_M04_AXI_BVALID = XBAR1Addr_s_bvalid[4];
  assign axi_crossbar_0_M04_AXI_RDATA = XBAR1Addr_s_rdata[319:256];
  assign axi_crossbar_0_M04_AXI_RID = XBAR1Addr_s_rid[24:20];
  assign axi_crossbar_0_M04_AXI_RLAST = XBAR1Addr_s_rlast[4];
  assign axi_crossbar_0_M04_AXI_RRESP = XBAR1Addr_s_rresp[9:8];
  assign axi_crossbar_0_M04_AXI_RVALID = XBAR1Addr_s_rvalid[4];
  assign axi_crossbar_0_M04_AXI_WREADY = XBAR1Addr_s_wready[4];
  assign axi_crossbar_1_M00_AXI_ARREADY = DDR_s_arready[0];
  assign axi_crossbar_1_M00_AXI_AWREADY = DDR_s_awready[0];
  assign axi_crossbar_1_M00_AXI_BID = DDR_s_bid[4:0];
  assign axi_crossbar_1_M00_AXI_BRESP = DDR_s_bresp[1:0];
  assign axi_crossbar_1_M00_AXI_BVALID = DDR_s_bvalid[0];
  assign axi_crossbar_1_M00_AXI_RDATA = DDR_s_rdata[63:0];
  assign axi_crossbar_1_M00_AXI_RID = DDR_s_rid[4:0];
  assign axi_crossbar_1_M00_AXI_RLAST = DDR_s_rlast[0];
  assign axi_crossbar_1_M00_AXI_RRESP = DDR_s_rresp[1:0];
  assign axi_crossbar_1_M00_AXI_RVALID = DDR_s_rvalid[0];
  assign axi_crossbar_1_M00_AXI_WREADY = DDR_s_wready[0];
  assign axi_crossbar_1_M01_AXI_ARREADY = MTMLAddr_s_arready[1];
  assign axi_crossbar_1_M01_AXI_AWREADY = MTMLAddr_s_awready[1];
  assign axi_crossbar_1_M01_AXI_BID = MTMLAddr_s_bid[9:5];
  assign axi_crossbar_1_M01_AXI_BRESP = MTMLAddr_s_bresp[3:2];
  assign axi_crossbar_1_M01_AXI_BVALID = MTMLAddr_s_bvalid[1];
  assign axi_crossbar_1_M01_AXI_RDATA = MTMLAddr_s_rdata[127:64];
  assign axi_crossbar_1_M01_AXI_RID = MTMLAddr_s_rid[9:5];
  assign axi_crossbar_1_M01_AXI_RLAST = MTMLAddr_s_rlast[1];
  assign axi_crossbar_1_M01_AXI_RRESP = MTMLAddr_s_rresp[3:2];
  assign axi_crossbar_1_M01_AXI_RVALID = MTMLAddr_s_rvalid[1];
  assign axi_crossbar_1_M01_AXI_WREADY = MTMLAddr_s_wready[1];
  assign axi_crossbar_1_M02_AXI_ARREADY = XBAR2Addr_s_arready[2];
  assign axi_crossbar_1_M02_AXI_AWREADY = XBAR2Addr_s_awready[2];
  assign axi_crossbar_1_M02_AXI_BID = XBAR2Addr_s_bid[14:10];
  assign axi_crossbar_1_M02_AXI_BRESP = XBAR2Addr_s_bresp[5:4];
  assign axi_crossbar_1_M02_AXI_BVALID = XBAR2Addr_s_bvalid[2];
  assign axi_crossbar_1_M02_AXI_RDATA = XBAR2Addr_s_rdata[191:128];
  assign axi_crossbar_1_M02_AXI_RID = XBAR2Addr_s_rid[14:10];
  assign axi_crossbar_1_M02_AXI_RLAST = XBAR2Addr_s_rlast[2];
  assign axi_crossbar_1_M02_AXI_RRESP = XBAR2Addr_s_rresp[5:4];
  assign axi_crossbar_1_M02_AXI_RVALID = XBAR2Addr_s_rvalid[2];
  assign axi_crossbar_1_M02_AXI_WREADY = XBAR2Addr_s_wready[2];
  assign axi_crossbar_1_M03_AXI_ARREADY = hydra_S_arready[3];
  assign axi_crossbar_1_M03_AXI_AWREADY = hydra_S_awready[3];
  assign axi_crossbar_1_M03_AXI_BID = hydra_S_bid[19:15];
  assign axi_crossbar_1_M03_AXI_BRESP = hydra_S_bresp[7:6];
  assign axi_crossbar_1_M03_AXI_BVALID = hydra_S_bvalid[3];
  assign axi_crossbar_1_M03_AXI_RDATA = hydra_S_rdata[255:192];
  assign axi_crossbar_1_M03_AXI_RID = hydra_S_rid[19:15];
  assign axi_crossbar_1_M03_AXI_RLAST = hydra_S_rlast[3];
  assign axi_crossbar_1_M03_AXI_RRESP = hydra_S_rresp[7:6];
  assign axi_crossbar_1_M03_AXI_RVALID = hydra_S_rvalid[3];
  assign axi_crossbar_1_M03_AXI_WREADY = hydra_S_wready[3];
  assign axi_uartlite_0_UART_RxD = UART_0_rxd;
  assign ethernet_s_araddr[255:192] = axi_crossbar_0_M03_AXI_ARADDR;
  assign ethernet_s_arburst[7:6] = axi_crossbar_0_M03_AXI_ARBURST;
  assign ethernet_s_arcache[15:12] = axi_crossbar_0_M03_AXI_ARCACHE;
  assign ethernet_s_arid[19:15] = axi_crossbar_0_M03_AXI_ARID;
  assign ethernet_s_arlen[31:24] = axi_crossbar_0_M03_AXI_ARLEN;
  assign ethernet_s_arlock[3] = axi_crossbar_0_M03_AXI_ARLOCK;
  assign ethernet_s_arprot[11:9] = axi_crossbar_0_M03_AXI_ARPROT;
  assign ethernet_s_arqos[15:12] = axi_crossbar_0_M03_AXI_ARQOS;
  assign ethernet_s_arregion[15:12] = axi_crossbar_0_M03_AXI_ARREGION;
  assign ethernet_s_arsize[11:9] = axi_crossbar_0_M03_AXI_ARSIZE;
  assign ethernet_s_arvalid[3] = axi_crossbar_0_M03_AXI_ARVALID;
  assign ethernet_s_awaddr[255:192] = axi_crossbar_0_M03_AXI_AWADDR;
  assign ethernet_s_awburst[7:6] = axi_crossbar_0_M03_AXI_AWBURST;
  assign ethernet_s_awcache[15:12] = axi_crossbar_0_M03_AXI_AWCACHE;
  assign ethernet_s_awid[19:15] = axi_crossbar_0_M03_AXI_AWID;
  assign ethernet_s_awlen[31:24] = axi_crossbar_0_M03_AXI_AWLEN;
  assign ethernet_s_awlock[3] = axi_crossbar_0_M03_AXI_AWLOCK;
  assign ethernet_s_awprot[11:9] = axi_crossbar_0_M03_AXI_AWPROT;
  assign ethernet_s_awqos[15:12] = axi_crossbar_0_M03_AXI_AWQOS;
  assign ethernet_s_awregion[15:12] = axi_crossbar_0_M03_AXI_AWREGION;
  assign ethernet_s_awsize[11:9] = axi_crossbar_0_M03_AXI_AWSIZE;
  assign ethernet_s_awvalid[3] = axi_crossbar_0_M03_AXI_AWVALID;
  assign ethernet_s_bready[3] = axi_crossbar_0_M03_AXI_BREADY;
  assign ethernet_s_rready[3] = axi_crossbar_0_M03_AXI_RREADY;
  assign ethernet_s_wdata[255:192] = axi_crossbar_0_M03_AXI_WDATA;
  assign ethernet_s_wlast[3] = axi_crossbar_0_M03_AXI_WLAST;
  assign ethernet_s_wstrb[31:24] = axi_crossbar_0_M03_AXI_WSTRB;
  assign ethernet_s_wvalid[3] = axi_crossbar_0_M03_AXI_WVALID;
  assign hydra_S_araddr[255:192] = axi_crossbar_1_M03_AXI_ARADDR;
  assign hydra_S_arburst[7:6] = axi_crossbar_1_M03_AXI_ARBURST;
  assign hydra_S_arcache[15:12] = axi_crossbar_1_M03_AXI_ARCACHE;
  assign hydra_S_arid[19:15] = axi_crossbar_1_M03_AXI_ARID;
  assign hydra_S_arlen[31:24] = axi_crossbar_1_M03_AXI_ARLEN;
  assign hydra_S_arlock[3] = axi_crossbar_1_M03_AXI_ARLOCK;
  assign hydra_S_arprot[11:9] = axi_crossbar_1_M03_AXI_ARPROT;
  assign hydra_S_arqos[15:12] = axi_crossbar_1_M03_AXI_ARQOS;
  assign hydra_S_arregion[15:12] = axi_crossbar_1_M03_AXI_ARREGION;
  assign hydra_S_arsize[11:9] = axi_crossbar_1_M03_AXI_ARSIZE;
  assign hydra_S_arvalid[3] = axi_crossbar_1_M03_AXI_ARVALID;
  assign hydra_S_awaddr[255:192] = axi_crossbar_1_M03_AXI_AWADDR;
  assign hydra_S_awburst[7:6] = axi_crossbar_1_M03_AXI_AWBURST;
  assign hydra_S_awcache[15:12] = axi_crossbar_1_M03_AXI_AWCACHE;
  assign hydra_S_awid[19:15] = axi_crossbar_1_M03_AXI_AWID;
  assign hydra_S_awlen[31:24] = axi_crossbar_1_M03_AXI_AWLEN;
  assign hydra_S_awlock[3] = axi_crossbar_1_M03_AXI_AWLOCK;
  assign hydra_S_awprot[11:9] = axi_crossbar_1_M03_AXI_AWPROT;
  assign hydra_S_awqos[15:12] = axi_crossbar_1_M03_AXI_AWQOS;
  assign hydra_S_awregion[15:12] = axi_crossbar_1_M03_AXI_AWREGION;
  assign hydra_S_awsize[11:9] = axi_crossbar_1_M03_AXI_AWSIZE;
  assign hydra_S_awvalid[3] = axi_crossbar_1_M03_AXI_AWVALID;
  assign hydra_S_bready[3] = axi_crossbar_1_M03_AXI_BREADY;
  assign hydra_S_rready[3] = axi_crossbar_1_M03_AXI_RREADY;
  assign hydra_S_wdata[255:192] = axi_crossbar_1_M03_AXI_WDATA;
  assign hydra_S_wlast[3] = axi_crossbar_1_M03_AXI_WLAST;
  assign hydra_S_wstrb[31:24] = axi_crossbar_1_M03_AXI_WSTRB;
  assign hydra_S_wvalid[3] = axi_crossbar_1_M03_AXI_WVALID;
  assign hydra_m_arready[1] = S01_AXI_0_1_ARREADY;
  assign hydra_m_awready[1] = S01_AXI_0_1_AWREADY;
  assign hydra_m_bid[9:5] = S01_AXI_0_1_BID;
  assign hydra_m_bresp[3:2] = S01_AXI_0_1_BRESP;
  assign hydra_m_bvalid[1] = S01_AXI_0_1_BVALID;
  assign hydra_m_rdata[127:64] = S01_AXI_0_1_RDATA;
  assign hydra_m_rid[9:5] = S01_AXI_0_1_RID;
  assign hydra_m_rlast[1] = S01_AXI_0_1_RLAST;
  assign hydra_m_rresp[3:2] = S01_AXI_0_1_RRESP;
  assign hydra_m_rvalid[1] = S01_AXI_0_1_RVALID;
  assign hydra_m_wready[1] = S01_AXI_0_1_WREADY;
  assign interrupt_0 = axi_uartlite_0_interrupt;
  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  xlx_design_subsystem_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR[12:0]),
        .s_axi_arburst(axi_crossbar_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid(axi_crossbar_0_M00_AXI_ARID),
        .s_axi_arlen(axi_crossbar_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR[12:0]),
        .s_axi_awburst(axi_crossbar_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_0_M00_AXI_AWID),
        .s_axi_awlen(axi_crossbar_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_0_M00_AXI_BID),
        .s_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_rid(axi_crossbar_0_M00_AXI_RID),
        .s_axi_rlast(axi_crossbar_0_M00_AXI_RLAST),
        .s_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_0_M00_AXI_WLAST),
        .s_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID));
  xlx_design_subsystem_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr({axi_crossbar_0_M04_AXI_ARADDR,axi_crossbar_0_M03_AXI_ARADDR,axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_0_M04_AXI_ARBURST,axi_crossbar_0_M03_AXI_ARBURST,axi_crossbar_0_M02_AXI_ARBURST,axi_crossbar_0_M01_AXI_ARBURST,axi_crossbar_0_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_0_M04_AXI_ARCACHE,axi_crossbar_0_M03_AXI_ARCACHE,axi_crossbar_0_M02_AXI_ARCACHE,axi_crossbar_0_M01_AXI_ARCACHE,axi_crossbar_0_M00_AXI_ARCACHE}),
        .m_axi_arid({axi_crossbar_0_M04_AXI_ARID,axi_crossbar_0_M03_AXI_ARID,axi_crossbar_0_M02_AXI_ARID,axi_crossbar_0_M01_AXI_ARID,axi_crossbar_0_M00_AXI_ARID}),
        .m_axi_arlen({axi_crossbar_0_M04_AXI_ARLEN,axi_crossbar_0_M03_AXI_ARLEN,axi_crossbar_0_M02_AXI_ARLEN,axi_crossbar_0_M01_AXI_ARLEN,axi_crossbar_0_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_0_M04_AXI_ARLOCK,axi_crossbar_0_M03_AXI_ARLOCK,axi_crossbar_0_M02_AXI_ARLOCK,axi_crossbar_0_M01_AXI_ARLOCK,axi_crossbar_0_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_0_M04_AXI_ARPROT,axi_crossbar_0_M03_AXI_ARPROT,axi_crossbar_0_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,axi_crossbar_0_M00_AXI_ARPROT}),
        .m_axi_arqos({axi_crossbar_0_M04_AXI_ARQOS,axi_crossbar_0_M03_AXI_ARQOS,axi_crossbar_0_M02_AXI_ARQOS,axi_crossbar_0_M01_AXI_ARQOS,NLW_axi_crossbar_0_m_axi_arqos_UNCONNECTED[3:0]}),
        .m_axi_arready({axi_crossbar_0_M04_AXI_ARREADY,axi_crossbar_0_M03_AXI_ARREADY,axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arregion({axi_crossbar_0_M04_AXI_ARREGION,axi_crossbar_0_M03_AXI_ARREGION,axi_crossbar_0_M02_AXI_ARREGION,axi_crossbar_0_M01_AXI_ARREGION,NLW_axi_crossbar_0_m_axi_arregion_UNCONNECTED[3:0]}),
        .m_axi_arsize({axi_crossbar_0_M04_AXI_ARSIZE,axi_crossbar_0_M03_AXI_ARSIZE,axi_crossbar_0_M02_AXI_ARSIZE,axi_crossbar_0_M01_AXI_ARSIZE,axi_crossbar_0_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_0_M04_AXI_ARVALID,axi_crossbar_0_M03_AXI_ARVALID,axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M04_AXI_AWADDR,axi_crossbar_0_M03_AXI_AWADDR,axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_0_M04_AXI_AWBURST,axi_crossbar_0_M03_AXI_AWBURST,axi_crossbar_0_M02_AXI_AWBURST,axi_crossbar_0_M01_AXI_AWBURST,axi_crossbar_0_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_0_M04_AXI_AWCACHE,axi_crossbar_0_M03_AXI_AWCACHE,axi_crossbar_0_M02_AXI_AWCACHE,axi_crossbar_0_M01_AXI_AWCACHE,axi_crossbar_0_M00_AXI_AWCACHE}),
        .m_axi_awid({axi_crossbar_0_M04_AXI_AWID,axi_crossbar_0_M03_AXI_AWID,axi_crossbar_0_M02_AXI_AWID,axi_crossbar_0_M01_AXI_AWID,axi_crossbar_0_M00_AXI_AWID}),
        .m_axi_awlen({axi_crossbar_0_M04_AXI_AWLEN,axi_crossbar_0_M03_AXI_AWLEN,axi_crossbar_0_M02_AXI_AWLEN,axi_crossbar_0_M01_AXI_AWLEN,axi_crossbar_0_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_0_M04_AXI_AWLOCK,axi_crossbar_0_M03_AXI_AWLOCK,axi_crossbar_0_M02_AXI_AWLOCK,axi_crossbar_0_M01_AXI_AWLOCK,axi_crossbar_0_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_0_M04_AXI_AWPROT,axi_crossbar_0_M03_AXI_AWPROT,axi_crossbar_0_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,axi_crossbar_0_M00_AXI_AWPROT}),
        .m_axi_awqos({axi_crossbar_0_M04_AXI_AWQOS,axi_crossbar_0_M03_AXI_AWQOS,axi_crossbar_0_M02_AXI_AWQOS,axi_crossbar_0_M01_AXI_AWQOS,NLW_axi_crossbar_0_m_axi_awqos_UNCONNECTED[3:0]}),
        .m_axi_awready({axi_crossbar_0_M04_AXI_AWREADY,axi_crossbar_0_M03_AXI_AWREADY,axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awregion({axi_crossbar_0_M04_AXI_AWREGION,axi_crossbar_0_M03_AXI_AWREGION,axi_crossbar_0_M02_AXI_AWREGION,axi_crossbar_0_M01_AXI_AWREGION,NLW_axi_crossbar_0_m_axi_awregion_UNCONNECTED[3:0]}),
        .m_axi_awsize({axi_crossbar_0_M04_AXI_AWSIZE,axi_crossbar_0_M03_AXI_AWSIZE,axi_crossbar_0_M02_AXI_AWSIZE,axi_crossbar_0_M01_AXI_AWSIZE,axi_crossbar_0_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_0_M04_AXI_AWVALID,axi_crossbar_0_M03_AXI_AWVALID,axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bid({axi_crossbar_0_M04_AXI_BID,axi_crossbar_0_M03_AXI_BID,axi_crossbar_0_M02_AXI_BID,axi_crossbar_0_M01_AXI_BID,axi_crossbar_0_M00_AXI_BID}),
        .m_axi_bready({axi_crossbar_0_M04_AXI_BREADY,axi_crossbar_0_M03_AXI_BREADY,axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M04_AXI_BRESP,axi_crossbar_0_M03_AXI_BRESP,axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M04_AXI_BVALID,axi_crossbar_0_M03_AXI_BVALID,axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M04_AXI_RDATA,axi_crossbar_0_M03_AXI_RDATA,axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rid({axi_crossbar_0_M04_AXI_RID,axi_crossbar_0_M03_AXI_RID,axi_crossbar_0_M02_AXI_RID,axi_crossbar_0_M01_AXI_RID,axi_crossbar_0_M00_AXI_RID}),
        .m_axi_rlast({axi_crossbar_0_M04_AXI_RLAST,axi_crossbar_0_M03_AXI_RLAST,axi_crossbar_0_M02_AXI_RLAST,axi_crossbar_0_M01_AXI_RLAST,axi_crossbar_0_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_0_M04_AXI_RREADY,axi_crossbar_0_M03_AXI_RREADY,axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M04_AXI_RRESP,axi_crossbar_0_M03_AXI_RRESP,axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M04_AXI_RVALID,axi_crossbar_0_M03_AXI_RVALID,axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M04_AXI_WDATA,axi_crossbar_0_M03_AXI_WDATA,axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_0_M04_AXI_WLAST,axi_crossbar_0_M03_AXI_WLAST,axi_crossbar_0_M02_AXI_WLAST,axi_crossbar_0_M01_AXI_WLAST,axi_crossbar_0_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_0_M04_AXI_WREADY,axi_crossbar_0_M03_AXI_WREADY,axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M04_AXI_WSTRB,axi_crossbar_0_M03_AXI_WSTRB,axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M04_AXI_WVALID,axi_crossbar_0_M03_AXI_WVALID,axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr({S01_AXI_0_2_ARADDR,S00_AXI_0_2_ARADDR}),
        .s_axi_arburst({S01_AXI_0_2_ARBURST,S00_AXI_0_2_ARBURST}),
        .s_axi_arcache({S01_AXI_0_2_ARCACHE,S00_AXI_0_2_ARCACHE}),
        .s_axi_arid({S01_AXI_0_2_ARID,S00_AXI_0_2_ARID}),
        .s_axi_arlen({S01_AXI_0_2_ARLEN,S00_AXI_0_2_ARLEN}),
        .s_axi_arlock({S01_AXI_0_2_ARLOCK,S00_AXI_0_2_ARLOCK}),
        .s_axi_arprot({S01_AXI_0_2_ARPROT,S00_AXI_0_2_ARPROT}),
        .s_axi_arqos({S01_AXI_0_2_ARQOS,S00_AXI_0_2_ARQOS}),
        .s_axi_arready({S01_AXI_0_2_ARREADY,S00_AXI_0_2_ARREADY}),
        .s_axi_arsize({S01_AXI_0_2_ARSIZE,S00_AXI_0_2_ARSIZE}),
        .s_axi_arvalid({S01_AXI_0_2_ARVALID,S00_AXI_0_2_ARVALID}),
        .s_axi_awaddr({S01_AXI_0_2_AWADDR,S00_AXI_0_2_AWADDR}),
        .s_axi_awburst({S01_AXI_0_2_AWBURST,S00_AXI_0_2_AWBURST}),
        .s_axi_awcache({S01_AXI_0_2_AWCACHE,S00_AXI_0_2_AWCACHE}),
        .s_axi_awid({S01_AXI_0_2_AWID,S00_AXI_0_2_AWID}),
        .s_axi_awlen({S01_AXI_0_2_AWLEN,S00_AXI_0_2_AWLEN}),
        .s_axi_awlock({S01_AXI_0_2_AWLOCK,S00_AXI_0_2_AWLOCK}),
        .s_axi_awprot({S01_AXI_0_2_AWPROT,S00_AXI_0_2_AWPROT}),
        .s_axi_awqos({S01_AXI_0_2_AWQOS,S00_AXI_0_2_AWQOS}),
        .s_axi_awready({S01_AXI_0_2_AWREADY,S00_AXI_0_2_AWREADY}),
        .s_axi_awsize({S01_AXI_0_2_AWSIZE,S00_AXI_0_2_AWSIZE}),
        .s_axi_awvalid({S01_AXI_0_2_AWVALID,S00_AXI_0_2_AWVALID}),
        .s_axi_bid({S01_AXI_0_2_BID,S00_AXI_0_2_BID}),
        .s_axi_bready({S01_AXI_0_2_BREADY,S00_AXI_0_2_BREADY}),
        .s_axi_bresp({S01_AXI_0_2_BRESP,S00_AXI_0_2_BRESP}),
        .s_axi_bvalid({S01_AXI_0_2_BVALID,S00_AXI_0_2_BVALID}),
        .s_axi_rdata({S01_AXI_0_2_RDATA,S00_AXI_0_2_RDATA}),
        .s_axi_rid({S01_AXI_0_2_RID,S00_AXI_0_2_RID}),
        .s_axi_rlast({S01_AXI_0_2_RLAST,S00_AXI_0_2_RLAST}),
        .s_axi_rready({S01_AXI_0_2_RREADY,S00_AXI_0_2_RREADY}),
        .s_axi_rresp({S01_AXI_0_2_RRESP,S00_AXI_0_2_RRESP}),
        .s_axi_rvalid({S01_AXI_0_2_RVALID,S00_AXI_0_2_RVALID}),
        .s_axi_wdata({S01_AXI_0_2_WDATA,S00_AXI_0_2_WDATA}),
        .s_axi_wlast({S01_AXI_0_2_WLAST,S00_AXI_0_2_WLAST}),
        .s_axi_wready({S01_AXI_0_2_WREADY,S00_AXI_0_2_WREADY}),
        .s_axi_wstrb({S01_AXI_0_2_WSTRB,S00_AXI_0_2_WSTRB}),
        .s_axi_wvalid({S01_AXI_0_2_WVALID,S00_AXI_0_2_WVALID}));
  xlx_design_subsystem_axi_crossbar_1_0 axi_crossbar_1
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr({axi_crossbar_1_M03_AXI_ARADDR,axi_crossbar_1_M02_AXI_ARADDR,axi_crossbar_1_M01_AXI_ARADDR,axi_crossbar_1_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_1_M03_AXI_ARBURST,axi_crossbar_1_M02_AXI_ARBURST,axi_crossbar_1_M01_AXI_ARBURST,axi_crossbar_1_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_1_M03_AXI_ARCACHE,axi_crossbar_1_M02_AXI_ARCACHE,axi_crossbar_1_M01_AXI_ARCACHE,axi_crossbar_1_M00_AXI_ARCACHE}),
        .m_axi_arid({axi_crossbar_1_M03_AXI_ARID,axi_crossbar_1_M02_AXI_ARID,axi_crossbar_1_M01_AXI_ARID,axi_crossbar_1_M00_AXI_ARID}),
        .m_axi_arlen({axi_crossbar_1_M03_AXI_ARLEN,axi_crossbar_1_M02_AXI_ARLEN,axi_crossbar_1_M01_AXI_ARLEN,axi_crossbar_1_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_1_M03_AXI_ARLOCK,axi_crossbar_1_M02_AXI_ARLOCK,axi_crossbar_1_M01_AXI_ARLOCK,axi_crossbar_1_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_1_M03_AXI_ARPROT,axi_crossbar_1_M02_AXI_ARPROT,axi_crossbar_1_M01_AXI_ARPROT,axi_crossbar_1_M00_AXI_ARPROT}),
        .m_axi_arqos({axi_crossbar_1_M03_AXI_ARQOS,axi_crossbar_1_M02_AXI_ARQOS,axi_crossbar_1_M01_AXI_ARQOS,axi_crossbar_1_M00_AXI_ARQOS}),
        .m_axi_arready({axi_crossbar_1_M03_AXI_ARREADY,axi_crossbar_1_M02_AXI_ARREADY,axi_crossbar_1_M01_AXI_ARREADY,axi_crossbar_1_M00_AXI_ARREADY}),
        .m_axi_arregion({axi_crossbar_1_M03_AXI_ARREGION,axi_crossbar_1_M02_AXI_ARREGION,axi_crossbar_1_M01_AXI_ARREGION,axi_crossbar_1_M00_AXI_ARREGION}),
        .m_axi_arsize({axi_crossbar_1_M03_AXI_ARSIZE,axi_crossbar_1_M02_AXI_ARSIZE,axi_crossbar_1_M01_AXI_ARSIZE,axi_crossbar_1_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_1_M03_AXI_ARVALID,axi_crossbar_1_M02_AXI_ARVALID,axi_crossbar_1_M01_AXI_ARVALID,axi_crossbar_1_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_1_M03_AXI_AWADDR,axi_crossbar_1_M02_AXI_AWADDR,axi_crossbar_1_M01_AXI_AWADDR,axi_crossbar_1_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_1_M03_AXI_AWBURST,axi_crossbar_1_M02_AXI_AWBURST,axi_crossbar_1_M01_AXI_AWBURST,axi_crossbar_1_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_1_M03_AXI_AWCACHE,axi_crossbar_1_M02_AXI_AWCACHE,axi_crossbar_1_M01_AXI_AWCACHE,axi_crossbar_1_M00_AXI_AWCACHE}),
        .m_axi_awid({axi_crossbar_1_M03_AXI_AWID,axi_crossbar_1_M02_AXI_AWID,axi_crossbar_1_M01_AXI_AWID,axi_crossbar_1_M00_AXI_AWID}),
        .m_axi_awlen({axi_crossbar_1_M03_AXI_AWLEN,axi_crossbar_1_M02_AXI_AWLEN,axi_crossbar_1_M01_AXI_AWLEN,axi_crossbar_1_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_1_M03_AXI_AWLOCK,axi_crossbar_1_M02_AXI_AWLOCK,axi_crossbar_1_M01_AXI_AWLOCK,axi_crossbar_1_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_1_M03_AXI_AWPROT,axi_crossbar_1_M02_AXI_AWPROT,axi_crossbar_1_M01_AXI_AWPROT,axi_crossbar_1_M00_AXI_AWPROT}),
        .m_axi_awqos({axi_crossbar_1_M03_AXI_AWQOS,axi_crossbar_1_M02_AXI_AWQOS,axi_crossbar_1_M01_AXI_AWQOS,axi_crossbar_1_M00_AXI_AWQOS}),
        .m_axi_awready({axi_crossbar_1_M03_AXI_AWREADY,axi_crossbar_1_M02_AXI_AWREADY,axi_crossbar_1_M01_AXI_AWREADY,axi_crossbar_1_M00_AXI_AWREADY}),
        .m_axi_awregion({axi_crossbar_1_M03_AXI_AWREGION,axi_crossbar_1_M02_AXI_AWREGION,axi_crossbar_1_M01_AXI_AWREGION,axi_crossbar_1_M00_AXI_AWREGION}),
        .m_axi_awsize({axi_crossbar_1_M03_AXI_AWSIZE,axi_crossbar_1_M02_AXI_AWSIZE,axi_crossbar_1_M01_AXI_AWSIZE,axi_crossbar_1_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_1_M03_AXI_AWVALID,axi_crossbar_1_M02_AXI_AWVALID,axi_crossbar_1_M01_AXI_AWVALID,axi_crossbar_1_M00_AXI_AWVALID}),
        .m_axi_bid({axi_crossbar_1_M03_AXI_BID,axi_crossbar_1_M02_AXI_BID,axi_crossbar_1_M01_AXI_BID,axi_crossbar_1_M00_AXI_BID}),
        .m_axi_bready({axi_crossbar_1_M03_AXI_BREADY,axi_crossbar_1_M02_AXI_BREADY,axi_crossbar_1_M01_AXI_BREADY,axi_crossbar_1_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_1_M03_AXI_BRESP,axi_crossbar_1_M02_AXI_BRESP,axi_crossbar_1_M01_AXI_BRESP,axi_crossbar_1_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_1_M03_AXI_BVALID,axi_crossbar_1_M02_AXI_BVALID,axi_crossbar_1_M01_AXI_BVALID,axi_crossbar_1_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_1_M03_AXI_RDATA,axi_crossbar_1_M02_AXI_RDATA,axi_crossbar_1_M01_AXI_RDATA,axi_crossbar_1_M00_AXI_RDATA}),
        .m_axi_rid({axi_crossbar_1_M03_AXI_RID,axi_crossbar_1_M02_AXI_RID,axi_crossbar_1_M01_AXI_RID,axi_crossbar_1_M00_AXI_RID}),
        .m_axi_rlast({axi_crossbar_1_M03_AXI_RLAST,axi_crossbar_1_M02_AXI_RLAST,axi_crossbar_1_M01_AXI_RLAST,axi_crossbar_1_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_1_M03_AXI_RREADY,axi_crossbar_1_M02_AXI_RREADY,axi_crossbar_1_M01_AXI_RREADY,axi_crossbar_1_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_1_M03_AXI_RRESP,axi_crossbar_1_M02_AXI_RRESP,axi_crossbar_1_M01_AXI_RRESP,axi_crossbar_1_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_1_M03_AXI_RVALID,axi_crossbar_1_M02_AXI_RVALID,axi_crossbar_1_M01_AXI_RVALID,axi_crossbar_1_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_1_M03_AXI_WDATA,axi_crossbar_1_M02_AXI_WDATA,axi_crossbar_1_M01_AXI_WDATA,axi_crossbar_1_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_1_M03_AXI_WLAST,axi_crossbar_1_M02_AXI_WLAST,axi_crossbar_1_M01_AXI_WLAST,axi_crossbar_1_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_1_M03_AXI_WREADY,axi_crossbar_1_M02_AXI_WREADY,axi_crossbar_1_M01_AXI_WREADY,axi_crossbar_1_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_1_M03_AXI_WSTRB,axi_crossbar_1_M02_AXI_WSTRB,axi_crossbar_1_M01_AXI_WSTRB,axi_crossbar_1_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_1_M03_AXI_WVALID,axi_crossbar_1_M02_AXI_WVALID,axi_crossbar_1_M01_AXI_WVALID,axi_crossbar_1_M00_AXI_WVALID}),
        .s_axi_araddr({S02_AXI_0_1_ARADDR,S01_AXI_0_1_ARADDR,S00_AXI_0_1_ARADDR}),
        .s_axi_arburst({S02_AXI_0_1_ARBURST,S01_AXI_0_1_ARBURST,S00_AXI_0_1_ARBURST}),
        .s_axi_arcache({S02_AXI_0_1_ARCACHE,S01_AXI_0_1_ARCACHE,S00_AXI_0_1_ARCACHE}),
        .s_axi_arid({S02_AXI_0_1_ARID,S01_AXI_0_1_ARID,S00_AXI_0_1_ARID}),
        .s_axi_arlen({S02_AXI_0_1_ARLEN,S01_AXI_0_1_ARLEN,S00_AXI_0_1_ARLEN}),
        .s_axi_arlock({S02_AXI_0_1_ARLOCK,S01_AXI_0_1_ARLOCK,S00_AXI_0_1_ARLOCK}),
        .s_axi_arprot({S02_AXI_0_1_ARPROT,S01_AXI_0_1_ARPROT,S00_AXI_0_1_ARPROT}),
        .s_axi_arqos({S02_AXI_0_1_ARQOS,S01_AXI_0_1_ARQOS,S00_AXI_0_1_ARQOS}),
        .s_axi_arready({S02_AXI_0_1_ARREADY,S01_AXI_0_1_ARREADY,S00_AXI_0_1_ARREADY}),
        .s_axi_arsize({S02_AXI_0_1_ARSIZE,S01_AXI_0_1_ARSIZE,S00_AXI_0_1_ARSIZE}),
        .s_axi_arvalid({S02_AXI_0_1_ARVALID,S01_AXI_0_1_ARVALID,S00_AXI_0_1_ARVALID}),
        .s_axi_awaddr({S02_AXI_0_1_AWADDR,S01_AXI_0_1_AWADDR,S00_AXI_0_1_AWADDR}),
        .s_axi_awburst({S02_AXI_0_1_AWBURST,S01_AXI_0_1_AWBURST,S00_AXI_0_1_AWBURST}),
        .s_axi_awcache({S02_AXI_0_1_AWCACHE,S01_AXI_0_1_AWCACHE,S00_AXI_0_1_AWCACHE}),
        .s_axi_awid({S02_AXI_0_1_AWID,S01_AXI_0_1_AWID,S00_AXI_0_1_AWID}),
        .s_axi_awlen({S02_AXI_0_1_AWLEN,S01_AXI_0_1_AWLEN,S00_AXI_0_1_AWLEN}),
        .s_axi_awlock({S02_AXI_0_1_AWLOCK,S01_AXI_0_1_AWLOCK,S00_AXI_0_1_AWLOCK}),
        .s_axi_awprot({S02_AXI_0_1_AWPROT,S01_AXI_0_1_AWPROT,S00_AXI_0_1_AWPROT}),
        .s_axi_awqos({S02_AXI_0_1_AWQOS,S01_AXI_0_1_AWQOS,S00_AXI_0_1_AWQOS}),
        .s_axi_awready({S02_AXI_0_1_AWREADY,S01_AXI_0_1_AWREADY,S00_AXI_0_1_AWREADY}),
        .s_axi_awsize({S02_AXI_0_1_AWSIZE,S01_AXI_0_1_AWSIZE,S00_AXI_0_1_AWSIZE}),
        .s_axi_awvalid({S02_AXI_0_1_AWVALID,S01_AXI_0_1_AWVALID,S00_AXI_0_1_AWVALID}),
        .s_axi_bid({S02_AXI_0_1_BID,S01_AXI_0_1_BID,S00_AXI_0_1_BID}),
        .s_axi_bready({S02_AXI_0_1_BREADY,S01_AXI_0_1_BREADY,S00_AXI_0_1_BREADY}),
        .s_axi_bresp({S02_AXI_0_1_BRESP,S01_AXI_0_1_BRESP,S00_AXI_0_1_BRESP}),
        .s_axi_bvalid({S02_AXI_0_1_BVALID,S01_AXI_0_1_BVALID,S00_AXI_0_1_BVALID}),
        .s_axi_rdata({S02_AXI_0_1_RDATA,S01_AXI_0_1_RDATA,S00_AXI_0_1_RDATA}),
        .s_axi_rid({S02_AXI_0_1_RID,S01_AXI_0_1_RID,S00_AXI_0_1_RID}),
        .s_axi_rlast({S02_AXI_0_1_RLAST,S01_AXI_0_1_RLAST,S00_AXI_0_1_RLAST}),
        .s_axi_rready({S02_AXI_0_1_RREADY,S01_AXI_0_1_RREADY,S00_AXI_0_1_RREADY}),
        .s_axi_rresp({S02_AXI_0_1_RRESP,S01_AXI_0_1_RRESP,S00_AXI_0_1_RRESP}),
        .s_axi_rvalid({S02_AXI_0_1_RVALID,S01_AXI_0_1_RVALID,S00_AXI_0_1_RVALID}),
        .s_axi_wdata({S02_AXI_0_1_WDATA,S01_AXI_0_1_WDATA,S00_AXI_0_1_WDATA}),
        .s_axi_wlast({S02_AXI_0_1_WLAST,S01_AXI_0_1_WLAST,S00_AXI_0_1_WLAST}),
        .s_axi_wready({S02_AXI_0_1_WREADY,S01_AXI_0_1_WREADY,S00_AXI_0_1_WREADY}),
        .s_axi_wstrb({S02_AXI_0_1_WSTRB,S01_AXI_0_1_WSTRB,S00_AXI_0_1_WSTRB}),
        .s_axi_wvalid({S02_AXI_0_1_WVALID,S01_AXI_0_1_WVALID,S00_AXI_0_1_WVALID}));
  xlx_design_subsystem_axi_dwidth_converter_0_0 axi_dwidth_converter_0
       (.m_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_dwidth_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_dwidth_converter_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_dwidth_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_dwidth_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_dwidth_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_dwidth_converter_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_dwidth_converter_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_dwidth_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_dwidth_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_dwidth_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_dwidth_converter_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_dwidth_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_dwidth_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_dwidth_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_dwidth_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_dwidth_converter_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_dwidth_converter_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_dwidth_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_dwidth_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_dwidth_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_dwidth_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_dwidth_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_dwidth_converter_0_M_AXI_RDATA),
        .m_axi_rlast(axi_dwidth_converter_0_M_AXI_RLAST),
        .m_axi_rready(axi_dwidth_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_dwidth_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_dwidth_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_dwidth_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_dwidth_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_dwidth_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_dwidth_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_dwidth_converter_0_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR),
        .s_axi_arburst(axi_crossbar_0_M01_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M01_AXI_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid(axi_crossbar_0_M01_AXI_ARID),
        .s_axi_arlen(axi_crossbar_0_M01_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M01_AXI_ARPROT),
        .s_axi_arqos(axi_crossbar_0_M01_AXI_ARQOS),
        .s_axi_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_arregion(axi_crossbar_0_M01_AXI_ARREGION),
        .s_axi_arsize(axi_crossbar_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M01_AXI_AWADDR),
        .s_axi_awburst(axi_crossbar_0_M01_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M01_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_0_M01_AXI_AWID),
        .s_axi_awlen(axi_crossbar_0_M01_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M01_AXI_AWPROT),
        .s_axi_awqos(axi_crossbar_0_M01_AXI_AWQOS),
        .s_axi_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axi_awregion(axi_crossbar_0_M01_AXI_AWREGION),
        .s_axi_awsize(axi_crossbar_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_0_M01_AXI_BID),
        .s_axi_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axi_rid(axi_crossbar_0_M01_AXI_RID),
        .s_axi_rlast(axi_crossbar_0_M01_AXI_RLAST),
        .s_axi_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_0_M01_AXI_WLAST),
        .s_axi_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M01_AXI_WVALID));
  xlx_design_subsystem_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_dwidth_converter_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_dwidth_converter_0_M_AXI_ARCACHE),
        .s_axi_arlen(axi_dwidth_converter_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_dwidth_converter_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .s_axi_arqos(axi_dwidth_converter_0_M_AXI_ARQOS),
        .s_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
        .s_axi_arregion(axi_dwidth_converter_0_M_AXI_ARREGION),
        .s_axi_arsize(axi_dwidth_converter_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_dwidth_converter_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_dwidth_converter_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_dwidth_converter_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_dwidth_converter_0_M_AXI_AWCACHE),
        .s_axi_awlen(axi_dwidth_converter_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_dwidth_converter_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_dwidth_converter_0_M_AXI_AWPROT),
        .s_axi_awqos(axi_dwidth_converter_0_M_AXI_AWQOS),
        .s_axi_awready(axi_dwidth_converter_0_M_AXI_AWREADY),
        .s_axi_awregion(axi_dwidth_converter_0_M_AXI_AWREGION),
        .s_axi_awsize(axi_dwidth_converter_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_dwidth_converter_0_M_AXI_AWVALID),
        .s_axi_bready(axi_dwidth_converter_0_M_AXI_BREADY),
        .s_axi_bresp(axi_dwidth_converter_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_dwidth_converter_0_M_AXI_BVALID),
        .s_axi_rdata(axi_dwidth_converter_0_M_AXI_RDATA),
        .s_axi_rlast(axi_dwidth_converter_0_M_AXI_RLAST),
        .s_axi_rready(axi_dwidth_converter_0_M_AXI_RREADY),
        .s_axi_rresp(axi_dwidth_converter_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_dwidth_converter_0_M_AXI_RVALID),
        .s_axi_wdata(axi_dwidth_converter_0_M_AXI_WDATA),
        .s_axi_wlast(axi_dwidth_converter_0_M_AXI_WLAST),
        .s_axi_wready(axi_dwidth_converter_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_dwidth_converter_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_dwidth_converter_0_M_AXI_WVALID));
  xlx_design_subsystem_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR[3:0]),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .s_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .s_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .s_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .s_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .s_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .s_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .s_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  xlx_design_subsystem_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
endmodule
