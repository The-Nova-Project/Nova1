//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sun Jun  5 08:24:44 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target xlx_design_subsystem.bd
//Design      : xlx_design_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "xlx_design_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xlx_design_subsystem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "xlx_design_subsystem.hwdef" *) 
module xlx_design_subsystem
   (BAR1_araddr,
    BAR1_arburst,
    BAR1_arcache,
    BAR1_arid,
    BAR1_arlen,
    BAR1_arlock,
    BAR1_arprot,
    BAR1_arqos,
    BAR1_arready,
    BAR1_arsize,
    BAR1_arvalid,
    BAR1_awaddr,
    BAR1_awburst,
    BAR1_awcache,
    BAR1_awid,
    BAR1_awlen,
    BAR1_awlock,
    BAR1_awprot,
    BAR1_awqos,
    BAR1_awready,
    BAR1_awsize,
    BAR1_awvalid,
    BAR1_bid,
    BAR1_bready,
    BAR1_bresp,
    BAR1_bvalid,
    BAR1_rdata,
    BAR1_rid,
    BAR1_rlast,
    BAR1_rready,
    BAR1_rresp,
    BAR1_rvalid,
    BAR1_wdata,
    BAR1_wlast,
    BAR1_wready,
    BAR1_wstrb,
    BAR1_wvalid,
    DDR_m_araddr,
    DDR_m_arburst,
    DDR_m_arcache,
    DDR_m_arid,
    DDR_m_arlen,
    DDR_m_arlock,
    DDR_m_arprot,
    DDR_m_arqos,
    DDR_m_arready,
    DDR_m_arregion,
    DDR_m_arsize,
    DDR_m_arvalid,
    DDR_m_awaddr,
    DDR_m_awburst,
    DDR_m_awcache,
    DDR_m_awid,
    DDR_m_awlen,
    DDR_m_awlock,
    DDR_m_awprot,
    DDR_m_awqos,
    DDR_m_awready,
    DDR_m_awregion,
    DDR_m_awsize,
    DDR_m_awvalid,
    DDR_m_bid,
    DDR_m_bready,
    DDR_m_bresp,
    DDR_m_bvalid,
    DDR_m_rdata,
    DDR_m_rid,
    DDR_m_rlast,
    DDR_m_rready,
    DDR_m_rresp,
    DDR_m_rvalid,
    DDR_m_wdata,
    DDR_m_wlast,
    DDR_m_wready,
    DDR_m_wstrb,
    DDR_m_wvalid,
    MTML_m_araddr,
    MTML_m_arburst,
    MTML_m_arcache,
    MTML_m_arid,
    MTML_m_arlen,
    MTML_m_arlock,
    MTML_m_arprot,
    MTML_m_arqos,
    MTML_m_arready,
    MTML_m_arregion,
    MTML_m_arsize,
    MTML_m_arvalid,
    MTML_m_awaddr,
    MTML_m_awburst,
    MTML_m_awcache,
    MTML_m_awid,
    MTML_m_awlen,
    MTML_m_awlock,
    MTML_m_awprot,
    MTML_m_awqos,
    MTML_m_awready,
    MTML_m_awregion,
    MTML_m_awsize,
    MTML_m_awvalid,
    MTML_m_bid,
    MTML_m_bready,
    MTML_m_bresp,
    MTML_m_bvalid,
    MTML_m_rdata,
    MTML_m_rid,
    MTML_m_rlast,
    MTML_m_rready,
    MTML_m_rresp,
    MTML_m_rvalid,
    MTML_m_wdata,
    MTML_m_wlast,
    MTML_m_wready,
    MTML_m_wstrb,
    MTML_m_wvalid,
    MTML_s_araddr,
    MTML_s_arburst,
    MTML_s_arcache,
    MTML_s_arid,
    MTML_s_arlen,
    MTML_s_arlock,
    MTML_s_arprot,
    MTML_s_arqos,
    MTML_s_arready,
    MTML_s_arsize,
    MTML_s_arvalid,
    MTML_s_awaddr,
    MTML_s_awburst,
    MTML_s_awcache,
    MTML_s_awid,
    MTML_s_awlen,
    MTML_s_awlock,
    MTML_s_awprot,
    MTML_s_awqos,
    MTML_s_awready,
    MTML_s_awsize,
    MTML_s_awvalid,
    MTML_s_bid,
    MTML_s_bready,
    MTML_s_bresp,
    MTML_s_bvalid,
    MTML_s_rdata,
    MTML_s_rid,
    MTML_s_rlast,
    MTML_s_rready,
    MTML_s_rresp,
    MTML_s_rvalid,
    MTML_s_wdata,
    MTML_s_wlast,
    MTML_s_wready,
    MTML_s_wstrb,
    MTML_s_wvalid,
    SMU_m_araddr,
    SMU_m_arburst,
    SMU_m_arcache,
    SMU_m_arid,
    SMU_m_arlen,
    SMU_m_arlock,
    SMU_m_arprot,
    SMU_m_arqos,
    SMU_m_arready,
    SMU_m_arregion,
    SMU_m_arsize,
    SMU_m_arvalid,
    SMU_m_awaddr,
    SMU_m_awburst,
    SMU_m_awcache,
    SMU_m_awid,
    SMU_m_awlen,
    SMU_m_awlock,
    SMU_m_awprot,
    SMU_m_awqos,
    SMU_m_awready,
    SMU_m_awregion,
    SMU_m_awsize,
    SMU_m_awvalid,
    SMU_m_bid,
    SMU_m_bready,
    SMU_m_bresp,
    SMU_m_bvalid,
    SMU_m_rdata,
    SMU_m_rid,
    SMU_m_rlast,
    SMU_m_rready,
    SMU_m_rresp,
    SMU_m_rvalid,
    SMU_m_wdata,
    SMU_m_wlast,
    SMU_m_wready,
    SMU_m_wstrb,
    SMU_m_wvalid,
    UART_0_rxd,
    UART_0_txd,
    ethernet_m_araddr,
    ethernet_m_arburst,
    ethernet_m_arcache,
    ethernet_m_arid,
    ethernet_m_arlen,
    ethernet_m_arlock,
    ethernet_m_arprot,
    ethernet_m_arqos,
    ethernet_m_arready,
    ethernet_m_arregion,
    ethernet_m_arsize,
    ethernet_m_arvalid,
    ethernet_m_awaddr,
    ethernet_m_awburst,
    ethernet_m_awcache,
    ethernet_m_awid,
    ethernet_m_awlen,
    ethernet_m_awlock,
    ethernet_m_awprot,
    ethernet_m_awqos,
    ethernet_m_awready,
    ethernet_m_awregion,
    ethernet_m_awsize,
    ethernet_m_awvalid,
    ethernet_m_bid,
    ethernet_m_bready,
    ethernet_m_bresp,
    ethernet_m_bvalid,
    ethernet_m_rdata,
    ethernet_m_rid,
    ethernet_m_rlast,
    ethernet_m_rready,
    ethernet_m_rresp,
    ethernet_m_rvalid,
    ethernet_m_wdata,
    ethernet_m_wlast,
    ethernet_m_wready,
    ethernet_m_wstrb,
    ethernet_m_wvalid,
    hydra_s_araddr,
    hydra_s_arburst,
    hydra_s_arcache,
    hydra_s_arid,
    hydra_s_arlen,
    hydra_s_arlock,
    hydra_s_arprot,
    hydra_s_arqos,
    hydra_s_arready,
    hydra_s_arsize,
    hydra_s_arvalid,
    hydra_s_awaddr,
    hydra_s_awburst,
    hydra_s_awcache,
    hydra_s_awid,
    hydra_s_awlen,
    hydra_s_awlock,
    hydra_s_awprot,
    hydra_s_awqos,
    hydra_s_awready,
    hydra_s_awsize,
    hydra_s_awvalid,
    hydra_s_bid,
    hydra_s_bready,
    hydra_s_bresp,
    hydra_s_bvalid,
    hydra_s_rdata,
    hydra_s_rid,
    hydra_s_rlast,
    hydra_s_rready,
    hydra_s_rresp,
    hydra_s_rvalid,
    hydra_s_wdata,
    hydra_s_wlast,
    hydra_s_wready,
    hydra_s_wstrb,
    hydra_s_wvalid,
    interrupt_0,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BAR1, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]BAR1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARBURST" *) input [1:0]BAR1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARCACHE" *) input [3:0]BAR1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARID" *) input [4:0]BAR1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARLEN" *) input [7:0]BAR1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARLOCK" *) input [0:0]BAR1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARPROT" *) input [2:0]BAR1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARQOS" *) input [3:0]BAR1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARREADY" *) output [0:0]BAR1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARSIZE" *) input [2:0]BAR1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 ARVALID" *) input [0:0]BAR1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWADDR" *) input [63:0]BAR1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWBURST" *) input [1:0]BAR1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWCACHE" *) input [3:0]BAR1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWID" *) input [4:0]BAR1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWLEN" *) input [7:0]BAR1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWLOCK" *) input [0:0]BAR1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWPROT" *) input [2:0]BAR1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWQOS" *) input [3:0]BAR1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWREADY" *) output [0:0]BAR1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWSIZE" *) input [2:0]BAR1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 AWVALID" *) input [0:0]BAR1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 BID" *) output [4:0]BAR1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 BREADY" *) input [0:0]BAR1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 BRESP" *) output [1:0]BAR1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 BVALID" *) output [0:0]BAR1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 RDATA" *) output [63:0]BAR1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 RID" *) output [4:0]BAR1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 RLAST" *) output [0:0]BAR1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 RREADY" *) input [0:0]BAR1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 RRESP" *) output [1:0]BAR1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 RVALID" *) output [0:0]BAR1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 WDATA" *) input [63:0]BAR1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 WLAST" *) input [0:0]BAR1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 WREADY" *) output [0:0]BAR1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 WSTRB" *) input [7:0]BAR1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1 WVALID" *) input [0:0]BAR1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]DDR_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARBURST" *) output [1:0]DDR_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARCACHE" *) output [3:0]DDR_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARID" *) output [4:0]DDR_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARLEN" *) output [7:0]DDR_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARLOCK" *) output [0:0]DDR_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARPROT" *) output [2:0]DDR_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARQOS" *) output [3:0]DDR_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARREADY" *) input [0:0]DDR_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARREGION" *) output [3:0]DDR_m_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARSIZE" *) output [2:0]DDR_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m ARVALID" *) output [0:0]DDR_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWADDR" *) output [63:0]DDR_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWBURST" *) output [1:0]DDR_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWCACHE" *) output [3:0]DDR_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWID" *) output [4:0]DDR_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWLEN" *) output [7:0]DDR_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWLOCK" *) output [0:0]DDR_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWPROT" *) output [2:0]DDR_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWQOS" *) output [3:0]DDR_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWREADY" *) input [0:0]DDR_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWREGION" *) output [3:0]DDR_m_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWSIZE" *) output [2:0]DDR_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m AWVALID" *) output [0:0]DDR_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m BID" *) input [4:0]DDR_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m BREADY" *) output [0:0]DDR_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m BRESP" *) input [1:0]DDR_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m BVALID" *) input [0:0]DDR_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m RDATA" *) input [63:0]DDR_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m RID" *) input [4:0]DDR_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m RLAST" *) input [0:0]DDR_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m RREADY" *) output [0:0]DDR_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m RRESP" *) input [1:0]DDR_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m RVALID" *) input [0:0]DDR_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m WDATA" *) output [63:0]DDR_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m WLAST" *) output [0:0]DDR_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m WREADY" *) input [0:0]DDR_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m WSTRB" *) output [7:0]DDR_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_m WVALID" *) output [0:0]DDR_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MTML_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]MTML_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARBURST" *) output [1:0]MTML_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARCACHE" *) output [3:0]MTML_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARID" *) output [4:0]MTML_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARLEN" *) output [7:0]MTML_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARLOCK" *) output [0:0]MTML_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARPROT" *) output [2:0]MTML_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARQOS" *) output [3:0]MTML_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARREADY" *) input [0:0]MTML_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARREGION" *) output [3:0]MTML_m_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARSIZE" *) output [2:0]MTML_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m ARVALID" *) output [0:0]MTML_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWADDR" *) output [63:0]MTML_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWBURST" *) output [1:0]MTML_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWCACHE" *) output [3:0]MTML_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWID" *) output [4:0]MTML_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWLEN" *) output [7:0]MTML_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWLOCK" *) output [0:0]MTML_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWPROT" *) output [2:0]MTML_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWQOS" *) output [3:0]MTML_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWREADY" *) input [0:0]MTML_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWREGION" *) output [3:0]MTML_m_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWSIZE" *) output [2:0]MTML_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m AWVALID" *) output [0:0]MTML_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m BID" *) input [4:0]MTML_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m BREADY" *) output [0:0]MTML_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m BRESP" *) input [1:0]MTML_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m BVALID" *) input [0:0]MTML_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m RDATA" *) input [63:0]MTML_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m RID" *) input [4:0]MTML_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m RLAST" *) input [0:0]MTML_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m RREADY" *) output [0:0]MTML_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m RRESP" *) input [1:0]MTML_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m RVALID" *) input [0:0]MTML_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m WDATA" *) output [63:0]MTML_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m WLAST" *) output [0:0]MTML_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m WREADY" *) input [0:0]MTML_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m WSTRB" *) output [7:0]MTML_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_m WVALID" *) output [0:0]MTML_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MTML_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]MTML_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARBURST" *) input [1:0]MTML_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARCACHE" *) input [3:0]MTML_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARID" *) input [4:0]MTML_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARLEN" *) input [7:0]MTML_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARLOCK" *) input [0:0]MTML_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARPROT" *) input [2:0]MTML_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARQOS" *) input [3:0]MTML_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARREADY" *) output [0:0]MTML_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARSIZE" *) input [2:0]MTML_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s ARVALID" *) input [0:0]MTML_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWADDR" *) input [63:0]MTML_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWBURST" *) input [1:0]MTML_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWCACHE" *) input [3:0]MTML_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWID" *) input [4:0]MTML_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWLEN" *) input [7:0]MTML_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWLOCK" *) input [0:0]MTML_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWPROT" *) input [2:0]MTML_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWQOS" *) input [3:0]MTML_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWREADY" *) output [0:0]MTML_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWSIZE" *) input [2:0]MTML_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s AWVALID" *) input [0:0]MTML_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s BID" *) output [4:0]MTML_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s BREADY" *) input [0:0]MTML_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s BRESP" *) output [1:0]MTML_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s BVALID" *) output [0:0]MTML_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s RDATA" *) output [63:0]MTML_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s RID" *) output [4:0]MTML_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s RLAST" *) output [0:0]MTML_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s RREADY" *) input [0:0]MTML_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s RRESP" *) output [1:0]MTML_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s RVALID" *) output [0:0]MTML_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s WDATA" *) input [63:0]MTML_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s WLAST" *) input [0:0]MTML_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s WREADY" *) output [0:0]MTML_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s WSTRB" *) input [7:0]MTML_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MTML_s WVALID" *) input [0:0]MTML_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SMU_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [191:128]SMU_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARBURST" *) output [5:4]SMU_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARCACHE" *) output [11:8]SMU_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARID" *) output [14:10]SMU_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARLEN" *) output [23:16]SMU_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARLOCK" *) output [2:2]SMU_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARPROT" *) output [8:6]SMU_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARQOS" *) output [11:8]SMU_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARREADY" *) input [2:2]SMU_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARREGION" *) output [11:8]SMU_m_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARSIZE" *) output [8:6]SMU_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m ARVALID" *) output [2:2]SMU_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWADDR" *) output [191:128]SMU_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWBURST" *) output [5:4]SMU_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWCACHE" *) output [11:8]SMU_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWID" *) output [14:10]SMU_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWLEN" *) output [23:16]SMU_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWLOCK" *) output [2:2]SMU_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWPROT" *) output [8:6]SMU_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWQOS" *) output [11:8]SMU_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWREADY" *) input [2:2]SMU_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWREGION" *) output [11:8]SMU_m_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWSIZE" *) output [8:6]SMU_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m AWVALID" *) output [2:2]SMU_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m BID" *) input [14:10]SMU_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m BREADY" *) output [2:2]SMU_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m BRESP" *) input [5:4]SMU_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m BVALID" *) input [2:2]SMU_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m RDATA" *) input [191:128]SMU_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m RID" *) input [14:10]SMU_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m RLAST" *) input [2:2]SMU_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m RREADY" *) output [2:2]SMU_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m RRESP" *) input [5:4]SMU_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m RVALID" *) input [2:2]SMU_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m WDATA" *) output [191:128]SMU_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m WLAST" *) output [2:2]SMU_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m WREADY" *) input [2:2]SMU_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m WSTRB" *) output [23:16]SMU_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SMU_m WVALID" *) output [2:2]SMU_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 RxD" *) input UART_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 TxD" *) output UART_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ethernet_m, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [255:192]ethernet_m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARBURST" *) output [7:6]ethernet_m_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARCACHE" *) output [15:12]ethernet_m_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARID" *) output [19:15]ethernet_m_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARLEN" *) output [31:24]ethernet_m_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARLOCK" *) output [3:3]ethernet_m_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARPROT" *) output [11:9]ethernet_m_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARQOS" *) output [15:12]ethernet_m_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARREADY" *) input [3:3]ethernet_m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARREGION" *) output [15:12]ethernet_m_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARSIZE" *) output [11:9]ethernet_m_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m ARVALID" *) output [3:3]ethernet_m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWADDR" *) output [255:192]ethernet_m_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWBURST" *) output [7:6]ethernet_m_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWCACHE" *) output [15:12]ethernet_m_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWID" *) output [19:15]ethernet_m_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWLEN" *) output [31:24]ethernet_m_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWLOCK" *) output [3:3]ethernet_m_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWPROT" *) output [11:9]ethernet_m_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWQOS" *) output [15:12]ethernet_m_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWREADY" *) input [3:3]ethernet_m_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWREGION" *) output [15:12]ethernet_m_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWSIZE" *) output [11:9]ethernet_m_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m AWVALID" *) output [3:3]ethernet_m_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m BID" *) input [19:15]ethernet_m_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m BREADY" *) output [3:3]ethernet_m_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m BRESP" *) input [7:6]ethernet_m_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m BVALID" *) input [3:3]ethernet_m_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m RDATA" *) input [255:192]ethernet_m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m RID" *) input [19:15]ethernet_m_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m RLAST" *) input [3:3]ethernet_m_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m RREADY" *) output [3:3]ethernet_m_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m RRESP" *) input [7:6]ethernet_m_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m RVALID" *) input [3:3]ethernet_m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m WDATA" *) output [255:192]ethernet_m_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m WLAST" *) output [3:3]ethernet_m_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m WREADY" *) input [3:3]ethernet_m_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m WSTRB" *) output [31:24]ethernet_m_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ethernet_m WVALID" *) output [3:3]ethernet_m_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hydra_s, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]hydra_s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARBURST" *) input [1:0]hydra_s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARCACHE" *) input [3:0]hydra_s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARID" *) input [4:0]hydra_s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARLEN" *) input [7:0]hydra_s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARLOCK" *) input [0:0]hydra_s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARPROT" *) input [2:0]hydra_s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARQOS" *) input [3:0]hydra_s_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARREADY" *) output [0:0]hydra_s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARSIZE" *) input [2:0]hydra_s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s ARVALID" *) input [0:0]hydra_s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWADDR" *) input [63:0]hydra_s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWBURST" *) input [1:0]hydra_s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWCACHE" *) input [3:0]hydra_s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWID" *) input [4:0]hydra_s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWLEN" *) input [7:0]hydra_s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWLOCK" *) input [0:0]hydra_s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWPROT" *) input [2:0]hydra_s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWQOS" *) input [3:0]hydra_s_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWREADY" *) output [0:0]hydra_s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWSIZE" *) input [2:0]hydra_s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s AWVALID" *) input [0:0]hydra_s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s BID" *) output [4:0]hydra_s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s BREADY" *) input [0:0]hydra_s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s BRESP" *) output [1:0]hydra_s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s BVALID" *) output [0:0]hydra_s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s RDATA" *) output [63:0]hydra_s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s RID" *) output [4:0]hydra_s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s RLAST" *) output [0:0]hydra_s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s RREADY" *) input [0:0]hydra_s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s RRESP" *) output [1:0]hydra_s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s RVALID" *) output [0:0]hydra_s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s WDATA" *) input [63:0]hydra_s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s WLAST" *) input [0:0]hydra_s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s WREADY" *) output [0:0]hydra_s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s WSTRB" *) input [7:0]hydra_s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 hydra_s WVALID" *) input [0:0]hydra_s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_0;
  (* LOCKED = "TRUE" *) (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF SMU_m:ethernet_m:BAR1:hydra_s:MTML_s:DDR_m:MTML_m, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN xlx_design_subsystem_s_axi_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* LOCKED = "TRUE" *) (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

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
  wire [63:0]S01_AXI_0_2_ARADDR;
  wire [1:0]S01_AXI_0_2_ARBURST;
  wire [3:0]S01_AXI_0_2_ARCACHE;
  wire [4:0]S01_AXI_0_2_ARID;
  wire [7:0]S01_AXI_0_2_ARLEN;
  wire [0:0]S01_AXI_0_2_ARLOCK;
  wire [2:0]S01_AXI_0_2_ARPROT;
  wire [3:0]S01_AXI_0_2_ARQOS;
  wire [1:1]S01_AXI_0_2_ARREADY;
  wire [2:0]S01_AXI_0_2_ARSIZE;
  wire [0:0]S01_AXI_0_2_ARVALID;
  wire [63:0]S01_AXI_0_2_AWADDR;
  wire [1:0]S01_AXI_0_2_AWBURST;
  wire [3:0]S01_AXI_0_2_AWCACHE;
  wire [4:0]S01_AXI_0_2_AWID;
  wire [7:0]S01_AXI_0_2_AWLEN;
  wire [0:0]S01_AXI_0_2_AWLOCK;
  wire [2:0]S01_AXI_0_2_AWPROT;
  wire [3:0]S01_AXI_0_2_AWQOS;
  wire [1:1]S01_AXI_0_2_AWREADY;
  wire [2:0]S01_AXI_0_2_AWSIZE;
  wire [0:0]S01_AXI_0_2_AWVALID;
  wire [9:5]S01_AXI_0_2_BID;
  wire [0:0]S01_AXI_0_2_BREADY;
  wire [3:2]S01_AXI_0_2_BRESP;
  wire [1:1]S01_AXI_0_2_BVALID;
  wire [127:64]S01_AXI_0_2_RDATA;
  wire [9:5]S01_AXI_0_2_RID;
  wire [1:1]S01_AXI_0_2_RLAST;
  wire [0:0]S01_AXI_0_2_RREADY;
  wire [3:2]S01_AXI_0_2_RRESP;
  wire [1:1]S01_AXI_0_2_RVALID;
  wire [63:0]S01_AXI_0_2_WDATA;
  wire [0:0]S01_AXI_0_2_WLAST;
  wire [1:1]S01_AXI_0_2_WREADY;
  wire [7:0]S01_AXI_0_2_WSTRB;
  wire [0:0]S01_AXI_0_2_WVALID;
  wire [63:0]S02_AXI_0_1_ARADDR;
  wire [1:0]S02_AXI_0_1_ARBURST;
  wire [3:0]S02_AXI_0_1_ARCACHE;
  wire [4:0]S02_AXI_0_1_ARID;
  wire [7:0]S02_AXI_0_1_ARLEN;
  wire [0:0]S02_AXI_0_1_ARLOCK;
  wire [2:0]S02_AXI_0_1_ARPROT;
  wire [3:0]S02_AXI_0_1_ARQOS;
  wire [2:2]S02_AXI_0_1_ARREADY;
  wire [2:0]S02_AXI_0_1_ARSIZE;
  wire [0:0]S02_AXI_0_1_ARVALID;
  wire [63:0]S02_AXI_0_1_AWADDR;
  wire [1:0]S02_AXI_0_1_AWBURST;
  wire [3:0]S02_AXI_0_1_AWCACHE;
  wire [4:0]S02_AXI_0_1_AWID;
  wire [7:0]S02_AXI_0_1_AWLEN;
  wire [0:0]S02_AXI_0_1_AWLOCK;
  wire [2:0]S02_AXI_0_1_AWPROT;
  wire [3:0]S02_AXI_0_1_AWQOS;
  wire [2:2]S02_AXI_0_1_AWREADY;
  wire [2:0]S02_AXI_0_1_AWSIZE;
  wire [0:0]S02_AXI_0_1_AWVALID;
  wire [14:10]S02_AXI_0_1_BID;
  wire [0:0]S02_AXI_0_1_BREADY;
  wire [5:4]S02_AXI_0_1_BRESP;
  wire [2:2]S02_AXI_0_1_BVALID;
  wire [191:128]S02_AXI_0_1_RDATA;
  wire [14:10]S02_AXI_0_1_RID;
  wire [2:2]S02_AXI_0_1_RLAST;
  wire [0:0]S02_AXI_0_1_RREADY;
  wire [5:4]S02_AXI_0_1_RRESP;
  wire [2:2]S02_AXI_0_1_RVALID;
  wire [63:0]S02_AXI_0_1_WDATA;
  wire [0:0]S02_AXI_0_1_WLAST;
  wire [2:2]S02_AXI_0_1_WREADY;
  wire [7:0]S02_AXI_0_1_WSTRB;
  wire [0:0]S02_AXI_0_1_WVALID;
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
  wire [0:0]axi_crossbar_0_M04_AXI_ARREADY;
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
  wire [0:0]axi_crossbar_0_M04_AXI_AWREADY;
  wire [19:16]axi_crossbar_0_M04_AXI_AWREGION;
  wire [14:12]axi_crossbar_0_M04_AXI_AWSIZE;
  wire [4:4]axi_crossbar_0_M04_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M04_AXI_BID;
  wire [4:4]axi_crossbar_0_M04_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M04_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M04_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M04_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M04_AXI_RID;
  wire [0:0]axi_crossbar_0_M04_AXI_RLAST;
  wire [4:4]axi_crossbar_0_M04_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M04_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M04_AXI_RVALID;
  wire [319:256]axi_crossbar_0_M04_AXI_WDATA;
  wire [4:4]axi_crossbar_0_M04_AXI_WLAST;
  wire [0:0]axi_crossbar_0_M04_AXI_WREADY;
  wire [39:32]axi_crossbar_0_M04_AXI_WSTRB;
  wire [4:4]axi_crossbar_0_M04_AXI_WVALID;
  wire [383:320]axi_crossbar_0_M05_AXI_ARADDR;
  wire [11:10]axi_crossbar_0_M05_AXI_ARBURST;
  wire [23:20]axi_crossbar_0_M05_AXI_ARCACHE;
  wire [29:25]axi_crossbar_0_M05_AXI_ARID;
  wire [47:40]axi_crossbar_0_M05_AXI_ARLEN;
  wire [5:5]axi_crossbar_0_M05_AXI_ARLOCK;
  wire [17:15]axi_crossbar_0_M05_AXI_ARPROT;
  wire [23:20]axi_crossbar_0_M05_AXI_ARQOS;
  wire [0:0]axi_crossbar_0_M05_AXI_ARREADY;
  wire [23:20]axi_crossbar_0_M05_AXI_ARREGION;
  wire [17:15]axi_crossbar_0_M05_AXI_ARSIZE;
  wire [5:5]axi_crossbar_0_M05_AXI_ARVALID;
  wire [383:320]axi_crossbar_0_M05_AXI_AWADDR;
  wire [11:10]axi_crossbar_0_M05_AXI_AWBURST;
  wire [23:20]axi_crossbar_0_M05_AXI_AWCACHE;
  wire [29:25]axi_crossbar_0_M05_AXI_AWID;
  wire [47:40]axi_crossbar_0_M05_AXI_AWLEN;
  wire [5:5]axi_crossbar_0_M05_AXI_AWLOCK;
  wire [17:15]axi_crossbar_0_M05_AXI_AWPROT;
  wire [23:20]axi_crossbar_0_M05_AXI_AWQOS;
  wire [0:0]axi_crossbar_0_M05_AXI_AWREADY;
  wire [23:20]axi_crossbar_0_M05_AXI_AWREGION;
  wire [17:15]axi_crossbar_0_M05_AXI_AWSIZE;
  wire [5:5]axi_crossbar_0_M05_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M05_AXI_BID;
  wire [5:5]axi_crossbar_0_M05_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M05_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M05_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M05_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M05_AXI_RID;
  wire [0:0]axi_crossbar_0_M05_AXI_RLAST;
  wire [5:5]axi_crossbar_0_M05_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M05_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M05_AXI_RVALID;
  wire [383:320]axi_crossbar_0_M05_AXI_WDATA;
  wire [5:5]axi_crossbar_0_M05_AXI_WLAST;
  wire [0:0]axi_crossbar_0_M05_AXI_WREADY;
  wire [47:40]axi_crossbar_0_M05_AXI_WSTRB;
  wire [5:5]axi_crossbar_0_M05_AXI_WVALID;
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
  wire [23:0]NLW_axi_crossbar_0_m_axi_arqos_UNCONNECTED;
  wire [23:0]NLW_axi_crossbar_0_m_axi_arregion_UNCONNECTED;
  wire [23:0]NLW_axi_crossbar_0_m_axi_awqos_UNCONNECTED;
  wire [23:0]NLW_axi_crossbar_0_m_axi_awregion_UNCONNECTED;

  assign BAR1_arready[0] = S00_AXI_0_2_ARREADY;
  assign BAR1_awready[0] = S00_AXI_0_2_AWREADY;
  assign BAR1_bid[4:0] = S00_AXI_0_2_BID;
  assign BAR1_bresp[1:0] = S00_AXI_0_2_BRESP;
  assign BAR1_bvalid[0] = S00_AXI_0_2_BVALID;
  assign BAR1_rdata[63:0] = S00_AXI_0_2_RDATA;
  assign BAR1_rid[4:0] = S00_AXI_0_2_RID;
  assign BAR1_rlast[0] = S00_AXI_0_2_RLAST;
  assign BAR1_rresp[1:0] = S00_AXI_0_2_RRESP;
  assign BAR1_rvalid[0] = S00_AXI_0_2_RVALID;
  assign BAR1_wready[0] = S00_AXI_0_2_WREADY;
  assign DDR_m_araddr[63:0] = axi_crossbar_0_M04_AXI_ARADDR;
  assign DDR_m_arburst[1:0] = axi_crossbar_0_M04_AXI_ARBURST;
  assign DDR_m_arcache[3:0] = axi_crossbar_0_M04_AXI_ARCACHE;
  assign DDR_m_arid[4:0] = axi_crossbar_0_M04_AXI_ARID;
  assign DDR_m_arlen[7:0] = axi_crossbar_0_M04_AXI_ARLEN;
  assign DDR_m_arlock[0] = axi_crossbar_0_M04_AXI_ARLOCK;
  assign DDR_m_arprot[2:0] = axi_crossbar_0_M04_AXI_ARPROT;
  assign DDR_m_arqos[3:0] = axi_crossbar_0_M04_AXI_ARQOS;
  assign DDR_m_arregion[3:0] = axi_crossbar_0_M04_AXI_ARREGION;
  assign DDR_m_arsize[2:0] = axi_crossbar_0_M04_AXI_ARSIZE;
  assign DDR_m_arvalid[0] = axi_crossbar_0_M04_AXI_ARVALID;
  assign DDR_m_awaddr[63:0] = axi_crossbar_0_M04_AXI_AWADDR;
  assign DDR_m_awburst[1:0] = axi_crossbar_0_M04_AXI_AWBURST;
  assign DDR_m_awcache[3:0] = axi_crossbar_0_M04_AXI_AWCACHE;
  assign DDR_m_awid[4:0] = axi_crossbar_0_M04_AXI_AWID;
  assign DDR_m_awlen[7:0] = axi_crossbar_0_M04_AXI_AWLEN;
  assign DDR_m_awlock[0] = axi_crossbar_0_M04_AXI_AWLOCK;
  assign DDR_m_awprot[2:0] = axi_crossbar_0_M04_AXI_AWPROT;
  assign DDR_m_awqos[3:0] = axi_crossbar_0_M04_AXI_AWQOS;
  assign DDR_m_awregion[3:0] = axi_crossbar_0_M04_AXI_AWREGION;
  assign DDR_m_awsize[2:0] = axi_crossbar_0_M04_AXI_AWSIZE;
  assign DDR_m_awvalid[0] = axi_crossbar_0_M04_AXI_AWVALID;
  assign DDR_m_bready[0] = axi_crossbar_0_M04_AXI_BREADY;
  assign DDR_m_rready[0] = axi_crossbar_0_M04_AXI_RREADY;
  assign DDR_m_wdata[63:0] = axi_crossbar_0_M04_AXI_WDATA;
  assign DDR_m_wlast[0] = axi_crossbar_0_M04_AXI_WLAST;
  assign DDR_m_wstrb[7:0] = axi_crossbar_0_M04_AXI_WSTRB;
  assign DDR_m_wvalid[0] = axi_crossbar_0_M04_AXI_WVALID;
  assign MTML_m_araddr[63:0] = axi_crossbar_0_M05_AXI_ARADDR;
  assign MTML_m_arburst[1:0] = axi_crossbar_0_M05_AXI_ARBURST;
  assign MTML_m_arcache[3:0] = axi_crossbar_0_M05_AXI_ARCACHE;
  assign MTML_m_arid[4:0] = axi_crossbar_0_M05_AXI_ARID;
  assign MTML_m_arlen[7:0] = axi_crossbar_0_M05_AXI_ARLEN;
  assign MTML_m_arlock[0] = axi_crossbar_0_M05_AXI_ARLOCK;
  assign MTML_m_arprot[2:0] = axi_crossbar_0_M05_AXI_ARPROT;
  assign MTML_m_arqos[3:0] = axi_crossbar_0_M05_AXI_ARQOS;
  assign MTML_m_arregion[3:0] = axi_crossbar_0_M05_AXI_ARREGION;
  assign MTML_m_arsize[2:0] = axi_crossbar_0_M05_AXI_ARSIZE;
  assign MTML_m_arvalid[0] = axi_crossbar_0_M05_AXI_ARVALID;
  assign MTML_m_awaddr[63:0] = axi_crossbar_0_M05_AXI_AWADDR;
  assign MTML_m_awburst[1:0] = axi_crossbar_0_M05_AXI_AWBURST;
  assign MTML_m_awcache[3:0] = axi_crossbar_0_M05_AXI_AWCACHE;
  assign MTML_m_awid[4:0] = axi_crossbar_0_M05_AXI_AWID;
  assign MTML_m_awlen[7:0] = axi_crossbar_0_M05_AXI_AWLEN;
  assign MTML_m_awlock[0] = axi_crossbar_0_M05_AXI_AWLOCK;
  assign MTML_m_awprot[2:0] = axi_crossbar_0_M05_AXI_AWPROT;
  assign MTML_m_awqos[3:0] = axi_crossbar_0_M05_AXI_AWQOS;
  assign MTML_m_awregion[3:0] = axi_crossbar_0_M05_AXI_AWREGION;
  assign MTML_m_awsize[2:0] = axi_crossbar_0_M05_AXI_AWSIZE;
  assign MTML_m_awvalid[0] = axi_crossbar_0_M05_AXI_AWVALID;
  assign MTML_m_bready[0] = axi_crossbar_0_M05_AXI_BREADY;
  assign MTML_m_rready[0] = axi_crossbar_0_M05_AXI_RREADY;
  assign MTML_m_wdata[63:0] = axi_crossbar_0_M05_AXI_WDATA;
  assign MTML_m_wlast[0] = axi_crossbar_0_M05_AXI_WLAST;
  assign MTML_m_wstrb[7:0] = axi_crossbar_0_M05_AXI_WSTRB;
  assign MTML_m_wvalid[0] = axi_crossbar_0_M05_AXI_WVALID;
  assign MTML_s_arready[0] = S02_AXI_0_1_ARREADY;
  assign MTML_s_awready[0] = S02_AXI_0_1_AWREADY;
  assign MTML_s_bid[4:0] = S02_AXI_0_1_BID;
  assign MTML_s_bresp[1:0] = S02_AXI_0_1_BRESP;
  assign MTML_s_bvalid[0] = S02_AXI_0_1_BVALID;
  assign MTML_s_rdata[63:0] = S02_AXI_0_1_RDATA;
  assign MTML_s_rid[4:0] = S02_AXI_0_1_RID;
  assign MTML_s_rlast[0] = S02_AXI_0_1_RLAST;
  assign MTML_s_rresp[1:0] = S02_AXI_0_1_RRESP;
  assign MTML_s_rvalid[0] = S02_AXI_0_1_RVALID;
  assign MTML_s_wready[0] = S02_AXI_0_1_WREADY;
  assign S00_AXI_0_2_ARADDR = BAR1_araddr[63:0];
  assign S00_AXI_0_2_ARBURST = BAR1_arburst[1:0];
  assign S00_AXI_0_2_ARCACHE = BAR1_arcache[3:0];
  assign S00_AXI_0_2_ARID = BAR1_arid[4:0];
  assign S00_AXI_0_2_ARLEN = BAR1_arlen[7:0];
  assign S00_AXI_0_2_ARLOCK = BAR1_arlock[0];
  assign S00_AXI_0_2_ARPROT = BAR1_arprot[2:0];
  assign S00_AXI_0_2_ARQOS = BAR1_arqos[3:0];
  assign S00_AXI_0_2_ARSIZE = BAR1_arsize[2:0];
  assign S00_AXI_0_2_ARVALID = BAR1_arvalid[0];
  assign S00_AXI_0_2_AWADDR = BAR1_awaddr[63:0];
  assign S00_AXI_0_2_AWBURST = BAR1_awburst[1:0];
  assign S00_AXI_0_2_AWCACHE = BAR1_awcache[3:0];
  assign S00_AXI_0_2_AWID = BAR1_awid[4:0];
  assign S00_AXI_0_2_AWLEN = BAR1_awlen[7:0];
  assign S00_AXI_0_2_AWLOCK = BAR1_awlock[0];
  assign S00_AXI_0_2_AWPROT = BAR1_awprot[2:0];
  assign S00_AXI_0_2_AWQOS = BAR1_awqos[3:0];
  assign S00_AXI_0_2_AWSIZE = BAR1_awsize[2:0];
  assign S00_AXI_0_2_AWVALID = BAR1_awvalid[0];
  assign S00_AXI_0_2_BREADY = BAR1_bready[0];
  assign S00_AXI_0_2_RREADY = BAR1_rready[0];
  assign S00_AXI_0_2_WDATA = BAR1_wdata[63:0];
  assign S00_AXI_0_2_WLAST = BAR1_wlast[0];
  assign S00_AXI_0_2_WSTRB = BAR1_wstrb[7:0];
  assign S00_AXI_0_2_WVALID = BAR1_wvalid[0];
  assign S01_AXI_0_2_ARADDR = hydra_s_araddr[63:0];
  assign S01_AXI_0_2_ARBURST = hydra_s_arburst[1:0];
  assign S01_AXI_0_2_ARCACHE = hydra_s_arcache[3:0];
  assign S01_AXI_0_2_ARID = hydra_s_arid[4:0];
  assign S01_AXI_0_2_ARLEN = hydra_s_arlen[7:0];
  assign S01_AXI_0_2_ARLOCK = hydra_s_arlock[0];
  assign S01_AXI_0_2_ARPROT = hydra_s_arprot[2:0];
  assign S01_AXI_0_2_ARQOS = hydra_s_arqos[3:0];
  assign S01_AXI_0_2_ARSIZE = hydra_s_arsize[2:0];
  assign S01_AXI_0_2_ARVALID = hydra_s_arvalid[0];
  assign S01_AXI_0_2_AWADDR = hydra_s_awaddr[63:0];
  assign S01_AXI_0_2_AWBURST = hydra_s_awburst[1:0];
  assign S01_AXI_0_2_AWCACHE = hydra_s_awcache[3:0];
  assign S01_AXI_0_2_AWID = hydra_s_awid[4:0];
  assign S01_AXI_0_2_AWLEN = hydra_s_awlen[7:0];
  assign S01_AXI_0_2_AWLOCK = hydra_s_awlock[0];
  assign S01_AXI_0_2_AWPROT = hydra_s_awprot[2:0];
  assign S01_AXI_0_2_AWQOS = hydra_s_awqos[3:0];
  assign S01_AXI_0_2_AWSIZE = hydra_s_awsize[2:0];
  assign S01_AXI_0_2_AWVALID = hydra_s_awvalid[0];
  assign S01_AXI_0_2_BREADY = hydra_s_bready[0];
  assign S01_AXI_0_2_RREADY = hydra_s_rready[0];
  assign S01_AXI_0_2_WDATA = hydra_s_wdata[63:0];
  assign S01_AXI_0_2_WLAST = hydra_s_wlast[0];
  assign S01_AXI_0_2_WSTRB = hydra_s_wstrb[7:0];
  assign S01_AXI_0_2_WVALID = hydra_s_wvalid[0];
  assign S02_AXI_0_1_ARADDR = MTML_s_araddr[63:0];
  assign S02_AXI_0_1_ARBURST = MTML_s_arburst[1:0];
  assign S02_AXI_0_1_ARCACHE = MTML_s_arcache[3:0];
  assign S02_AXI_0_1_ARID = MTML_s_arid[4:0];
  assign S02_AXI_0_1_ARLEN = MTML_s_arlen[7:0];
  assign S02_AXI_0_1_ARLOCK = MTML_s_arlock[0];
  assign S02_AXI_0_1_ARPROT = MTML_s_arprot[2:0];
  assign S02_AXI_0_1_ARQOS = MTML_s_arqos[3:0];
  assign S02_AXI_0_1_ARSIZE = MTML_s_arsize[2:0];
  assign S02_AXI_0_1_ARVALID = MTML_s_arvalid[0];
  assign S02_AXI_0_1_AWADDR = MTML_s_awaddr[63:0];
  assign S02_AXI_0_1_AWBURST = MTML_s_awburst[1:0];
  assign S02_AXI_0_1_AWCACHE = MTML_s_awcache[3:0];
  assign S02_AXI_0_1_AWID = MTML_s_awid[4:0];
  assign S02_AXI_0_1_AWLEN = MTML_s_awlen[7:0];
  assign S02_AXI_0_1_AWLOCK = MTML_s_awlock[0];
  assign S02_AXI_0_1_AWPROT = MTML_s_awprot[2:0];
  assign S02_AXI_0_1_AWQOS = MTML_s_awqos[3:0];
  assign S02_AXI_0_1_AWSIZE = MTML_s_awsize[2:0];
  assign S02_AXI_0_1_AWVALID = MTML_s_awvalid[0];
  assign S02_AXI_0_1_BREADY = MTML_s_bready[0];
  assign S02_AXI_0_1_RREADY = MTML_s_rready[0];
  assign S02_AXI_0_1_WDATA = MTML_s_wdata[63:0];
  assign S02_AXI_0_1_WLAST = MTML_s_wlast[0];
  assign S02_AXI_0_1_WSTRB = MTML_s_wstrb[7:0];
  assign S02_AXI_0_1_WVALID = MTML_s_wvalid[0];
  assign SMU_m_araddr[191:128] = axi_crossbar_0_M02_AXI_ARADDR;
  assign SMU_m_arburst[5:4] = axi_crossbar_0_M02_AXI_ARBURST;
  assign SMU_m_arcache[11:8] = axi_crossbar_0_M02_AXI_ARCACHE;
  assign SMU_m_arid[14:10] = axi_crossbar_0_M02_AXI_ARID;
  assign SMU_m_arlen[23:16] = axi_crossbar_0_M02_AXI_ARLEN;
  assign SMU_m_arlock[2] = axi_crossbar_0_M02_AXI_ARLOCK;
  assign SMU_m_arprot[8:6] = axi_crossbar_0_M02_AXI_ARPROT;
  assign SMU_m_arqos[11:8] = axi_crossbar_0_M02_AXI_ARQOS;
  assign SMU_m_arregion[11:8] = axi_crossbar_0_M02_AXI_ARREGION;
  assign SMU_m_arsize[8:6] = axi_crossbar_0_M02_AXI_ARSIZE;
  assign SMU_m_arvalid[2] = axi_crossbar_0_M02_AXI_ARVALID;
  assign SMU_m_awaddr[191:128] = axi_crossbar_0_M02_AXI_AWADDR;
  assign SMU_m_awburst[5:4] = axi_crossbar_0_M02_AXI_AWBURST;
  assign SMU_m_awcache[11:8] = axi_crossbar_0_M02_AXI_AWCACHE;
  assign SMU_m_awid[14:10] = axi_crossbar_0_M02_AXI_AWID;
  assign SMU_m_awlen[23:16] = axi_crossbar_0_M02_AXI_AWLEN;
  assign SMU_m_awlock[2] = axi_crossbar_0_M02_AXI_AWLOCK;
  assign SMU_m_awprot[8:6] = axi_crossbar_0_M02_AXI_AWPROT;
  assign SMU_m_awqos[11:8] = axi_crossbar_0_M02_AXI_AWQOS;
  assign SMU_m_awregion[11:8] = axi_crossbar_0_M02_AXI_AWREGION;
  assign SMU_m_awsize[8:6] = axi_crossbar_0_M02_AXI_AWSIZE;
  assign SMU_m_awvalid[2] = axi_crossbar_0_M02_AXI_AWVALID;
  assign SMU_m_bready[2] = axi_crossbar_0_M02_AXI_BREADY;
  assign SMU_m_rready[2] = axi_crossbar_0_M02_AXI_RREADY;
  assign SMU_m_wdata[191:128] = axi_crossbar_0_M02_AXI_WDATA;
  assign SMU_m_wlast[2] = axi_crossbar_0_M02_AXI_WLAST;
  assign SMU_m_wstrb[23:16] = axi_crossbar_0_M02_AXI_WSTRB;
  assign SMU_m_wvalid[2] = axi_crossbar_0_M02_AXI_WVALID;
  assign UART_0_txd = axi_uartlite_0_UART_TxD;
  assign axi_crossbar_0_M02_AXI_ARREADY = SMU_m_arready[2];
  assign axi_crossbar_0_M02_AXI_AWREADY = SMU_m_awready[2];
  assign axi_crossbar_0_M02_AXI_BID = SMU_m_bid[14:10];
  assign axi_crossbar_0_M02_AXI_BRESP = SMU_m_bresp[5:4];
  assign axi_crossbar_0_M02_AXI_BVALID = SMU_m_bvalid[2];
  assign axi_crossbar_0_M02_AXI_RDATA = SMU_m_rdata[191:128];
  assign axi_crossbar_0_M02_AXI_RID = SMU_m_rid[14:10];
  assign axi_crossbar_0_M02_AXI_RLAST = SMU_m_rlast[2];
  assign axi_crossbar_0_M02_AXI_RRESP = SMU_m_rresp[5:4];
  assign axi_crossbar_0_M02_AXI_RVALID = SMU_m_rvalid[2];
  assign axi_crossbar_0_M02_AXI_WREADY = SMU_m_wready[2];
  assign axi_crossbar_0_M03_AXI_ARREADY = ethernet_m_arready[3];
  assign axi_crossbar_0_M03_AXI_AWREADY = ethernet_m_awready[3];
  assign axi_crossbar_0_M03_AXI_BID = ethernet_m_bid[19:15];
  assign axi_crossbar_0_M03_AXI_BRESP = ethernet_m_bresp[7:6];
  assign axi_crossbar_0_M03_AXI_BVALID = ethernet_m_bvalid[3];
  assign axi_crossbar_0_M03_AXI_RDATA = ethernet_m_rdata[255:192];
  assign axi_crossbar_0_M03_AXI_RID = ethernet_m_rid[19:15];
  assign axi_crossbar_0_M03_AXI_RLAST = ethernet_m_rlast[3];
  assign axi_crossbar_0_M03_AXI_RRESP = ethernet_m_rresp[7:6];
  assign axi_crossbar_0_M03_AXI_RVALID = ethernet_m_rvalid[3];
  assign axi_crossbar_0_M03_AXI_WREADY = ethernet_m_wready[3];
  assign axi_crossbar_0_M04_AXI_ARREADY = DDR_m_arready[0];
  assign axi_crossbar_0_M04_AXI_AWREADY = DDR_m_awready[0];
  assign axi_crossbar_0_M04_AXI_BID = DDR_m_bid[4:0];
  assign axi_crossbar_0_M04_AXI_BRESP = DDR_m_bresp[1:0];
  assign axi_crossbar_0_M04_AXI_BVALID = DDR_m_bvalid[0];
  assign axi_crossbar_0_M04_AXI_RDATA = DDR_m_rdata[63:0];
  assign axi_crossbar_0_M04_AXI_RID = DDR_m_rid[4:0];
  assign axi_crossbar_0_M04_AXI_RLAST = DDR_m_rlast[0];
  assign axi_crossbar_0_M04_AXI_RRESP = DDR_m_rresp[1:0];
  assign axi_crossbar_0_M04_AXI_RVALID = DDR_m_rvalid[0];
  assign axi_crossbar_0_M04_AXI_WREADY = DDR_m_wready[0];
  assign axi_crossbar_0_M05_AXI_ARREADY = MTML_m_arready[0];
  assign axi_crossbar_0_M05_AXI_AWREADY = MTML_m_awready[0];
  assign axi_crossbar_0_M05_AXI_BID = MTML_m_bid[4:0];
  assign axi_crossbar_0_M05_AXI_BRESP = MTML_m_bresp[1:0];
  assign axi_crossbar_0_M05_AXI_BVALID = MTML_m_bvalid[0];
  assign axi_crossbar_0_M05_AXI_RDATA = MTML_m_rdata[63:0];
  assign axi_crossbar_0_M05_AXI_RID = MTML_m_rid[4:0];
  assign axi_crossbar_0_M05_AXI_RLAST = MTML_m_rlast[0];
  assign axi_crossbar_0_M05_AXI_RRESP = MTML_m_rresp[1:0];
  assign axi_crossbar_0_M05_AXI_RVALID = MTML_m_rvalid[0];
  assign axi_crossbar_0_M05_AXI_WREADY = MTML_m_wready[0];
  assign axi_uartlite_0_UART_RxD = UART_0_rxd;
  assign ethernet_m_araddr[255:192] = axi_crossbar_0_M03_AXI_ARADDR;
  assign ethernet_m_arburst[7:6] = axi_crossbar_0_M03_AXI_ARBURST;
  assign ethernet_m_arcache[15:12] = axi_crossbar_0_M03_AXI_ARCACHE;
  assign ethernet_m_arid[19:15] = axi_crossbar_0_M03_AXI_ARID;
  assign ethernet_m_arlen[31:24] = axi_crossbar_0_M03_AXI_ARLEN;
  assign ethernet_m_arlock[3] = axi_crossbar_0_M03_AXI_ARLOCK;
  assign ethernet_m_arprot[11:9] = axi_crossbar_0_M03_AXI_ARPROT;
  assign ethernet_m_arqos[15:12] = axi_crossbar_0_M03_AXI_ARQOS;
  assign ethernet_m_arregion[15:12] = axi_crossbar_0_M03_AXI_ARREGION;
  assign ethernet_m_arsize[11:9] = axi_crossbar_0_M03_AXI_ARSIZE;
  assign ethernet_m_arvalid[3] = axi_crossbar_0_M03_AXI_ARVALID;
  assign ethernet_m_awaddr[255:192] = axi_crossbar_0_M03_AXI_AWADDR;
  assign ethernet_m_awburst[7:6] = axi_crossbar_0_M03_AXI_AWBURST;
  assign ethernet_m_awcache[15:12] = axi_crossbar_0_M03_AXI_AWCACHE;
  assign ethernet_m_awid[19:15] = axi_crossbar_0_M03_AXI_AWID;
  assign ethernet_m_awlen[31:24] = axi_crossbar_0_M03_AXI_AWLEN;
  assign ethernet_m_awlock[3] = axi_crossbar_0_M03_AXI_AWLOCK;
  assign ethernet_m_awprot[11:9] = axi_crossbar_0_M03_AXI_AWPROT;
  assign ethernet_m_awqos[15:12] = axi_crossbar_0_M03_AXI_AWQOS;
  assign ethernet_m_awregion[15:12] = axi_crossbar_0_M03_AXI_AWREGION;
  assign ethernet_m_awsize[11:9] = axi_crossbar_0_M03_AXI_AWSIZE;
  assign ethernet_m_awvalid[3] = axi_crossbar_0_M03_AXI_AWVALID;
  assign ethernet_m_bready[3] = axi_crossbar_0_M03_AXI_BREADY;
  assign ethernet_m_rready[3] = axi_crossbar_0_M03_AXI_RREADY;
  assign ethernet_m_wdata[255:192] = axi_crossbar_0_M03_AXI_WDATA;
  assign ethernet_m_wlast[3] = axi_crossbar_0_M03_AXI_WLAST;
  assign ethernet_m_wstrb[31:24] = axi_crossbar_0_M03_AXI_WSTRB;
  assign ethernet_m_wvalid[3] = axi_crossbar_0_M03_AXI_WVALID;
  assign hydra_s_arready[0] = S01_AXI_0_2_ARREADY;
  assign hydra_s_awready[0] = S01_AXI_0_2_AWREADY;
  assign hydra_s_bid[4:0] = S01_AXI_0_2_BID;
  assign hydra_s_bresp[1:0] = S01_AXI_0_2_BRESP;
  assign hydra_s_bvalid[0] = S01_AXI_0_2_BVALID;
  assign hydra_s_rdata[63:0] = S01_AXI_0_2_RDATA;
  assign hydra_s_rid[4:0] = S01_AXI_0_2_RID;
  assign hydra_s_rlast[0] = S01_AXI_0_2_RLAST;
  assign hydra_s_rresp[1:0] = S01_AXI_0_2_RRESP;
  assign hydra_s_rvalid[0] = S01_AXI_0_2_RVALID;
  assign hydra_s_wready[0] = S01_AXI_0_2_WREADY;
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
        .m_axi_araddr({axi_crossbar_0_M05_AXI_ARADDR,axi_crossbar_0_M04_AXI_ARADDR,axi_crossbar_0_M03_AXI_ARADDR,axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_0_M05_AXI_ARBURST,axi_crossbar_0_M04_AXI_ARBURST,axi_crossbar_0_M03_AXI_ARBURST,axi_crossbar_0_M02_AXI_ARBURST,axi_crossbar_0_M01_AXI_ARBURST,axi_crossbar_0_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_0_M05_AXI_ARCACHE,axi_crossbar_0_M04_AXI_ARCACHE,axi_crossbar_0_M03_AXI_ARCACHE,axi_crossbar_0_M02_AXI_ARCACHE,axi_crossbar_0_M01_AXI_ARCACHE,axi_crossbar_0_M00_AXI_ARCACHE}),
        .m_axi_arid({axi_crossbar_0_M05_AXI_ARID,axi_crossbar_0_M04_AXI_ARID,axi_crossbar_0_M03_AXI_ARID,axi_crossbar_0_M02_AXI_ARID,axi_crossbar_0_M01_AXI_ARID,axi_crossbar_0_M00_AXI_ARID}),
        .m_axi_arlen({axi_crossbar_0_M05_AXI_ARLEN,axi_crossbar_0_M04_AXI_ARLEN,axi_crossbar_0_M03_AXI_ARLEN,axi_crossbar_0_M02_AXI_ARLEN,axi_crossbar_0_M01_AXI_ARLEN,axi_crossbar_0_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_0_M05_AXI_ARLOCK,axi_crossbar_0_M04_AXI_ARLOCK,axi_crossbar_0_M03_AXI_ARLOCK,axi_crossbar_0_M02_AXI_ARLOCK,axi_crossbar_0_M01_AXI_ARLOCK,axi_crossbar_0_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_0_M05_AXI_ARPROT,axi_crossbar_0_M04_AXI_ARPROT,axi_crossbar_0_M03_AXI_ARPROT,axi_crossbar_0_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,axi_crossbar_0_M00_AXI_ARPROT}),
        .m_axi_arqos({axi_crossbar_0_M05_AXI_ARQOS,axi_crossbar_0_M04_AXI_ARQOS,axi_crossbar_0_M03_AXI_ARQOS,axi_crossbar_0_M02_AXI_ARQOS,axi_crossbar_0_M01_AXI_ARQOS,NLW_axi_crossbar_0_m_axi_arqos_UNCONNECTED[3:0]}),
        .m_axi_arready({axi_crossbar_0_M05_AXI_ARREADY,axi_crossbar_0_M04_AXI_ARREADY,axi_crossbar_0_M03_AXI_ARREADY,axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arregion({axi_crossbar_0_M05_AXI_ARREGION,axi_crossbar_0_M04_AXI_ARREGION,axi_crossbar_0_M03_AXI_ARREGION,axi_crossbar_0_M02_AXI_ARREGION,axi_crossbar_0_M01_AXI_ARREGION,NLW_axi_crossbar_0_m_axi_arregion_UNCONNECTED[3:0]}),
        .m_axi_arsize({axi_crossbar_0_M05_AXI_ARSIZE,axi_crossbar_0_M04_AXI_ARSIZE,axi_crossbar_0_M03_AXI_ARSIZE,axi_crossbar_0_M02_AXI_ARSIZE,axi_crossbar_0_M01_AXI_ARSIZE,axi_crossbar_0_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_0_M05_AXI_ARVALID,axi_crossbar_0_M04_AXI_ARVALID,axi_crossbar_0_M03_AXI_ARVALID,axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M05_AXI_AWADDR,axi_crossbar_0_M04_AXI_AWADDR,axi_crossbar_0_M03_AXI_AWADDR,axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_0_M05_AXI_AWBURST,axi_crossbar_0_M04_AXI_AWBURST,axi_crossbar_0_M03_AXI_AWBURST,axi_crossbar_0_M02_AXI_AWBURST,axi_crossbar_0_M01_AXI_AWBURST,axi_crossbar_0_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_0_M05_AXI_AWCACHE,axi_crossbar_0_M04_AXI_AWCACHE,axi_crossbar_0_M03_AXI_AWCACHE,axi_crossbar_0_M02_AXI_AWCACHE,axi_crossbar_0_M01_AXI_AWCACHE,axi_crossbar_0_M00_AXI_AWCACHE}),
        .m_axi_awid({axi_crossbar_0_M05_AXI_AWID,axi_crossbar_0_M04_AXI_AWID,axi_crossbar_0_M03_AXI_AWID,axi_crossbar_0_M02_AXI_AWID,axi_crossbar_0_M01_AXI_AWID,axi_crossbar_0_M00_AXI_AWID}),
        .m_axi_awlen({axi_crossbar_0_M05_AXI_AWLEN,axi_crossbar_0_M04_AXI_AWLEN,axi_crossbar_0_M03_AXI_AWLEN,axi_crossbar_0_M02_AXI_AWLEN,axi_crossbar_0_M01_AXI_AWLEN,axi_crossbar_0_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_0_M05_AXI_AWLOCK,axi_crossbar_0_M04_AXI_AWLOCK,axi_crossbar_0_M03_AXI_AWLOCK,axi_crossbar_0_M02_AXI_AWLOCK,axi_crossbar_0_M01_AXI_AWLOCK,axi_crossbar_0_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_0_M05_AXI_AWPROT,axi_crossbar_0_M04_AXI_AWPROT,axi_crossbar_0_M03_AXI_AWPROT,axi_crossbar_0_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,axi_crossbar_0_M00_AXI_AWPROT}),
        .m_axi_awqos({axi_crossbar_0_M05_AXI_AWQOS,axi_crossbar_0_M04_AXI_AWQOS,axi_crossbar_0_M03_AXI_AWQOS,axi_crossbar_0_M02_AXI_AWQOS,axi_crossbar_0_M01_AXI_AWQOS,NLW_axi_crossbar_0_m_axi_awqos_UNCONNECTED[3:0]}),
        .m_axi_awready({axi_crossbar_0_M05_AXI_AWREADY,axi_crossbar_0_M04_AXI_AWREADY,axi_crossbar_0_M03_AXI_AWREADY,axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awregion({axi_crossbar_0_M05_AXI_AWREGION,axi_crossbar_0_M04_AXI_AWREGION,axi_crossbar_0_M03_AXI_AWREGION,axi_crossbar_0_M02_AXI_AWREGION,axi_crossbar_0_M01_AXI_AWREGION,NLW_axi_crossbar_0_m_axi_awregion_UNCONNECTED[3:0]}),
        .m_axi_awsize({axi_crossbar_0_M05_AXI_AWSIZE,axi_crossbar_0_M04_AXI_AWSIZE,axi_crossbar_0_M03_AXI_AWSIZE,axi_crossbar_0_M02_AXI_AWSIZE,axi_crossbar_0_M01_AXI_AWSIZE,axi_crossbar_0_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_0_M05_AXI_AWVALID,axi_crossbar_0_M04_AXI_AWVALID,axi_crossbar_0_M03_AXI_AWVALID,axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bid({axi_crossbar_0_M05_AXI_BID,axi_crossbar_0_M04_AXI_BID,axi_crossbar_0_M03_AXI_BID,axi_crossbar_0_M02_AXI_BID,axi_crossbar_0_M01_AXI_BID,axi_crossbar_0_M00_AXI_BID}),
        .m_axi_bready({axi_crossbar_0_M05_AXI_BREADY,axi_crossbar_0_M04_AXI_BREADY,axi_crossbar_0_M03_AXI_BREADY,axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M05_AXI_BRESP,axi_crossbar_0_M04_AXI_BRESP,axi_crossbar_0_M03_AXI_BRESP,axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M05_AXI_BVALID,axi_crossbar_0_M04_AXI_BVALID,axi_crossbar_0_M03_AXI_BVALID,axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M05_AXI_RDATA,axi_crossbar_0_M04_AXI_RDATA,axi_crossbar_0_M03_AXI_RDATA,axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rid({axi_crossbar_0_M05_AXI_RID,axi_crossbar_0_M04_AXI_RID,axi_crossbar_0_M03_AXI_RID,axi_crossbar_0_M02_AXI_RID,axi_crossbar_0_M01_AXI_RID,axi_crossbar_0_M00_AXI_RID}),
        .m_axi_rlast({axi_crossbar_0_M05_AXI_RLAST,axi_crossbar_0_M04_AXI_RLAST,axi_crossbar_0_M03_AXI_RLAST,axi_crossbar_0_M02_AXI_RLAST,axi_crossbar_0_M01_AXI_RLAST,axi_crossbar_0_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_0_M05_AXI_RREADY,axi_crossbar_0_M04_AXI_RREADY,axi_crossbar_0_M03_AXI_RREADY,axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M05_AXI_RRESP,axi_crossbar_0_M04_AXI_RRESP,axi_crossbar_0_M03_AXI_RRESP,axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M05_AXI_RVALID,axi_crossbar_0_M04_AXI_RVALID,axi_crossbar_0_M03_AXI_RVALID,axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M05_AXI_WDATA,axi_crossbar_0_M04_AXI_WDATA,axi_crossbar_0_M03_AXI_WDATA,axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_0_M05_AXI_WLAST,axi_crossbar_0_M04_AXI_WLAST,axi_crossbar_0_M03_AXI_WLAST,axi_crossbar_0_M02_AXI_WLAST,axi_crossbar_0_M01_AXI_WLAST,axi_crossbar_0_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_0_M05_AXI_WREADY,axi_crossbar_0_M04_AXI_WREADY,axi_crossbar_0_M03_AXI_WREADY,axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M05_AXI_WSTRB,axi_crossbar_0_M04_AXI_WSTRB,axi_crossbar_0_M03_AXI_WSTRB,axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M05_AXI_WVALID,axi_crossbar_0_M04_AXI_WVALID,axi_crossbar_0_M03_AXI_WVALID,axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr({S02_AXI_0_1_ARADDR,S01_AXI_0_2_ARADDR,S00_AXI_0_2_ARADDR}),
        .s_axi_arburst({S02_AXI_0_1_ARBURST,S01_AXI_0_2_ARBURST,S00_AXI_0_2_ARBURST}),
        .s_axi_arcache({S02_AXI_0_1_ARCACHE,S01_AXI_0_2_ARCACHE,S00_AXI_0_2_ARCACHE}),
        .s_axi_arid({S02_AXI_0_1_ARID,S01_AXI_0_2_ARID,S00_AXI_0_2_ARID}),
        .s_axi_arlen({S02_AXI_0_1_ARLEN,S01_AXI_0_2_ARLEN,S00_AXI_0_2_ARLEN}),
        .s_axi_arlock({S02_AXI_0_1_ARLOCK,S01_AXI_0_2_ARLOCK,S00_AXI_0_2_ARLOCK}),
        .s_axi_arprot({S02_AXI_0_1_ARPROT,S01_AXI_0_2_ARPROT,S00_AXI_0_2_ARPROT}),
        .s_axi_arqos({S02_AXI_0_1_ARQOS,S01_AXI_0_2_ARQOS,S00_AXI_0_2_ARQOS}),
        .s_axi_arready({S02_AXI_0_1_ARREADY,S01_AXI_0_2_ARREADY,S00_AXI_0_2_ARREADY}),
        .s_axi_arsize({S02_AXI_0_1_ARSIZE,S01_AXI_0_2_ARSIZE,S00_AXI_0_2_ARSIZE}),
        .s_axi_arvalid({S02_AXI_0_1_ARVALID,S01_AXI_0_2_ARVALID,S00_AXI_0_2_ARVALID}),
        .s_axi_awaddr({S02_AXI_0_1_AWADDR,S01_AXI_0_2_AWADDR,S00_AXI_0_2_AWADDR}),
        .s_axi_awburst({S02_AXI_0_1_AWBURST,S01_AXI_0_2_AWBURST,S00_AXI_0_2_AWBURST}),
        .s_axi_awcache({S02_AXI_0_1_AWCACHE,S01_AXI_0_2_AWCACHE,S00_AXI_0_2_AWCACHE}),
        .s_axi_awid({S02_AXI_0_1_AWID,S01_AXI_0_2_AWID,S00_AXI_0_2_AWID}),
        .s_axi_awlen({S02_AXI_0_1_AWLEN,S01_AXI_0_2_AWLEN,S00_AXI_0_2_AWLEN}),
        .s_axi_awlock({S02_AXI_0_1_AWLOCK,S01_AXI_0_2_AWLOCK,S00_AXI_0_2_AWLOCK}),
        .s_axi_awprot({S02_AXI_0_1_AWPROT,S01_AXI_0_2_AWPROT,S00_AXI_0_2_AWPROT}),
        .s_axi_awqos({S02_AXI_0_1_AWQOS,S01_AXI_0_2_AWQOS,S00_AXI_0_2_AWQOS}),
        .s_axi_awready({S02_AXI_0_1_AWREADY,S01_AXI_0_2_AWREADY,S00_AXI_0_2_AWREADY}),
        .s_axi_awsize({S02_AXI_0_1_AWSIZE,S01_AXI_0_2_AWSIZE,S00_AXI_0_2_AWSIZE}),
        .s_axi_awvalid({S02_AXI_0_1_AWVALID,S01_AXI_0_2_AWVALID,S00_AXI_0_2_AWVALID}),
        .s_axi_bid({S02_AXI_0_1_BID,S01_AXI_0_2_BID,S00_AXI_0_2_BID}),
        .s_axi_bready({S02_AXI_0_1_BREADY,S01_AXI_0_2_BREADY,S00_AXI_0_2_BREADY}),
        .s_axi_bresp({S02_AXI_0_1_BRESP,S01_AXI_0_2_BRESP,S00_AXI_0_2_BRESP}),
        .s_axi_bvalid({S02_AXI_0_1_BVALID,S01_AXI_0_2_BVALID,S00_AXI_0_2_BVALID}),
        .s_axi_rdata({S02_AXI_0_1_RDATA,S01_AXI_0_2_RDATA,S00_AXI_0_2_RDATA}),
        .s_axi_rid({S02_AXI_0_1_RID,S01_AXI_0_2_RID,S00_AXI_0_2_RID}),
        .s_axi_rlast({S02_AXI_0_1_RLAST,S01_AXI_0_2_RLAST,S00_AXI_0_2_RLAST}),
        .s_axi_rready({S02_AXI_0_1_RREADY,S01_AXI_0_2_RREADY,S00_AXI_0_2_RREADY}),
        .s_axi_rresp({S02_AXI_0_1_RRESP,S01_AXI_0_2_RRESP,S00_AXI_0_2_RRESP}),
        .s_axi_rvalid({S02_AXI_0_1_RVALID,S01_AXI_0_2_RVALID,S00_AXI_0_2_RVALID}),
        .s_axi_wdata({S02_AXI_0_1_WDATA,S01_AXI_0_2_WDATA,S00_AXI_0_2_WDATA}),
        .s_axi_wlast({S02_AXI_0_1_WLAST,S01_AXI_0_2_WLAST,S00_AXI_0_2_WLAST}),
        .s_axi_wready({S02_AXI_0_1_WREADY,S01_AXI_0_2_WREADY,S00_AXI_0_2_WREADY}),
        .s_axi_wstrb({S02_AXI_0_1_WSTRB,S01_AXI_0_2_WSTRB,S00_AXI_0_2_WSTRB}),
        .s_axi_wvalid({S02_AXI_0_1_WVALID,S01_AXI_0_2_WVALID,S00_AXI_0_2_WVALID}));
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
