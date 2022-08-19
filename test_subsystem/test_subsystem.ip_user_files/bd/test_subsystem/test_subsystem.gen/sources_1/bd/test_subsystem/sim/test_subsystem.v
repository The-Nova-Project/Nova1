//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Thu Aug 18 11:05:05 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target test_subsystem.bd
//Design      : test_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "test_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test_subsystem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "test_subsystem.hwdef" *) 
module test_subsystem
   (DDR_AXI4_araddr,
    DDR_AXI4_arburst,
    DDR_AXI4_arcache,
    DDR_AXI4_arid,
    DDR_AXI4_arlen,
    DDR_AXI4_arlock,
    DDR_AXI4_arprot,
    DDR_AXI4_arqos,
    DDR_AXI4_arready,
    DDR_AXI4_arregion,
    DDR_AXI4_arsize,
    DDR_AXI4_arvalid,
    DDR_AXI4_awaddr,
    DDR_AXI4_awburst,
    DDR_AXI4_awcache,
    DDR_AXI4_awid,
    DDR_AXI4_awlen,
    DDR_AXI4_awlock,
    DDR_AXI4_awprot,
    DDR_AXI4_awqos,
    DDR_AXI4_awready,
    DDR_AXI4_awregion,
    DDR_AXI4_awsize,
    DDR_AXI4_awvalid,
    DDR_AXI4_bid,
    DDR_AXI4_bready,
    DDR_AXI4_bresp,
    DDR_AXI4_bvalid,
    DDR_AXI4_rdata,
    DDR_AXI4_rid,
    DDR_AXI4_rlast,
    DDR_AXI4_rready,
    DDR_AXI4_rresp,
    DDR_AXI4_rvalid,
    DDR_AXI4_wdata,
    DDR_AXI4_wlast,
    DDR_AXI4_wready,
    DDR_AXI4_wstrb,
    DDR_AXI4_wvalid,
    DMA_PCIS_AXI4_araddr,
    DMA_PCIS_AXI4_arburst,
    DMA_PCIS_AXI4_arcache,
    DMA_PCIS_AXI4_arid,
    DMA_PCIS_AXI4_arlen,
    DMA_PCIS_AXI4_arlock,
    DMA_PCIS_AXI4_arprot,
    DMA_PCIS_AXI4_arqos,
    DMA_PCIS_AXI4_arready,
    DMA_PCIS_AXI4_arsize,
    DMA_PCIS_AXI4_arvalid,
    DMA_PCIS_AXI4_awaddr,
    DMA_PCIS_AXI4_awburst,
    DMA_PCIS_AXI4_awcache,
    DMA_PCIS_AXI4_awid,
    DMA_PCIS_AXI4_awlen,
    DMA_PCIS_AXI4_awlock,
    DMA_PCIS_AXI4_awprot,
    DMA_PCIS_AXI4_awqos,
    DMA_PCIS_AXI4_awready,
    DMA_PCIS_AXI4_awsize,
    DMA_PCIS_AXI4_awvalid,
    DMA_PCIS_AXI4_bid,
    DMA_PCIS_AXI4_bready,
    DMA_PCIS_AXI4_bresp,
    DMA_PCIS_AXI4_bvalid,
    DMA_PCIS_AXI4_rdata,
    DMA_PCIS_AXI4_rid,
    DMA_PCIS_AXI4_rlast,
    DMA_PCIS_AXI4_rready,
    DMA_PCIS_AXI4_rresp,
    DMA_PCIS_AXI4_rvalid,
    DMA_PCIS_AXI4_wdata,
    DMA_PCIS_AXI4_wlast,
    DMA_PCIS_AXI4_wready,
    DMA_PCIS_AXI4_wstrb,
    DMA_PCIS_AXI4_wvalid,
    OCL_AXI4L_araddr,
    OCL_AXI4L_arprot,
    OCL_AXI4L_arready,
    OCL_AXI4L_arvalid,
    OCL_AXI4L_awaddr,
    OCL_AXI4L_awprot,
    OCL_AXI4L_awready,
    OCL_AXI4L_awvalid,
    OCL_AXI4L_bready,
    OCL_AXI4L_bresp,
    OCL_AXI4L_bvalid,
    OCL_AXI4L_rdata,
    OCL_AXI4L_rready,
    OCL_AXI4L_rresp,
    OCL_AXI4L_rvalid,
    OCL_AXI4L_wdata,
    OCL_AXI4L_wready,
    OCL_AXI4L_wstrb,
    OCL_AXI4L_wvalid,
    S_DDR_araddr,
    S_DDR_arburst,
    S_DDR_arcache,
    S_DDR_arid,
    S_DDR_arlen,
    S_DDR_arlock,
    S_DDR_arprot,
    S_DDR_arqos,
    S_DDR_arready,
    S_DDR_arregion,
    S_DDR_arsize,
    S_DDR_arvalid,
    S_DDR_awaddr,
    S_DDR_awburst,
    S_DDR_awcache,
    S_DDR_awid,
    S_DDR_awlen,
    S_DDR_awlock,
    S_DDR_awprot,
    S_DDR_awqos,
    S_DDR_awready,
    S_DDR_awregion,
    S_DDR_awsize,
    S_DDR_awvalid,
    S_DDR_bid,
    S_DDR_bready,
    S_DDR_bresp,
    S_DDR_bvalid,
    S_DDR_rdata,
    S_DDR_rid,
    S_DDR_rlast,
    S_DDR_rready,
    S_DDR_rresp,
    S_DDR_rvalid,
    S_DDR_wdata,
    S_DDR_wlast,
    S_DDR_wready,
    S_DDR_wstrb,
    S_DDR_wvalid,
    UART_0_rxd,
    UART_0_txd,
    interrupt_0,
    s_axi_aclk_0,
    s_axi_aresetn_0,
    tap_tck_0,
    tap_tdi_0,
    tap_tdo_0,
    tap_tms_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_AXI4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN test_subsystem_s_axi_aclk_0, DATA_WIDTH 512, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]DDR_AXI4_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARBURST" *) output [1:0]DDR_AXI4_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARCACHE" *) output [3:0]DDR_AXI4_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARID" *) output [15:0]DDR_AXI4_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARLEN" *) output [7:0]DDR_AXI4_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARLOCK" *) output [0:0]DDR_AXI4_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARPROT" *) output [2:0]DDR_AXI4_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARQOS" *) output [3:0]DDR_AXI4_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARREADY" *) input [0:0]DDR_AXI4_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARREGION" *) output [3:0]DDR_AXI4_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARSIZE" *) output [2:0]DDR_AXI4_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARVALID" *) output [0:0]DDR_AXI4_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWADDR" *) output [63:0]DDR_AXI4_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWBURST" *) output [1:0]DDR_AXI4_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWCACHE" *) output [3:0]DDR_AXI4_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWID" *) output [15:0]DDR_AXI4_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWLEN" *) output [7:0]DDR_AXI4_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWLOCK" *) output [0:0]DDR_AXI4_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWPROT" *) output [2:0]DDR_AXI4_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWQOS" *) output [3:0]DDR_AXI4_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWREADY" *) input [0:0]DDR_AXI4_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWREGION" *) output [3:0]DDR_AXI4_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWSIZE" *) output [2:0]DDR_AXI4_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 AWVALID" *) output [0:0]DDR_AXI4_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 BID" *) input [15:0]DDR_AXI4_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 BREADY" *) output [0:0]DDR_AXI4_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 BRESP" *) input [1:0]DDR_AXI4_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 BVALID" *) input [0:0]DDR_AXI4_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 RDATA" *) input [511:0]DDR_AXI4_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 RID" *) input [15:0]DDR_AXI4_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 RLAST" *) input [0:0]DDR_AXI4_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 RREADY" *) output [0:0]DDR_AXI4_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 RRESP" *) input [1:0]DDR_AXI4_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 RVALID" *) input [0:0]DDR_AXI4_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 WDATA" *) output [511:0]DDR_AXI4_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 WLAST" *) output [0:0]DDR_AXI4_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 WREADY" *) input [0:0]DDR_AXI4_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 WSTRB" *) output [63:0]DDR_AXI4_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 WVALID" *) output [0:0]DDR_AXI4_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DMA_PCIS_AXI4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN test_subsystem_s_axi_aclk_0, DATA_WIDTH 512, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]DMA_PCIS_AXI4_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARBURST" *) input [1:0]DMA_PCIS_AXI4_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARCACHE" *) input [3:0]DMA_PCIS_AXI4_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARID" *) input [15:0]DMA_PCIS_AXI4_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARLEN" *) input [7:0]DMA_PCIS_AXI4_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARLOCK" *) input [0:0]DMA_PCIS_AXI4_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARPROT" *) input [2:0]DMA_PCIS_AXI4_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARQOS" *) input [3:0]DMA_PCIS_AXI4_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARREADY" *) output [0:0]DMA_PCIS_AXI4_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARSIZE" *) input [2:0]DMA_PCIS_AXI4_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARVALID" *) input [0:0]DMA_PCIS_AXI4_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWADDR" *) input [63:0]DMA_PCIS_AXI4_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWBURST" *) input [1:0]DMA_PCIS_AXI4_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWCACHE" *) input [3:0]DMA_PCIS_AXI4_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWID" *) input [15:0]DMA_PCIS_AXI4_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWLEN" *) input [7:0]DMA_PCIS_AXI4_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWLOCK" *) input [0:0]DMA_PCIS_AXI4_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWPROT" *) input [2:0]DMA_PCIS_AXI4_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWQOS" *) input [3:0]DMA_PCIS_AXI4_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWREADY" *) output [0:0]DMA_PCIS_AXI4_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWSIZE" *) input [2:0]DMA_PCIS_AXI4_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 AWVALID" *) input [0:0]DMA_PCIS_AXI4_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 BID" *) output [15:0]DMA_PCIS_AXI4_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 BREADY" *) input [0:0]DMA_PCIS_AXI4_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 BRESP" *) output [1:0]DMA_PCIS_AXI4_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 BVALID" *) output [0:0]DMA_PCIS_AXI4_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 RDATA" *) output [511:0]DMA_PCIS_AXI4_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 RID" *) output [15:0]DMA_PCIS_AXI4_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 RLAST" *) output [0:0]DMA_PCIS_AXI4_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 RREADY" *) input [0:0]DMA_PCIS_AXI4_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 RRESP" *) output [1:0]DMA_PCIS_AXI4_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 RVALID" *) output [0:0]DMA_PCIS_AXI4_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 WDATA" *) input [511:0]DMA_PCIS_AXI4_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 WLAST" *) input [0:0]DMA_PCIS_AXI4_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 WREADY" *) output [0:0]DMA_PCIS_AXI4_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 WSTRB" *) input [63:0]DMA_PCIS_AXI4_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 WVALID" *) input [0:0]DMA_PCIS_AXI4_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OCL_AXI4L, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN test_subsystem_s_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]OCL_AXI4L_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L ARPROT" *) input [2:0]OCL_AXI4L_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L ARREADY" *) output [0:0]OCL_AXI4L_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L ARVALID" *) input [0:0]OCL_AXI4L_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L AWADDR" *) input [31:0]OCL_AXI4L_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L AWPROT" *) input [2:0]OCL_AXI4L_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L AWREADY" *) output [0:0]OCL_AXI4L_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L AWVALID" *) input [0:0]OCL_AXI4L_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L BREADY" *) input [0:0]OCL_AXI4L_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L BRESP" *) output [1:0]OCL_AXI4L_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L BVALID" *) output [0:0]OCL_AXI4L_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L RDATA" *) output [31:0]OCL_AXI4L_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L RREADY" *) input [0:0]OCL_AXI4L_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L RRESP" *) output [1:0]OCL_AXI4L_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L RVALID" *) output [0:0]OCL_AXI4L_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L WDATA" *) input [31:0]OCL_AXI4L_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L WREADY" *) output [0:0]OCL_AXI4L_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L WSTRB" *) input [3:0]OCL_AXI4L_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXI4L WVALID" *) input [0:0]OCL_AXI4L_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_DDR, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN test_subsystem_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_DDR_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARBURST" *) input [1:0]S_DDR_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARCACHE" *) input [3:0]S_DDR_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARID" *) input [15:0]S_DDR_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARLEN" *) input [7:0]S_DDR_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARLOCK" *) input [0:0]S_DDR_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARPROT" *) input [2:0]S_DDR_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARQOS" *) input [3:0]S_DDR_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARREADY" *) output S_DDR_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARREGION" *) input [3:0]S_DDR_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARSIZE" *) input [2:0]S_DDR_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR ARVALID" *) input S_DDR_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWADDR" *) input [63:0]S_DDR_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWBURST" *) input [1:0]S_DDR_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWCACHE" *) input [3:0]S_DDR_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWID" *) input [15:0]S_DDR_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWLEN" *) input [7:0]S_DDR_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWLOCK" *) input [0:0]S_DDR_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWPROT" *) input [2:0]S_DDR_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWQOS" *) input [3:0]S_DDR_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWREADY" *) output S_DDR_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWREGION" *) input [3:0]S_DDR_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWSIZE" *) input [2:0]S_DDR_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR AWVALID" *) input S_DDR_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR BID" *) output [15:0]S_DDR_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR BREADY" *) input S_DDR_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR BRESP" *) output [1:0]S_DDR_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR BVALID" *) output S_DDR_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR RDATA" *) output [63:0]S_DDR_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR RID" *) output [15:0]S_DDR_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR RLAST" *) output S_DDR_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR RREADY" *) input S_DDR_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR RRESP" *) output [1:0]S_DDR_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR RVALID" *) output S_DDR_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR WDATA" *) input [63:0]S_DDR_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR WLAST" *) input S_DDR_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR WREADY" *) output S_DDR_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR WSTRB" *) input [7:0]S_DDR_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_DDR WVALID" *) input S_DDR_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 RxD" *) input UART_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 TxD" *) output UART_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF S_DDR:DDR_AXI4:DMA_PCIS_AXI4:OCL_AXI4L, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN test_subsystem_s_axi_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;
  output tap_tck_0;
  output tap_tdi_0;
  input tap_tdo_0;
  output tap_tms_0;

  wire [31:0]S00_AXI_0_1_ARADDR;
  wire [2:0]S00_AXI_0_1_ARPROT;
  wire [0:0]S00_AXI_0_1_ARREADY;
  wire [0:0]S00_AXI_0_1_ARVALID;
  wire [31:0]S00_AXI_0_1_AWADDR;
  wire [2:0]S00_AXI_0_1_AWPROT;
  wire [0:0]S00_AXI_0_1_AWREADY;
  wire [0:0]S00_AXI_0_1_AWVALID;
  wire [0:0]S00_AXI_0_1_BREADY;
  wire [1:0]S00_AXI_0_1_BRESP;
  wire [0:0]S00_AXI_0_1_BVALID;
  wire [31:0]S00_AXI_0_1_RDATA;
  wire [0:0]S00_AXI_0_1_RREADY;
  wire [1:0]S00_AXI_0_1_RRESP;
  wire [0:0]S00_AXI_0_1_RVALID;
  wire [31:0]S00_AXI_0_1_WDATA;
  wire [0:0]S00_AXI_0_1_WREADY;
  wire [3:0]S00_AXI_0_1_WSTRB;
  wire [0:0]S00_AXI_0_1_WVALID;
  wire [63:0]S01_AXI_0_1_ARADDR;
  wire [1:0]S01_AXI_0_1_ARBURST;
  wire [3:0]S01_AXI_0_1_ARCACHE;
  wire [15:0]S01_AXI_0_1_ARID;
  wire [7:0]S01_AXI_0_1_ARLEN;
  wire [0:0]S01_AXI_0_1_ARLOCK;
  wire [2:0]S01_AXI_0_1_ARPROT;
  wire [3:0]S01_AXI_0_1_ARQOS;
  wire [1:1]S01_AXI_0_1_ARREADY;
  wire [2:0]S01_AXI_0_1_ARSIZE;
  wire [0:0]S01_AXI_0_1_ARVALID;
  wire [63:0]S01_AXI_0_1_AWADDR;
  wire [1:0]S01_AXI_0_1_AWBURST;
  wire [3:0]S01_AXI_0_1_AWCACHE;
  wire [15:0]S01_AXI_0_1_AWID;
  wire [7:0]S01_AXI_0_1_AWLEN;
  wire [0:0]S01_AXI_0_1_AWLOCK;
  wire [2:0]S01_AXI_0_1_AWPROT;
  wire [3:0]S01_AXI_0_1_AWQOS;
  wire [1:1]S01_AXI_0_1_AWREADY;
  wire [2:0]S01_AXI_0_1_AWSIZE;
  wire [0:0]S01_AXI_0_1_AWVALID;
  wire [31:16]S01_AXI_0_1_BID;
  wire [0:0]S01_AXI_0_1_BREADY;
  wire [3:2]S01_AXI_0_1_BRESP;
  wire [1:1]S01_AXI_0_1_BVALID;
  wire [1023:512]S01_AXI_0_1_RDATA;
  wire [31:16]S01_AXI_0_1_RID;
  wire [1:1]S01_AXI_0_1_RLAST;
  wire [0:0]S01_AXI_0_1_RREADY;
  wire [3:2]S01_AXI_0_1_RRESP;
  wire [1:1]S01_AXI_0_1_RVALID;
  wire [511:0]S01_AXI_0_1_WDATA;
  wire [0:0]S01_AXI_0_1_WLAST;
  wire [1:1]S01_AXI_0_1_WREADY;
  wire [63:0]S01_AXI_0_1_WSTRB;
  wire [0:0]S01_AXI_0_1_WVALID;
  wire [63:0]S_AXI_0_1_ARADDR;
  wire [1:0]S_AXI_0_1_ARBURST;
  wire [3:0]S_AXI_0_1_ARCACHE;
  wire [15:0]S_AXI_0_1_ARID;
  wire [7:0]S_AXI_0_1_ARLEN;
  wire [0:0]S_AXI_0_1_ARLOCK;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire [3:0]S_AXI_0_1_ARQOS;
  wire S_AXI_0_1_ARREADY;
  wire [3:0]S_AXI_0_1_ARREGION;
  wire [2:0]S_AXI_0_1_ARSIZE;
  wire S_AXI_0_1_ARVALID;
  wire [63:0]S_AXI_0_1_AWADDR;
  wire [1:0]S_AXI_0_1_AWBURST;
  wire [3:0]S_AXI_0_1_AWCACHE;
  wire [15:0]S_AXI_0_1_AWID;
  wire [7:0]S_AXI_0_1_AWLEN;
  wire [0:0]S_AXI_0_1_AWLOCK;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire [3:0]S_AXI_0_1_AWQOS;
  wire S_AXI_0_1_AWREADY;
  wire [3:0]S_AXI_0_1_AWREGION;
  wire [2:0]S_AXI_0_1_AWSIZE;
  wire S_AXI_0_1_AWVALID;
  wire [15:0]S_AXI_0_1_BID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [63:0]S_AXI_0_1_RDATA;
  wire [15:0]S_AXI_0_1_RID;
  wire S_AXI_0_1_RLAST;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [63:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WLAST;
  wire S_AXI_0_1_WREADY;
  wire [7:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_ARCACHE;
  wire [15:0]axi_crossbar_0_M00_AXI_ARID;
  wire [7:0]axi_crossbar_0_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_0_M00_AXI_ARQOS;
  wire [0:0]axi_crossbar_0_M00_AXI_ARREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_ARREGION;
  wire [2:0]axi_crossbar_0_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_AWCACHE;
  wire [15:0]axi_crossbar_0_M00_AXI_AWID;
  wire [7:0]axi_crossbar_0_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_0_M00_AXI_AWQOS;
  wire [0:0]axi_crossbar_0_M00_AXI_AWREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_AWREGION;
  wire [2:0]axi_crossbar_0_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [15:0]axi_crossbar_0_M00_AXI_BID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M00_AXI_BVALID;
  wire [511:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [15:0]axi_crossbar_0_M00_AXI_RID;
  wire [0:0]axi_crossbar_0_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M00_AXI_RVALID;
  wire [511:0]axi_crossbar_0_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_WLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_WREADY;
  wire [63:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_ARADDR;
  wire [2:0]axi_crossbar_1_M00_AXI_ARPROT;
  wire axi_crossbar_1_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_1_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_AWADDR;
  wire [2:0]axi_crossbar_1_M00_AXI_AWPROT;
  wire axi_crossbar_1_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_1_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_1_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_BRESP;
  wire axi_crossbar_1_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_1_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_RRESP;
  wire axi_crossbar_1_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_WDATA;
  wire axi_crossbar_1_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_1_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_1_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_1_M01_AXI_ARADDR;
  wire axi_crossbar_1_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_1_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_1_M01_AXI_AWADDR;
  wire axi_crossbar_1_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_1_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_1_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M01_AXI_BRESP;
  wire axi_crossbar_1_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_1_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M01_AXI_RRESP;
  wire axi_crossbar_1_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_1_M01_AXI_WDATA;
  wire axi_crossbar_1_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_1_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_1_M01_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARQOS;
  wire [0:0]axi_dwidth_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARSIZE;
  wire axi_dwidth_converter_0_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWQOS;
  wire [0:0]axi_dwidth_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWSIZE;
  wire axi_dwidth_converter_0_M_AXI_AWVALID;
  wire axi_dwidth_converter_0_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_BRESP;
  wire [0:0]axi_dwidth_converter_0_M_AXI_BVALID;
  wire [511:0]axi_dwidth_converter_0_M_AXI_RDATA;
  wire [0:0]axi_dwidth_converter_0_M_AXI_RLAST;
  wire axi_dwidth_converter_0_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_RRESP;
  wire [0:0]axi_dwidth_converter_0_M_AXI_RVALID;
  wire [511:0]axi_dwidth_converter_0_M_AXI_WDATA;
  wire axi_dwidth_converter_0_M_AXI_WLAST;
  wire [0:0]axi_dwidth_converter_0_M_AXI_WREADY;
  wire [63:0]axi_dwidth_converter_0_M_AXI_WSTRB;
  wire axi_dwidth_converter_0_M_AXI_WVALID;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire debug_bridge_0_tap_tck;
  wire debug_bridge_0_tap_tdi;
  wire debug_bridge_0_tap_tms;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;
  wire tap_tdo_0_1;
  wire [31:0]NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED;
  wire [31:0]NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED;

  assign DDR_AXI4_araddr[63:0] = axi_crossbar_0_M00_AXI_ARADDR;
  assign DDR_AXI4_arburst[1:0] = axi_crossbar_0_M00_AXI_ARBURST;
  assign DDR_AXI4_arcache[3:0] = axi_crossbar_0_M00_AXI_ARCACHE;
  assign DDR_AXI4_arid[15:0] = axi_crossbar_0_M00_AXI_ARID;
  assign DDR_AXI4_arlen[7:0] = axi_crossbar_0_M00_AXI_ARLEN;
  assign DDR_AXI4_arlock[0] = axi_crossbar_0_M00_AXI_ARLOCK;
  assign DDR_AXI4_arprot[2:0] = axi_crossbar_0_M00_AXI_ARPROT;
  assign DDR_AXI4_arqos[3:0] = axi_crossbar_0_M00_AXI_ARQOS;
  assign DDR_AXI4_arregion[3:0] = axi_crossbar_0_M00_AXI_ARREGION;
  assign DDR_AXI4_arsize[2:0] = axi_crossbar_0_M00_AXI_ARSIZE;
  assign DDR_AXI4_arvalid[0] = axi_crossbar_0_M00_AXI_ARVALID;
  assign DDR_AXI4_awaddr[63:0] = axi_crossbar_0_M00_AXI_AWADDR;
  assign DDR_AXI4_awburst[1:0] = axi_crossbar_0_M00_AXI_AWBURST;
  assign DDR_AXI4_awcache[3:0] = axi_crossbar_0_M00_AXI_AWCACHE;
  assign DDR_AXI4_awid[15:0] = axi_crossbar_0_M00_AXI_AWID;
  assign DDR_AXI4_awlen[7:0] = axi_crossbar_0_M00_AXI_AWLEN;
  assign DDR_AXI4_awlock[0] = axi_crossbar_0_M00_AXI_AWLOCK;
  assign DDR_AXI4_awprot[2:0] = axi_crossbar_0_M00_AXI_AWPROT;
  assign DDR_AXI4_awqos[3:0] = axi_crossbar_0_M00_AXI_AWQOS;
  assign DDR_AXI4_awregion[3:0] = axi_crossbar_0_M00_AXI_AWREGION;
  assign DDR_AXI4_awsize[2:0] = axi_crossbar_0_M00_AXI_AWSIZE;
  assign DDR_AXI4_awvalid[0] = axi_crossbar_0_M00_AXI_AWVALID;
  assign DDR_AXI4_bready[0] = axi_crossbar_0_M00_AXI_BREADY;
  assign DDR_AXI4_rready[0] = axi_crossbar_0_M00_AXI_RREADY;
  assign DDR_AXI4_wdata[511:0] = axi_crossbar_0_M00_AXI_WDATA;
  assign DDR_AXI4_wlast[0] = axi_crossbar_0_M00_AXI_WLAST;
  assign DDR_AXI4_wstrb[63:0] = axi_crossbar_0_M00_AXI_WSTRB;
  assign DDR_AXI4_wvalid[0] = axi_crossbar_0_M00_AXI_WVALID;
  assign DMA_PCIS_AXI4_arready[0] = S01_AXI_0_1_ARREADY;
  assign DMA_PCIS_AXI4_awready[0] = S01_AXI_0_1_AWREADY;
  assign DMA_PCIS_AXI4_bid[15:0] = S01_AXI_0_1_BID;
  assign DMA_PCIS_AXI4_bresp[1:0] = S01_AXI_0_1_BRESP;
  assign DMA_PCIS_AXI4_bvalid[0] = S01_AXI_0_1_BVALID;
  assign DMA_PCIS_AXI4_rdata[511:0] = S01_AXI_0_1_RDATA;
  assign DMA_PCIS_AXI4_rid[15:0] = S01_AXI_0_1_RID;
  assign DMA_PCIS_AXI4_rlast[0] = S01_AXI_0_1_RLAST;
  assign DMA_PCIS_AXI4_rresp[1:0] = S01_AXI_0_1_RRESP;
  assign DMA_PCIS_AXI4_rvalid[0] = S01_AXI_0_1_RVALID;
  assign DMA_PCIS_AXI4_wready[0] = S01_AXI_0_1_WREADY;
  assign OCL_AXI4L_arready[0] = S00_AXI_0_1_ARREADY;
  assign OCL_AXI4L_awready[0] = S00_AXI_0_1_AWREADY;
  assign OCL_AXI4L_bresp[1:0] = S00_AXI_0_1_BRESP;
  assign OCL_AXI4L_bvalid[0] = S00_AXI_0_1_BVALID;
  assign OCL_AXI4L_rdata[31:0] = S00_AXI_0_1_RDATA;
  assign OCL_AXI4L_rresp[1:0] = S00_AXI_0_1_RRESP;
  assign OCL_AXI4L_rvalid[0] = S00_AXI_0_1_RVALID;
  assign OCL_AXI4L_wready[0] = S00_AXI_0_1_WREADY;
  assign S00_AXI_0_1_ARADDR = OCL_AXI4L_araddr[31:0];
  assign S00_AXI_0_1_ARPROT = OCL_AXI4L_arprot[2:0];
  assign S00_AXI_0_1_ARVALID = OCL_AXI4L_arvalid[0];
  assign S00_AXI_0_1_AWADDR = OCL_AXI4L_awaddr[31:0];
  assign S00_AXI_0_1_AWPROT = OCL_AXI4L_awprot[2:0];
  assign S00_AXI_0_1_AWVALID = OCL_AXI4L_awvalid[0];
  assign S00_AXI_0_1_BREADY = OCL_AXI4L_bready[0];
  assign S00_AXI_0_1_RREADY = OCL_AXI4L_rready[0];
  assign S00_AXI_0_1_WDATA = OCL_AXI4L_wdata[31:0];
  assign S00_AXI_0_1_WSTRB = OCL_AXI4L_wstrb[3:0];
  assign S00_AXI_0_1_WVALID = OCL_AXI4L_wvalid[0];
  assign S01_AXI_0_1_ARADDR = DMA_PCIS_AXI4_araddr[63:0];
  assign S01_AXI_0_1_ARBURST = DMA_PCIS_AXI4_arburst[1:0];
  assign S01_AXI_0_1_ARCACHE = DMA_PCIS_AXI4_arcache[3:0];
  assign S01_AXI_0_1_ARID = DMA_PCIS_AXI4_arid[15:0];
  assign S01_AXI_0_1_ARLEN = DMA_PCIS_AXI4_arlen[7:0];
  assign S01_AXI_0_1_ARLOCK = DMA_PCIS_AXI4_arlock[0];
  assign S01_AXI_0_1_ARPROT = DMA_PCIS_AXI4_arprot[2:0];
  assign S01_AXI_0_1_ARQOS = DMA_PCIS_AXI4_arqos[3:0];
  assign S01_AXI_0_1_ARSIZE = DMA_PCIS_AXI4_arsize[2:0];
  assign S01_AXI_0_1_ARVALID = DMA_PCIS_AXI4_arvalid[0];
  assign S01_AXI_0_1_AWADDR = DMA_PCIS_AXI4_awaddr[63:0];
  assign S01_AXI_0_1_AWBURST = DMA_PCIS_AXI4_awburst[1:0];
  assign S01_AXI_0_1_AWCACHE = DMA_PCIS_AXI4_awcache[3:0];
  assign S01_AXI_0_1_AWID = DMA_PCIS_AXI4_awid[15:0];
  assign S01_AXI_0_1_AWLEN = DMA_PCIS_AXI4_awlen[7:0];
  assign S01_AXI_0_1_AWLOCK = DMA_PCIS_AXI4_awlock[0];
  assign S01_AXI_0_1_AWPROT = DMA_PCIS_AXI4_awprot[2:0];
  assign S01_AXI_0_1_AWQOS = DMA_PCIS_AXI4_awqos[3:0];
  assign S01_AXI_0_1_AWSIZE = DMA_PCIS_AXI4_awsize[2:0];
  assign S01_AXI_0_1_AWVALID = DMA_PCIS_AXI4_awvalid[0];
  assign S01_AXI_0_1_BREADY = DMA_PCIS_AXI4_bready[0];
  assign S01_AXI_0_1_RREADY = DMA_PCIS_AXI4_rready[0];
  assign S01_AXI_0_1_WDATA = DMA_PCIS_AXI4_wdata[511:0];
  assign S01_AXI_0_1_WLAST = DMA_PCIS_AXI4_wlast[0];
  assign S01_AXI_0_1_WSTRB = DMA_PCIS_AXI4_wstrb[63:0];
  assign S01_AXI_0_1_WVALID = DMA_PCIS_AXI4_wvalid[0];
  assign S_AXI_0_1_ARADDR = S_DDR_araddr[63:0];
  assign S_AXI_0_1_ARBURST = S_DDR_arburst[1:0];
  assign S_AXI_0_1_ARCACHE = S_DDR_arcache[3:0];
  assign S_AXI_0_1_ARID = S_DDR_arid[15:0];
  assign S_AXI_0_1_ARLEN = S_DDR_arlen[7:0];
  assign S_AXI_0_1_ARLOCK = S_DDR_arlock[0];
  assign S_AXI_0_1_ARPROT = S_DDR_arprot[2:0];
  assign S_AXI_0_1_ARQOS = S_DDR_arqos[3:0];
  assign S_AXI_0_1_ARREGION = S_DDR_arregion[3:0];
  assign S_AXI_0_1_ARSIZE = S_DDR_arsize[2:0];
  assign S_AXI_0_1_ARVALID = S_DDR_arvalid;
  assign S_AXI_0_1_AWADDR = S_DDR_awaddr[63:0];
  assign S_AXI_0_1_AWBURST = S_DDR_awburst[1:0];
  assign S_AXI_0_1_AWCACHE = S_DDR_awcache[3:0];
  assign S_AXI_0_1_AWID = S_DDR_awid[15:0];
  assign S_AXI_0_1_AWLEN = S_DDR_awlen[7:0];
  assign S_AXI_0_1_AWLOCK = S_DDR_awlock[0];
  assign S_AXI_0_1_AWPROT = S_DDR_awprot[2:0];
  assign S_AXI_0_1_AWQOS = S_DDR_awqos[3:0];
  assign S_AXI_0_1_AWREGION = S_DDR_awregion[3:0];
  assign S_AXI_0_1_AWSIZE = S_DDR_awsize[2:0];
  assign S_AXI_0_1_AWVALID = S_DDR_awvalid;
  assign S_AXI_0_1_BREADY = S_DDR_bready;
  assign S_AXI_0_1_RREADY = S_DDR_rready;
  assign S_AXI_0_1_WDATA = S_DDR_wdata[63:0];
  assign S_AXI_0_1_WLAST = S_DDR_wlast;
  assign S_AXI_0_1_WSTRB = S_DDR_wstrb[7:0];
  assign S_AXI_0_1_WVALID = S_DDR_wvalid;
  assign S_DDR_arready = S_AXI_0_1_ARREADY;
  assign S_DDR_awready = S_AXI_0_1_AWREADY;
  assign S_DDR_bid[15:0] = S_AXI_0_1_BID;
  assign S_DDR_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_DDR_bvalid = S_AXI_0_1_BVALID;
  assign S_DDR_rdata[63:0] = S_AXI_0_1_RDATA;
  assign S_DDR_rid[15:0] = S_AXI_0_1_RID;
  assign S_DDR_rlast = S_AXI_0_1_RLAST;
  assign S_DDR_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_DDR_rvalid = S_AXI_0_1_RVALID;
  assign S_DDR_wready = S_AXI_0_1_WREADY;
  assign UART_0_txd = axi_uartlite_0_UART_TxD;
  assign axi_crossbar_0_M00_AXI_ARREADY = DDR_AXI4_arready[0];
  assign axi_crossbar_0_M00_AXI_AWREADY = DDR_AXI4_awready[0];
  assign axi_crossbar_0_M00_AXI_BID = DDR_AXI4_bid[15:0];
  assign axi_crossbar_0_M00_AXI_BRESP = DDR_AXI4_bresp[1:0];
  assign axi_crossbar_0_M00_AXI_BVALID = DDR_AXI4_bvalid[0];
  assign axi_crossbar_0_M00_AXI_RDATA = DDR_AXI4_rdata[511:0];
  assign axi_crossbar_0_M00_AXI_RID = DDR_AXI4_rid[15:0];
  assign axi_crossbar_0_M00_AXI_RLAST = DDR_AXI4_rlast[0];
  assign axi_crossbar_0_M00_AXI_RRESP = DDR_AXI4_rresp[1:0];
  assign axi_crossbar_0_M00_AXI_RVALID = DDR_AXI4_rvalid[0];
  assign axi_crossbar_0_M00_AXI_WREADY = DDR_AXI4_wready[0];
  assign axi_uartlite_0_UART_RxD = UART_0_rxd;
  assign interrupt_0 = axi_uartlite_0_interrupt;
  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  assign tap_tck_0 = debug_bridge_0_tap_tck;
  assign tap_tdi_0 = debug_bridge_0_tap_tdi;
  assign tap_tdo_0_1 = tap_tdo_0;
  assign tap_tms_0 = debug_bridge_0_tap_tms;
  test_subsystem_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_0_M00_AXI_ARBURST),
        .m_axi_arcache(axi_crossbar_0_M00_AXI_ARCACHE),
        .m_axi_arid(axi_crossbar_0_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_0_M00_AXI_ARLEN),
        .m_axi_arlock(axi_crossbar_0_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_crossbar_0_M00_AXI_ARPROT),
        .m_axi_arqos(axi_crossbar_0_M00_AXI_ARQOS),
        .m_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .m_axi_arregion(axi_crossbar_0_M00_AXI_ARREGION),
        .m_axi_arsize(axi_crossbar_0_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_0_M00_AXI_AWBURST),
        .m_axi_awcache(axi_crossbar_0_M00_AXI_AWCACHE),
        .m_axi_awid(axi_crossbar_0_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_0_M00_AXI_AWLEN),
        .m_axi_awlock(axi_crossbar_0_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_crossbar_0_M00_AXI_AWPROT),
        .m_axi_awqos(axi_crossbar_0_M00_AXI_AWQOS),
        .m_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .m_axi_awregion(axi_crossbar_0_M00_AXI_AWREGION),
        .m_axi_awsize(axi_crossbar_0_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_0_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .m_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_0_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_0_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .m_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_0_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID),
        .s_axi_araddr({S01_AXI_0_1_ARADDR,axi_dwidth_converter_0_M_AXI_ARADDR}),
        .s_axi_arburst({S01_AXI_0_1_ARBURST,axi_dwidth_converter_0_M_AXI_ARBURST}),
        .s_axi_arcache({S01_AXI_0_1_ARCACHE,axi_dwidth_converter_0_M_AXI_ARCACHE}),
        .s_axi_arid({S01_AXI_0_1_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({S01_AXI_0_1_ARLEN,axi_dwidth_converter_0_M_AXI_ARLEN}),
        .s_axi_arlock({S01_AXI_0_1_ARLOCK,axi_dwidth_converter_0_M_AXI_ARLOCK}),
        .s_axi_arprot({S01_AXI_0_1_ARPROT,axi_dwidth_converter_0_M_AXI_ARPROT}),
        .s_axi_arqos({S01_AXI_0_1_ARQOS,axi_dwidth_converter_0_M_AXI_ARQOS}),
        .s_axi_arready({S01_AXI_0_1_ARREADY,axi_dwidth_converter_0_M_AXI_ARREADY}),
        .s_axi_arsize({S01_AXI_0_1_ARSIZE,axi_dwidth_converter_0_M_AXI_ARSIZE}),
        .s_axi_arvalid({S01_AXI_0_1_ARVALID,axi_dwidth_converter_0_M_AXI_ARVALID}),
        .s_axi_awaddr({S01_AXI_0_1_AWADDR,axi_dwidth_converter_0_M_AXI_AWADDR}),
        .s_axi_awburst({S01_AXI_0_1_AWBURST,axi_dwidth_converter_0_M_AXI_AWBURST}),
        .s_axi_awcache({S01_AXI_0_1_AWCACHE,axi_dwidth_converter_0_M_AXI_AWCACHE}),
        .s_axi_awid({S01_AXI_0_1_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({S01_AXI_0_1_AWLEN,axi_dwidth_converter_0_M_AXI_AWLEN}),
        .s_axi_awlock({S01_AXI_0_1_AWLOCK,axi_dwidth_converter_0_M_AXI_AWLOCK}),
        .s_axi_awprot({S01_AXI_0_1_AWPROT,axi_dwidth_converter_0_M_AXI_AWPROT}),
        .s_axi_awqos({S01_AXI_0_1_AWQOS,axi_dwidth_converter_0_M_AXI_AWQOS}),
        .s_axi_awready({S01_AXI_0_1_AWREADY,axi_dwidth_converter_0_M_AXI_AWREADY}),
        .s_axi_awsize({S01_AXI_0_1_AWSIZE,axi_dwidth_converter_0_M_AXI_AWSIZE}),
        .s_axi_awvalid({S01_AXI_0_1_AWVALID,axi_dwidth_converter_0_M_AXI_AWVALID}),
        .s_axi_bid({S01_AXI_0_1_BID,NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED[15:0]}),
        .s_axi_bready({S01_AXI_0_1_BREADY,axi_dwidth_converter_0_M_AXI_BREADY}),
        .s_axi_bresp({S01_AXI_0_1_BRESP,axi_dwidth_converter_0_M_AXI_BRESP}),
        .s_axi_bvalid({S01_AXI_0_1_BVALID,axi_dwidth_converter_0_M_AXI_BVALID}),
        .s_axi_rdata({S01_AXI_0_1_RDATA,axi_dwidth_converter_0_M_AXI_RDATA}),
        .s_axi_rid({S01_AXI_0_1_RID,NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED[15:0]}),
        .s_axi_rlast({S01_AXI_0_1_RLAST,axi_dwidth_converter_0_M_AXI_RLAST}),
        .s_axi_rready({S01_AXI_0_1_RREADY,axi_dwidth_converter_0_M_AXI_RREADY}),
        .s_axi_rresp({S01_AXI_0_1_RRESP,axi_dwidth_converter_0_M_AXI_RRESP}),
        .s_axi_rvalid({S01_AXI_0_1_RVALID,axi_dwidth_converter_0_M_AXI_RVALID}),
        .s_axi_wdata({S01_AXI_0_1_WDATA,axi_dwidth_converter_0_M_AXI_WDATA}),
        .s_axi_wlast({S01_AXI_0_1_WLAST,axi_dwidth_converter_0_M_AXI_WLAST}),
        .s_axi_wready({S01_AXI_0_1_WREADY,axi_dwidth_converter_0_M_AXI_WREADY}),
        .s_axi_wstrb({S01_AXI_0_1_WSTRB,axi_dwidth_converter_0_M_AXI_WSTRB}),
        .s_axi_wvalid({S01_AXI_0_1_WVALID,axi_dwidth_converter_0_M_AXI_WVALID}));
  test_subsystem_axi_crossbar_1_0 axi_crossbar_1
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr({axi_crossbar_1_M01_AXI_ARADDR,axi_crossbar_1_M00_AXI_ARADDR}),
        .m_axi_arprot(axi_crossbar_1_M00_AXI_ARPROT),
        .m_axi_arready({axi_crossbar_1_M01_AXI_ARREADY,axi_crossbar_1_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_1_M01_AXI_ARVALID,axi_crossbar_1_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_1_M01_AXI_AWADDR,axi_crossbar_1_M00_AXI_AWADDR}),
        .m_axi_awprot(axi_crossbar_1_M00_AXI_AWPROT),
        .m_axi_awready({axi_crossbar_1_M01_AXI_AWREADY,axi_crossbar_1_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_1_M01_AXI_AWVALID,axi_crossbar_1_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_1_M01_AXI_BREADY,axi_crossbar_1_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_1_M01_AXI_BRESP,axi_crossbar_1_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_1_M01_AXI_BVALID,axi_crossbar_1_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_1_M01_AXI_RDATA,axi_crossbar_1_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_1_M01_AXI_RREADY,axi_crossbar_1_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_1_M01_AXI_RRESP,axi_crossbar_1_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_1_M01_AXI_RVALID,axi_crossbar_1_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_1_M01_AXI_WDATA,axi_crossbar_1_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_1_M01_AXI_WREADY,axi_crossbar_1_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_1_M01_AXI_WSTRB,axi_crossbar_1_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_1_M01_AXI_WVALID,axi_crossbar_1_M00_AXI_WVALID}),
        .s_axi_araddr(S00_AXI_0_1_ARADDR),
        .s_axi_arprot(S00_AXI_0_1_ARPROT),
        .s_axi_arready(S00_AXI_0_1_ARREADY),
        .s_axi_arvalid(S00_AXI_0_1_ARVALID),
        .s_axi_awaddr(S00_AXI_0_1_AWADDR),
        .s_axi_awprot(S00_AXI_0_1_AWPROT),
        .s_axi_awready(S00_AXI_0_1_AWREADY),
        .s_axi_awvalid(S00_AXI_0_1_AWVALID),
        .s_axi_bready(S00_AXI_0_1_BREADY),
        .s_axi_bresp(S00_AXI_0_1_BRESP),
        .s_axi_bvalid(S00_AXI_0_1_BVALID),
        .s_axi_rdata(S00_AXI_0_1_RDATA),
        .s_axi_rready(S00_AXI_0_1_RREADY),
        .s_axi_rresp(S00_AXI_0_1_RRESP),
        .s_axi_rvalid(S00_AXI_0_1_RVALID),
        .s_axi_wdata(S00_AXI_0_1_WDATA),
        .s_axi_wready(S00_AXI_0_1_WREADY),
        .s_axi_wstrb(S00_AXI_0_1_WSTRB),
        .s_axi_wvalid(S00_AXI_0_1_WVALID));
  test_subsystem_axi_dwidth_converter_0_0 axi_dwidth_converter_0
       (.m_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_dwidth_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_dwidth_converter_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_dwidth_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_dwidth_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_dwidth_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
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
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_arburst(S_AXI_0_1_ARBURST),
        .s_axi_arcache(S_AXI_0_1_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid(S_AXI_0_1_ARID),
        .s_axi_arlen(S_AXI_0_1_ARLEN),
        .s_axi_arlock(S_AXI_0_1_ARLOCK),
        .s_axi_arprot(S_AXI_0_1_ARPROT),
        .s_axi_arqos(S_AXI_0_1_ARQOS),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arregion(S_AXI_0_1_ARREGION),
        .s_axi_arsize(S_AXI_0_1_ARSIZE),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awburst(S_AXI_0_1_AWBURST),
        .s_axi_awcache(S_AXI_0_1_AWCACHE),
        .s_axi_awid(S_AXI_0_1_AWID),
        .s_axi_awlen(S_AXI_0_1_AWLEN),
        .s_axi_awlock(S_AXI_0_1_AWLOCK),
        .s_axi_awprot(S_AXI_0_1_AWPROT),
        .s_axi_awqos(S_AXI_0_1_AWQOS),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awregion(S_AXI_0_1_AWREGION),
        .s_axi_awsize(S_AXI_0_1_AWSIZE),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bid(S_AXI_0_1_BID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rid(S_AXI_0_1_RID),
        .s_axi_rlast(S_AXI_0_1_RLAST),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wlast(S_AXI_0_1_WLAST),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID));
  test_subsystem_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_crossbar_1_M01_AXI_ARADDR[35:32]),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(axi_crossbar_1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M01_AXI_AWADDR[35:32]),
        .s_axi_awready(axi_crossbar_1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_1_M01_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M01_AXI_RDATA),
        .s_axi_rready(axi_crossbar_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M01_AXI_WDATA),
        .s_axi_wready(axi_crossbar_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_1_M01_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  test_subsystem_debug_bridge_0_1 debug_bridge_0
       (.S_AXI_araddr(axi_crossbar_1_M00_AXI_ARADDR[4:0]),
        .S_AXI_arprot(axi_crossbar_1_M00_AXI_ARPROT),
        .S_AXI_arready(axi_crossbar_1_M00_AXI_ARREADY),
        .S_AXI_arvalid(axi_crossbar_1_M00_AXI_ARVALID),
        .S_AXI_awaddr(axi_crossbar_1_M00_AXI_AWADDR[4:0]),
        .S_AXI_awprot(axi_crossbar_1_M00_AXI_AWPROT),
        .S_AXI_awready(axi_crossbar_1_M00_AXI_AWREADY),
        .S_AXI_awvalid(axi_crossbar_1_M00_AXI_AWVALID),
        .S_AXI_bready(axi_crossbar_1_M00_AXI_BREADY),
        .S_AXI_bresp(axi_crossbar_1_M00_AXI_BRESP),
        .S_AXI_bvalid(axi_crossbar_1_M00_AXI_BVALID),
        .S_AXI_rdata(axi_crossbar_1_M00_AXI_RDATA),
        .S_AXI_rready(axi_crossbar_1_M00_AXI_RREADY),
        .S_AXI_rresp(axi_crossbar_1_M00_AXI_RRESP),
        .S_AXI_rvalid(axi_crossbar_1_M00_AXI_RVALID),
        .S_AXI_wdata(axi_crossbar_1_M00_AXI_WDATA),
        .S_AXI_wready(axi_crossbar_1_M00_AXI_WREADY),
        .S_AXI_wstrb(axi_crossbar_1_M00_AXI_WSTRB),
        .S_AXI_wvalid(axi_crossbar_1_M00_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .tap_tck(debug_bridge_0_tap_tck),
        .tap_tdi(debug_bridge_0_tap_tdi),
        .tap_tdo(tap_tdo_0_1),
        .tap_tms(debug_bridge_0_tap_tms));
endmodule
