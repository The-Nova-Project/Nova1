//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Tue Aug  2 07:19:19 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target nova_project.bd
//Design      : nova_project
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "nova_project,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=nova_project,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "nova_project.hwdef" *) 
module nova_project
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
    S01_AXI_0_araddr,
    S01_AXI_0_arburst,
    S01_AXI_0_arcache,
    S01_AXI_0_arid,
    S01_AXI_0_arlen,
    S01_AXI_0_arlock,
    S01_AXI_0_arprot,
    S01_AXI_0_arqos,
    S01_AXI_0_arready,
    S01_AXI_0_arsize,
    S01_AXI_0_arvalid,
    S01_AXI_0_awaddr,
    S01_AXI_0_awburst,
    S01_AXI_0_awcache,
    S01_AXI_0_awid,
    S01_AXI_0_awlen,
    S01_AXI_0_awlock,
    S01_AXI_0_awprot,
    S01_AXI_0_awqos,
    S01_AXI_0_awready,
    S01_AXI_0_awsize,
    S01_AXI_0_awvalid,
    S01_AXI_0_bid,
    S01_AXI_0_bready,
    S01_AXI_0_bresp,
    S01_AXI_0_bvalid,
    S01_AXI_0_rdata,
    S01_AXI_0_rid,
    S01_AXI_0_rlast,
    S01_AXI_0_rready,
    S01_AXI_0_rresp,
    S01_AXI_0_rvalid,
    S01_AXI_0_wdata,
    S01_AXI_0_wlast,
    S01_AXI_0_wready,
    S01_AXI_0_wstrb,
    S01_AXI_0_wvalid,
    S_AXI_0_araddr,
    S_AXI_0_arprot,
    S_AXI_0_arready,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awprot,
    S_AXI_0_awready,
    S_AXI_0_awvalid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    S_AXI_1_araddr,
    S_AXI_1_arready,
    S_AXI_1_arvalid,
    S_AXI_1_awaddr,
    S_AXI_1_awready,
    S_AXI_1_awvalid,
    S_AXI_1_bready,
    S_AXI_1_bresp,
    S_AXI_1_bvalid,
    S_AXI_1_rdata,
    S_AXI_1_rready,
    S_AXI_1_rresp,
    S_AXI_1_rvalid,
    S_AXI_1_wdata,
    S_AXI_1_wready,
    S_AXI_1_wstrb,
    S_AXI_1_wvalid,
    UART_0_rxd,
    UART_0_txd,
    UART_1_rxd,
    UART_1_txd,
    interrupt_0,
    interrupt_1,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_AXI4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 512, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]DDR_AXI4_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DMA_PCIS_AXI4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 512, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]DMA_PCIS_AXI4_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S01_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARBURST" *) input [1:0]S01_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARCACHE" *) input [3:0]S01_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARID" *) input [4:0]S01_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARLEN" *) input [7:0]S01_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARLOCK" *) input [0:0]S01_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARPROT" *) input [2:0]S01_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARQOS" *) input [3:0]S01_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARREADY" *) output [0:0]S01_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARSIZE" *) input [2:0]S01_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARVALID" *) input [0:0]S01_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWADDR" *) input [63:0]S01_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWBURST" *) input [1:0]S01_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWCACHE" *) input [3:0]S01_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWID" *) input [4:0]S01_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWLEN" *) input [7:0]S01_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWLOCK" *) input [0:0]S01_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWPROT" *) input [2:0]S01_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWQOS" *) input [3:0]S01_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWREADY" *) output [0:0]S01_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWSIZE" *) input [2:0]S01_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWVALID" *) input [0:0]S01_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BID" *) output [4:0]S01_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BREADY" *) input [0:0]S01_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BRESP" *) output [1:0]S01_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BVALID" *) output [0:0]S01_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RDATA" *) output [63:0]S01_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RID" *) output [4:0]S01_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RLAST" *) output [0:0]S01_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RREADY" *) input [0:0]S01_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RRESP" *) output [1:0]S01_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RVALID" *) output [0:0]S01_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WDATA" *) input [63:0]S01_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WLAST" *) input [0:0]S01_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WREADY" *) output [0:0]S01_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WSTRB" *) input [7:0]S01_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WVALID" *) input [0:0]S01_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT" *) input [2:0]S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY" *) output S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID" *) input S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR" *) input [63:0]S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT" *) input [2:0]S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY" *) output S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID" *) input S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY" *) input S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP" *) output [1:0]S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID" *) output S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA" *) output [31:0]S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY" *) input S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP" *) output [1:0]S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID" *) output S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA" *) input [31:0]S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY" *) output S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB" *) input [3:0]S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID" *) input S_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_1, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]S_AXI_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 ARREADY" *) output S_AXI_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 ARVALID" *) input S_AXI_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 AWADDR" *) input [3:0]S_AXI_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 AWREADY" *) output S_AXI_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 AWVALID" *) input S_AXI_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 BREADY" *) input S_AXI_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 BRESP" *) output [1:0]S_AXI_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 BVALID" *) output S_AXI_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 RDATA" *) output [31:0]S_AXI_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 RREADY" *) input S_AXI_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 RRESP" *) output [1:0]S_AXI_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 RVALID" *) output S_AXI_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 WDATA" *) input [31:0]S_AXI_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 WREADY" *) output S_AXI_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 WSTRB" *) input [3:0]S_AXI_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_1 WVALID" *) input S_AXI_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 RxD" *) input UART_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 TxD" *) output UART_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_1 RxD" *) input UART_1_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_1 TxD" *) output UART_1_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_1, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF S_AXI_0:S01_AXI_0:S_AXI_1:DMA_PCIS_AXI4:DDR_AXI4, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN nova_project_s_axi_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

  wire [63:0]S01_AXI_0_1_ARADDR;
  wire [1:0]S01_AXI_0_1_ARBURST;
  wire [3:0]S01_AXI_0_1_ARCACHE;
  wire [4:0]S01_AXI_0_1_ARID;
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
  wire [4:0]S01_AXI_0_1_AWID;
  wire [7:0]S01_AXI_0_1_AWLEN;
  wire [0:0]S01_AXI_0_1_AWLOCK;
  wire [2:0]S01_AXI_0_1_AWPROT;
  wire [3:0]S01_AXI_0_1_AWQOS;
  wire [1:1]S01_AXI_0_1_AWREADY;
  wire [2:0]S01_AXI_0_1_AWSIZE;
  wire [0:0]S01_AXI_0_1_AWVALID;
  wire [9:5]S01_AXI_0_1_BID;
  wire [0:0]S01_AXI_0_1_BREADY;
  wire [3:2]S01_AXI_0_1_BRESP;
  wire [1:1]S01_AXI_0_1_BVALID;
  wire [127:64]S01_AXI_0_1_RDATA;
  wire [9:5]S01_AXI_0_1_RID;
  wire [1:1]S01_AXI_0_1_RLAST;
  wire [0:0]S01_AXI_0_1_RREADY;
  wire [3:2]S01_AXI_0_1_RRESP;
  wire [1:1]S01_AXI_0_1_RVALID;
  wire [63:0]S01_AXI_0_1_WDATA;
  wire [0:0]S01_AXI_0_1_WLAST;
  wire [1:1]S01_AXI_0_1_WREADY;
  wire [7:0]S01_AXI_0_1_WSTRB;
  wire [0:0]S01_AXI_0_1_WVALID;
  wire [63:0]S01_AXI_1_1_ARADDR;
  wire [1:0]S01_AXI_1_1_ARBURST;
  wire [3:0]S01_AXI_1_1_ARCACHE;
  wire [15:0]S01_AXI_1_1_ARID;
  wire [7:0]S01_AXI_1_1_ARLEN;
  wire [0:0]S01_AXI_1_1_ARLOCK;
  wire [2:0]S01_AXI_1_1_ARPROT;
  wire [3:0]S01_AXI_1_1_ARQOS;
  wire [1:1]S01_AXI_1_1_ARREADY;
  wire [2:0]S01_AXI_1_1_ARSIZE;
  wire [0:0]S01_AXI_1_1_ARVALID;
  wire [63:0]S01_AXI_1_1_AWADDR;
  wire [1:0]S01_AXI_1_1_AWBURST;
  wire [3:0]S01_AXI_1_1_AWCACHE;
  wire [15:0]S01_AXI_1_1_AWID;
  wire [7:0]S01_AXI_1_1_AWLEN;
  wire [0:0]S01_AXI_1_1_AWLOCK;
  wire [2:0]S01_AXI_1_1_AWPROT;
  wire [3:0]S01_AXI_1_1_AWQOS;
  wire [1:1]S01_AXI_1_1_AWREADY;
  wire [2:0]S01_AXI_1_1_AWSIZE;
  wire [0:0]S01_AXI_1_1_AWVALID;
  wire [31:16]S01_AXI_1_1_BID;
  wire [0:0]S01_AXI_1_1_BREADY;
  wire [3:2]S01_AXI_1_1_BRESP;
  wire [1:1]S01_AXI_1_1_BVALID;
  wire [1023:512]S01_AXI_1_1_RDATA;
  wire [31:16]S01_AXI_1_1_RID;
  wire [1:1]S01_AXI_1_1_RLAST;
  wire [0:0]S01_AXI_1_1_RREADY;
  wire [3:2]S01_AXI_1_1_RRESP;
  wire [1:1]S01_AXI_1_1_RVALID;
  wire [511:0]S01_AXI_1_1_WDATA;
  wire [0:0]S01_AXI_1_1_WLAST;
  wire [1:1]S01_AXI_1_1_WREADY;
  wire [63:0]S01_AXI_1_1_WSTRB;
  wire [0:0]S01_AXI_1_1_WVALID;
  wire [63:0]S_AXI_0_1_ARADDR;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire S_AXI_0_1_ARREADY;
  wire S_AXI_0_1_ARVALID;
  wire [63:0]S_AXI_0_1_AWADDR;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire S_AXI_0_1_AWREADY;
  wire S_AXI_0_1_AWVALID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [31:0]S_AXI_0_1_RDATA;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [31:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WREADY;
  wire [3:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire [3:0]S_AXI_1_1_ARADDR;
  wire S_AXI_1_1_ARREADY;
  wire S_AXI_1_1_ARVALID;
  wire [3:0]S_AXI_1_1_AWADDR;
  wire S_AXI_1_1_AWREADY;
  wire S_AXI_1_1_AWVALID;
  wire S_AXI_1_1_BREADY;
  wire [1:0]S_AXI_1_1_BRESP;
  wire S_AXI_1_1_BVALID;
  wire [31:0]S_AXI_1_1_RDATA;
  wire S_AXI_1_1_RREADY;
  wire [1:0]S_AXI_1_1_RRESP;
  wire S_AXI_1_1_RVALID;
  wire [31:0]S_AXI_1_1_WDATA;
  wire S_AXI_1_1_WREADY;
  wire [3:0]S_AXI_1_1_WSTRB;
  wire S_AXI_1_1_WVALID;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
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
  wire [3:0]axi_crossbar_0_M00_AXI_ARQOS;
  wire [0:0]axi_crossbar_0_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_0_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_AWCACHE;
  wire [4:0]axi_crossbar_0_M00_AXI_AWID;
  wire [7:0]axi_crossbar_0_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_0_M00_AXI_AWQOS;
  wire [0:0]axi_crossbar_0_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_0_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M00_AXI_BID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M00_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M00_AXI_RID;
  wire [0:0]axi_crossbar_0_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M00_AXI_RVALID;
  wire [63:0]axi_crossbar_0_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_WLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_WREADY;
  wire [7:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_1_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_1_M00_AXI_ARCACHE;
  wire [4:0]axi_crossbar_1_M00_AXI_ARID;
  wire [7:0]axi_crossbar_1_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_1_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_1_M00_AXI_ARPROT;
  wire axi_crossbar_1_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_1_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_1_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_1_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_1_M00_AXI_AWCACHE;
  wire [4:0]axi_crossbar_1_M00_AXI_AWID;
  wire [7:0]axi_crossbar_1_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_1_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_1_M00_AXI_AWPROT;
  wire axi_crossbar_1_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_1_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_1_M00_AXI_AWVALID;
  wire [4:0]axi_crossbar_1_M00_AXI_BID;
  wire [0:0]axi_crossbar_1_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_BRESP;
  wire axi_crossbar_1_M00_AXI_BVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_RDATA;
  wire [4:0]axi_crossbar_1_M00_AXI_RID;
  wire axi_crossbar_1_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_1_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_RRESP;
  wire axi_crossbar_1_M00_AXI_RVALID;
  wire [63:0]axi_crossbar_1_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_1_M00_AXI_WLAST;
  wire axi_crossbar_1_M00_AXI_WREADY;
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
  wire axi_crossbar_1_M01_AXI_ARREADY;
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
  wire axi_crossbar_1_M01_AXI_AWREADY;
  wire [7:4]axi_crossbar_1_M01_AXI_AWREGION;
  wire [5:3]axi_crossbar_1_M01_AXI_AWSIZE;
  wire [1:1]axi_crossbar_1_M01_AXI_AWVALID;
  wire [4:0]axi_crossbar_1_M01_AXI_BID;
  wire [1:1]axi_crossbar_1_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M01_AXI_BRESP;
  wire axi_crossbar_1_M01_AXI_BVALID;
  wire [63:0]axi_crossbar_1_M01_AXI_RDATA;
  wire [4:0]axi_crossbar_1_M01_AXI_RID;
  wire axi_crossbar_1_M01_AXI_RLAST;
  wire [1:1]axi_crossbar_1_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M01_AXI_RRESP;
  wire axi_crossbar_1_M01_AXI_RVALID;
  wire [127:64]axi_crossbar_1_M01_AXI_WDATA;
  wire [1:1]axi_crossbar_1_M01_AXI_WLAST;
  wire axi_crossbar_1_M01_AXI_WREADY;
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
  wire axi_crossbar_1_M02_AXI_ARREADY;
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
  wire axi_crossbar_1_M02_AXI_AWREADY;
  wire [11:8]axi_crossbar_1_M02_AXI_AWREGION;
  wire [8:6]axi_crossbar_1_M02_AXI_AWSIZE;
  wire [2:2]axi_crossbar_1_M02_AXI_AWVALID;
  wire [15:0]axi_crossbar_1_M02_AXI_BID;
  wire [2:2]axi_crossbar_1_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M02_AXI_BRESP;
  wire axi_crossbar_1_M02_AXI_BVALID;
  wire [63:0]axi_crossbar_1_M02_AXI_RDATA;
  wire [15:0]axi_crossbar_1_M02_AXI_RID;
  wire axi_crossbar_1_M02_AXI_RLAST;
  wire [2:2]axi_crossbar_1_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M02_AXI_RRESP;
  wire axi_crossbar_1_M02_AXI_RVALID;
  wire [191:128]axi_crossbar_1_M02_AXI_WDATA;
  wire [2:2]axi_crossbar_1_M02_AXI_WLAST;
  wire axi_crossbar_1_M02_AXI_WREADY;
  wire [23:16]axi_crossbar_1_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_1_M02_AXI_WVALID;
  wire [63:0]axi_crossbar_2_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_2_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_2_M00_AXI_ARCACHE;
  wire [15:0]axi_crossbar_2_M00_AXI_ARID;
  wire [7:0]axi_crossbar_2_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_2_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_2_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_2_M00_AXI_ARQOS;
  wire [0:0]axi_crossbar_2_M00_AXI_ARREADY;
  wire [3:0]axi_crossbar_2_M00_AXI_ARREGION;
  wire [2:0]axi_crossbar_2_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_2_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_2_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_2_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_2_M00_AXI_AWCACHE;
  wire [15:0]axi_crossbar_2_M00_AXI_AWID;
  wire [7:0]axi_crossbar_2_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_2_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_2_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_2_M00_AXI_AWQOS;
  wire [0:0]axi_crossbar_2_M00_AXI_AWREADY;
  wire [3:0]axi_crossbar_2_M00_AXI_AWREGION;
  wire [2:0]axi_crossbar_2_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_2_M00_AXI_AWVALID;
  wire [15:0]axi_crossbar_2_M00_AXI_BID;
  wire [0:0]axi_crossbar_2_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_2_M00_AXI_BRESP;
  wire [0:0]axi_crossbar_2_M00_AXI_BVALID;
  wire [511:0]axi_crossbar_2_M00_AXI_RDATA;
  wire [15:0]axi_crossbar_2_M00_AXI_RID;
  wire [0:0]axi_crossbar_2_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_2_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_2_M00_AXI_RRESP;
  wire [0:0]axi_crossbar_2_M00_AXI_RVALID;
  wire [511:0]axi_crossbar_2_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_2_M00_AXI_WLAST;
  wire [0:0]axi_crossbar_2_M00_AXI_WREADY;
  wire [63:0]axi_crossbar_2_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_2_M00_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_ARADDR;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARPROT;
  wire axi_dwidth_converter_0_M_AXI_ARREADY;
  wire axi_dwidth_converter_0_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_AWADDR;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWPROT;
  wire axi_dwidth_converter_0_M_AXI_AWREADY;
  wire axi_dwidth_converter_0_M_AXI_AWVALID;
  wire axi_dwidth_converter_0_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_BRESP;
  wire axi_dwidth_converter_0_M_AXI_BVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_RDATA;
  wire axi_dwidth_converter_0_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_RRESP;
  wire axi_dwidth_converter_0_M_AXI_RVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_WDATA;
  wire axi_dwidth_converter_0_M_AXI_WREADY;
  wire [7:0]axi_dwidth_converter_0_M_AXI_WSTRB;
  wire axi_dwidth_converter_0_M_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_1_M_AXI_ARADDR;
  wire axi_dwidth_converter_1_M_AXI_ARREADY;
  wire axi_dwidth_converter_1_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_1_M_AXI_AWADDR;
  wire axi_dwidth_converter_1_M_AXI_AWREADY;
  wire axi_dwidth_converter_1_M_AXI_AWVALID;
  wire axi_dwidth_converter_1_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_1_M_AXI_BRESP;
  wire axi_dwidth_converter_1_M_AXI_BVALID;
  wire [31:0]axi_dwidth_converter_1_M_AXI_RDATA;
  wire axi_dwidth_converter_1_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_1_M_AXI_RRESP;
  wire axi_dwidth_converter_1_M_AXI_RVALID;
  wire [31:0]axi_dwidth_converter_1_M_AXI_WDATA;
  wire axi_dwidth_converter_1_M_AXI_WREADY;
  wire [3:0]axi_dwidth_converter_1_M_AXI_WSTRB;
  wire axi_dwidth_converter_1_M_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_2_M_AXI_ARADDR;
  wire [1:0]axi_dwidth_converter_2_M_AXI_ARBURST;
  wire [3:0]axi_dwidth_converter_2_M_AXI_ARCACHE;
  wire [7:0]axi_dwidth_converter_2_M_AXI_ARLEN;
  wire [0:0]axi_dwidth_converter_2_M_AXI_ARLOCK;
  wire [2:0]axi_dwidth_converter_2_M_AXI_ARPROT;
  wire [3:0]axi_dwidth_converter_2_M_AXI_ARQOS;
  wire [0:0]axi_dwidth_converter_2_M_AXI_ARREADY;
  wire [2:0]axi_dwidth_converter_2_M_AXI_ARSIZE;
  wire axi_dwidth_converter_2_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_2_M_AXI_AWADDR;
  wire [1:0]axi_dwidth_converter_2_M_AXI_AWBURST;
  wire [3:0]axi_dwidth_converter_2_M_AXI_AWCACHE;
  wire [7:0]axi_dwidth_converter_2_M_AXI_AWLEN;
  wire [0:0]axi_dwidth_converter_2_M_AXI_AWLOCK;
  wire [2:0]axi_dwidth_converter_2_M_AXI_AWPROT;
  wire [3:0]axi_dwidth_converter_2_M_AXI_AWQOS;
  wire [0:0]axi_dwidth_converter_2_M_AXI_AWREADY;
  wire [2:0]axi_dwidth_converter_2_M_AXI_AWSIZE;
  wire axi_dwidth_converter_2_M_AXI_AWVALID;
  wire axi_dwidth_converter_2_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_2_M_AXI_BRESP;
  wire [0:0]axi_dwidth_converter_2_M_AXI_BVALID;
  wire [511:0]axi_dwidth_converter_2_M_AXI_RDATA;
  wire [0:0]axi_dwidth_converter_2_M_AXI_RLAST;
  wire axi_dwidth_converter_2_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_2_M_AXI_RRESP;
  wire [0:0]axi_dwidth_converter_2_M_AXI_RVALID;
  wire [511:0]axi_dwidth_converter_2_M_AXI_WDATA;
  wire axi_dwidth_converter_2_M_AXI_WLAST;
  wire [0:0]axi_dwidth_converter_2_M_AXI_WREADY;
  wire [63:0]axi_dwidth_converter_2_M_AXI_WSTRB;
  wire axi_dwidth_converter_2_M_AXI_WVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_ARBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_ARLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_ARLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARQOS;
  wire [0:0]axi_protocol_convert_0_M_AXI_ARREADY;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARSIZE;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_AWBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_AWLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_AWLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWQOS;
  wire [0:0]axi_protocol_convert_0_M_AXI_AWREADY;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWSIZE;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire [0:0]axi_protocol_convert_0_M_AXI_BVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire [0:0]axi_protocol_convert_0_M_AXI_RLAST;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire [0:0]axi_protocol_convert_0_M_AXI_RVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WLAST;
  wire [0:0]axi_protocol_convert_0_M_AXI_WREADY;
  wire [7:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire [63:0]axi_protocol_convert_1_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_1_M_AXI_ARPROT;
  wire axi_protocol_convert_1_M_AXI_ARREADY;
  wire axi_protocol_convert_1_M_AXI_ARVALID;
  wire [63:0]axi_protocol_convert_1_M_AXI_AWADDR;
  wire [2:0]axi_protocol_convert_1_M_AXI_AWPROT;
  wire axi_protocol_convert_1_M_AXI_AWREADY;
  wire axi_protocol_convert_1_M_AXI_AWVALID;
  wire axi_protocol_convert_1_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_1_M_AXI_BRESP;
  wire axi_protocol_convert_1_M_AXI_BVALID;
  wire [63:0]axi_protocol_convert_1_M_AXI_RDATA;
  wire axi_protocol_convert_1_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_1_M_AXI_RRESP;
  wire axi_protocol_convert_1_M_AXI_RVALID;
  wire [63:0]axi_protocol_convert_1_M_AXI_WDATA;
  wire axi_protocol_convert_1_M_AXI_WREADY;
  wire [7:0]axi_protocol_convert_1_M_AXI_WSTRB;
  wire axi_protocol_convert_1_M_AXI_WVALID;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_1_UART_RxD;
  wire axi_uartlite_1_UART_TxD;
  wire axi_uartlite_1_interrupt;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;
  wire [9:0]NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED;
  wire [9:0]NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED;
  wire [11:0]NLW_axi_crossbar_1_m_axi_arqos_UNCONNECTED;
  wire [11:0]NLW_axi_crossbar_1_m_axi_arregion_UNCONNECTED;
  wire [11:0]NLW_axi_crossbar_1_m_axi_awqos_UNCONNECTED;
  wire [11:0]NLW_axi_crossbar_1_m_axi_awregion_UNCONNECTED;
  wire [31:0]NLW_axi_crossbar_2_s_axi_bid_UNCONNECTED;
  wire [31:0]NLW_axi_crossbar_2_s_axi_rid_UNCONNECTED;

  assign DDR_AXI4_araddr[63:0] = axi_crossbar_2_M00_AXI_ARADDR;
  assign DDR_AXI4_arburst[1:0] = axi_crossbar_2_M00_AXI_ARBURST;
  assign DDR_AXI4_arcache[3:0] = axi_crossbar_2_M00_AXI_ARCACHE;
  assign DDR_AXI4_arid[15:0] = axi_crossbar_2_M00_AXI_ARID;
  assign DDR_AXI4_arlen[7:0] = axi_crossbar_2_M00_AXI_ARLEN;
  assign DDR_AXI4_arlock[0] = axi_crossbar_2_M00_AXI_ARLOCK;
  assign DDR_AXI4_arprot[2:0] = axi_crossbar_2_M00_AXI_ARPROT;
  assign DDR_AXI4_arqos[3:0] = axi_crossbar_2_M00_AXI_ARQOS;
  assign DDR_AXI4_arregion[3:0] = axi_crossbar_2_M00_AXI_ARREGION;
  assign DDR_AXI4_arsize[2:0] = axi_crossbar_2_M00_AXI_ARSIZE;
  assign DDR_AXI4_arvalid[0] = axi_crossbar_2_M00_AXI_ARVALID;
  assign DDR_AXI4_awaddr[63:0] = axi_crossbar_2_M00_AXI_AWADDR;
  assign DDR_AXI4_awburst[1:0] = axi_crossbar_2_M00_AXI_AWBURST;
  assign DDR_AXI4_awcache[3:0] = axi_crossbar_2_M00_AXI_AWCACHE;
  assign DDR_AXI4_awid[15:0] = axi_crossbar_2_M00_AXI_AWID;
  assign DDR_AXI4_awlen[7:0] = axi_crossbar_2_M00_AXI_AWLEN;
  assign DDR_AXI4_awlock[0] = axi_crossbar_2_M00_AXI_AWLOCK;
  assign DDR_AXI4_awprot[2:0] = axi_crossbar_2_M00_AXI_AWPROT;
  assign DDR_AXI4_awqos[3:0] = axi_crossbar_2_M00_AXI_AWQOS;
  assign DDR_AXI4_awregion[3:0] = axi_crossbar_2_M00_AXI_AWREGION;
  assign DDR_AXI4_awsize[2:0] = axi_crossbar_2_M00_AXI_AWSIZE;
  assign DDR_AXI4_awvalid[0] = axi_crossbar_2_M00_AXI_AWVALID;
  assign DDR_AXI4_bready[0] = axi_crossbar_2_M00_AXI_BREADY;
  assign DDR_AXI4_rready[0] = axi_crossbar_2_M00_AXI_RREADY;
  assign DDR_AXI4_wdata[511:0] = axi_crossbar_2_M00_AXI_WDATA;
  assign DDR_AXI4_wlast[0] = axi_crossbar_2_M00_AXI_WLAST;
  assign DDR_AXI4_wstrb[63:0] = axi_crossbar_2_M00_AXI_WSTRB;
  assign DDR_AXI4_wvalid[0] = axi_crossbar_2_M00_AXI_WVALID;
  assign DMA_PCIS_AXI4_arready[0] = S01_AXI_1_1_ARREADY;
  assign DMA_PCIS_AXI4_awready[0] = S01_AXI_1_1_AWREADY;
  assign DMA_PCIS_AXI4_bid[15:0] = S01_AXI_1_1_BID;
  assign DMA_PCIS_AXI4_bresp[1:0] = S01_AXI_1_1_BRESP;
  assign DMA_PCIS_AXI4_bvalid[0] = S01_AXI_1_1_BVALID;
  assign DMA_PCIS_AXI4_rdata[511:0] = S01_AXI_1_1_RDATA;
  assign DMA_PCIS_AXI4_rid[15:0] = S01_AXI_1_1_RID;
  assign DMA_PCIS_AXI4_rlast[0] = S01_AXI_1_1_RLAST;
  assign DMA_PCIS_AXI4_rresp[1:0] = S01_AXI_1_1_RRESP;
  assign DMA_PCIS_AXI4_rvalid[0] = S01_AXI_1_1_RVALID;
  assign DMA_PCIS_AXI4_wready[0] = S01_AXI_1_1_WREADY;
  assign S01_AXI_0_1_ARADDR = S01_AXI_0_araddr[63:0];
  assign S01_AXI_0_1_ARBURST = S01_AXI_0_arburst[1:0];
  assign S01_AXI_0_1_ARCACHE = S01_AXI_0_arcache[3:0];
  assign S01_AXI_0_1_ARID = S01_AXI_0_arid[4:0];
  assign S01_AXI_0_1_ARLEN = S01_AXI_0_arlen[7:0];
  assign S01_AXI_0_1_ARLOCK = S01_AXI_0_arlock[0];
  assign S01_AXI_0_1_ARPROT = S01_AXI_0_arprot[2:0];
  assign S01_AXI_0_1_ARQOS = S01_AXI_0_arqos[3:0];
  assign S01_AXI_0_1_ARSIZE = S01_AXI_0_arsize[2:0];
  assign S01_AXI_0_1_ARVALID = S01_AXI_0_arvalid[0];
  assign S01_AXI_0_1_AWADDR = S01_AXI_0_awaddr[63:0];
  assign S01_AXI_0_1_AWBURST = S01_AXI_0_awburst[1:0];
  assign S01_AXI_0_1_AWCACHE = S01_AXI_0_awcache[3:0];
  assign S01_AXI_0_1_AWID = S01_AXI_0_awid[4:0];
  assign S01_AXI_0_1_AWLEN = S01_AXI_0_awlen[7:0];
  assign S01_AXI_0_1_AWLOCK = S01_AXI_0_awlock[0];
  assign S01_AXI_0_1_AWPROT = S01_AXI_0_awprot[2:0];
  assign S01_AXI_0_1_AWQOS = S01_AXI_0_awqos[3:0];
  assign S01_AXI_0_1_AWSIZE = S01_AXI_0_awsize[2:0];
  assign S01_AXI_0_1_AWVALID = S01_AXI_0_awvalid[0];
  assign S01_AXI_0_1_BREADY = S01_AXI_0_bready[0];
  assign S01_AXI_0_1_RREADY = S01_AXI_0_rready[0];
  assign S01_AXI_0_1_WDATA = S01_AXI_0_wdata[63:0];
  assign S01_AXI_0_1_WLAST = S01_AXI_0_wlast[0];
  assign S01_AXI_0_1_WSTRB = S01_AXI_0_wstrb[7:0];
  assign S01_AXI_0_1_WVALID = S01_AXI_0_wvalid[0];
  assign S01_AXI_0_arready[0] = S01_AXI_0_1_ARREADY;
  assign S01_AXI_0_awready[0] = S01_AXI_0_1_AWREADY;
  assign S01_AXI_0_bid[4:0] = S01_AXI_0_1_BID;
  assign S01_AXI_0_bresp[1:0] = S01_AXI_0_1_BRESP;
  assign S01_AXI_0_bvalid[0] = S01_AXI_0_1_BVALID;
  assign S01_AXI_0_rdata[63:0] = S01_AXI_0_1_RDATA;
  assign S01_AXI_0_rid[4:0] = S01_AXI_0_1_RID;
  assign S01_AXI_0_rlast[0] = S01_AXI_0_1_RLAST;
  assign S01_AXI_0_rresp[1:0] = S01_AXI_0_1_RRESP;
  assign S01_AXI_0_rvalid[0] = S01_AXI_0_1_RVALID;
  assign S01_AXI_0_wready[0] = S01_AXI_0_1_WREADY;
  assign S01_AXI_1_1_ARADDR = DMA_PCIS_AXI4_araddr[63:0];
  assign S01_AXI_1_1_ARBURST = DMA_PCIS_AXI4_arburst[1:0];
  assign S01_AXI_1_1_ARCACHE = DMA_PCIS_AXI4_arcache[3:0];
  assign S01_AXI_1_1_ARID = DMA_PCIS_AXI4_arid[15:0];
  assign S01_AXI_1_1_ARLEN = DMA_PCIS_AXI4_arlen[7:0];
  assign S01_AXI_1_1_ARLOCK = DMA_PCIS_AXI4_arlock[0];
  assign S01_AXI_1_1_ARPROT = DMA_PCIS_AXI4_arprot[2:0];
  assign S01_AXI_1_1_ARQOS = DMA_PCIS_AXI4_arqos[3:0];
  assign S01_AXI_1_1_ARSIZE = DMA_PCIS_AXI4_arsize[2:0];
  assign S01_AXI_1_1_ARVALID = DMA_PCIS_AXI4_arvalid[0];
  assign S01_AXI_1_1_AWADDR = DMA_PCIS_AXI4_awaddr[63:0];
  assign S01_AXI_1_1_AWBURST = DMA_PCIS_AXI4_awburst[1:0];
  assign S01_AXI_1_1_AWCACHE = DMA_PCIS_AXI4_awcache[3:0];
  assign S01_AXI_1_1_AWID = DMA_PCIS_AXI4_awid[15:0];
  assign S01_AXI_1_1_AWLEN = DMA_PCIS_AXI4_awlen[7:0];
  assign S01_AXI_1_1_AWLOCK = DMA_PCIS_AXI4_awlock[0];
  assign S01_AXI_1_1_AWPROT = DMA_PCIS_AXI4_awprot[2:0];
  assign S01_AXI_1_1_AWQOS = DMA_PCIS_AXI4_awqos[3:0];
  assign S01_AXI_1_1_AWSIZE = DMA_PCIS_AXI4_awsize[2:0];
  assign S01_AXI_1_1_AWVALID = DMA_PCIS_AXI4_awvalid[0];
  assign S01_AXI_1_1_BREADY = DMA_PCIS_AXI4_bready[0];
  assign S01_AXI_1_1_RREADY = DMA_PCIS_AXI4_rready[0];
  assign S01_AXI_1_1_WDATA = DMA_PCIS_AXI4_wdata[511:0];
  assign S01_AXI_1_1_WLAST = DMA_PCIS_AXI4_wlast[0];
  assign S01_AXI_1_1_WSTRB = DMA_PCIS_AXI4_wstrb[63:0];
  assign S01_AXI_1_1_WVALID = DMA_PCIS_AXI4_wvalid[0];
  assign S_AXI_0_1_ARADDR = S_AXI_0_araddr[63:0];
  assign S_AXI_0_1_ARPROT = S_AXI_0_arprot[2:0];
  assign S_AXI_0_1_ARVALID = S_AXI_0_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_0_awaddr[63:0];
  assign S_AXI_0_1_AWPROT = S_AXI_0_awprot[2:0];
  assign S_AXI_0_1_AWVALID = S_AXI_0_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_0_bready;
  assign S_AXI_0_1_RREADY = S_AXI_0_rready;
  assign S_AXI_0_1_WDATA = S_AXI_0_wdata[31:0];
  assign S_AXI_0_1_WSTRB = S_AXI_0_wstrb[3:0];
  assign S_AXI_0_1_WVALID = S_AXI_0_wvalid;
  assign S_AXI_0_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_0_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_0_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_0_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_0_rdata[31:0] = S_AXI_0_1_RDATA;
  assign S_AXI_0_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_0_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_0_wready = S_AXI_0_1_WREADY;
  assign S_AXI_1_1_ARADDR = S_AXI_1_araddr[3:0];
  assign S_AXI_1_1_ARVALID = S_AXI_1_arvalid;
  assign S_AXI_1_1_AWADDR = S_AXI_1_awaddr[3:0];
  assign S_AXI_1_1_AWVALID = S_AXI_1_awvalid;
  assign S_AXI_1_1_BREADY = S_AXI_1_bready;
  assign S_AXI_1_1_RREADY = S_AXI_1_rready;
  assign S_AXI_1_1_WDATA = S_AXI_1_wdata[31:0];
  assign S_AXI_1_1_WSTRB = S_AXI_1_wstrb[3:0];
  assign S_AXI_1_1_WVALID = S_AXI_1_wvalid;
  assign S_AXI_1_arready = S_AXI_1_1_ARREADY;
  assign S_AXI_1_awready = S_AXI_1_1_AWREADY;
  assign S_AXI_1_bresp[1:0] = S_AXI_1_1_BRESP;
  assign S_AXI_1_bvalid = S_AXI_1_1_BVALID;
  assign S_AXI_1_rdata[31:0] = S_AXI_1_1_RDATA;
  assign S_AXI_1_rresp[1:0] = S_AXI_1_1_RRESP;
  assign S_AXI_1_rvalid = S_AXI_1_1_RVALID;
  assign S_AXI_1_wready = S_AXI_1_1_WREADY;
  assign UART_0_txd = axi_uartlite_0_UART_TxD;
  assign UART_1_txd = axi_uartlite_1_UART_TxD;
  assign axi_crossbar_2_M00_AXI_ARREADY = DDR_AXI4_arready[0];
  assign axi_crossbar_2_M00_AXI_AWREADY = DDR_AXI4_awready[0];
  assign axi_crossbar_2_M00_AXI_BID = DDR_AXI4_bid[15:0];
  assign axi_crossbar_2_M00_AXI_BRESP = DDR_AXI4_bresp[1:0];
  assign axi_crossbar_2_M00_AXI_BVALID = DDR_AXI4_bvalid[0];
  assign axi_crossbar_2_M00_AXI_RDATA = DDR_AXI4_rdata[511:0];
  assign axi_crossbar_2_M00_AXI_RID = DDR_AXI4_rid[15:0];
  assign axi_crossbar_2_M00_AXI_RLAST = DDR_AXI4_rlast[0];
  assign axi_crossbar_2_M00_AXI_RRESP = DDR_AXI4_rresp[1:0];
  assign axi_crossbar_2_M00_AXI_RVALID = DDR_AXI4_rvalid[0];
  assign axi_crossbar_2_M00_AXI_WREADY = DDR_AXI4_wready[0];
  assign axi_uartlite_0_UART_RxD = UART_0_rxd;
  assign axi_uartlite_1_UART_RxD = UART_1_rxd;
  assign interrupt_0 = axi_uartlite_0_interrupt;
  assign interrupt_1 = axi_uartlite_1_interrupt;
  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  nova_project_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_crossbar_1_M00_AXI_ARADDR[15:0]),
        .s_axi_arburst(axi_crossbar_1_M00_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_1_M00_AXI_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid(axi_crossbar_1_M00_AXI_ARID),
        .s_axi_arlen(axi_crossbar_1_M00_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_1_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_1_M00_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_1_M00_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M00_AXI_AWADDR[15:0]),
        .s_axi_awburst(axi_crossbar_1_M00_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_1_M00_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_1_M00_AXI_AWID),
        .s_axi_awlen(axi_crossbar_1_M00_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_1_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_1_M00_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_1_M00_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_1_M00_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_1_M00_AXI_BID),
        .s_axi_bready(axi_crossbar_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M00_AXI_RDATA),
        .s_axi_rid(axi_crossbar_1_M00_AXI_RID),
        .s_axi_rlast(axi_crossbar_1_M00_AXI_RLAST),
        .s_axi_rready(axi_crossbar_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_1_M00_AXI_WLAST),
        .s_axi_wready(axi_crossbar_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_1_M00_AXI_WVALID));
  nova_project_axi_crossbar_0_0 axi_crossbar_0
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
        .s_axi_araddr({S01_AXI_0_1_ARADDR,axi_protocol_convert_0_M_AXI_ARADDR}),
        .s_axi_arburst({S01_AXI_0_1_ARBURST,axi_protocol_convert_0_M_AXI_ARBURST}),
        .s_axi_arcache({S01_AXI_0_1_ARCACHE,axi_protocol_convert_0_M_AXI_ARCACHE}),
        .s_axi_arid({S01_AXI_0_1_ARID,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({S01_AXI_0_1_ARLEN,axi_protocol_convert_0_M_AXI_ARLEN}),
        .s_axi_arlock({S01_AXI_0_1_ARLOCK,axi_protocol_convert_0_M_AXI_ARLOCK}),
        .s_axi_arprot({S01_AXI_0_1_ARPROT,axi_protocol_convert_0_M_AXI_ARPROT}),
        .s_axi_arqos({S01_AXI_0_1_ARQOS,axi_protocol_convert_0_M_AXI_ARQOS}),
        .s_axi_arready({S01_AXI_0_1_ARREADY,axi_protocol_convert_0_M_AXI_ARREADY}),
        .s_axi_arsize({S01_AXI_0_1_ARSIZE,axi_protocol_convert_0_M_AXI_ARSIZE}),
        .s_axi_arvalid({S01_AXI_0_1_ARVALID,axi_protocol_convert_0_M_AXI_ARVALID}),
        .s_axi_awaddr({S01_AXI_0_1_AWADDR,axi_protocol_convert_0_M_AXI_AWADDR}),
        .s_axi_awburst({S01_AXI_0_1_AWBURST,axi_protocol_convert_0_M_AXI_AWBURST}),
        .s_axi_awcache({S01_AXI_0_1_AWCACHE,axi_protocol_convert_0_M_AXI_AWCACHE}),
        .s_axi_awid({S01_AXI_0_1_AWID,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({S01_AXI_0_1_AWLEN,axi_protocol_convert_0_M_AXI_AWLEN}),
        .s_axi_awlock({S01_AXI_0_1_AWLOCK,axi_protocol_convert_0_M_AXI_AWLOCK}),
        .s_axi_awprot({S01_AXI_0_1_AWPROT,axi_protocol_convert_0_M_AXI_AWPROT}),
        .s_axi_awqos({S01_AXI_0_1_AWQOS,axi_protocol_convert_0_M_AXI_AWQOS}),
        .s_axi_awready({S01_AXI_0_1_AWREADY,axi_protocol_convert_0_M_AXI_AWREADY}),
        .s_axi_awsize({S01_AXI_0_1_AWSIZE,axi_protocol_convert_0_M_AXI_AWSIZE}),
        .s_axi_awvalid({S01_AXI_0_1_AWVALID,axi_protocol_convert_0_M_AXI_AWVALID}),
        .s_axi_bid({S01_AXI_0_1_BID,NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED[4:0]}),
        .s_axi_bready({S01_AXI_0_1_BREADY,axi_protocol_convert_0_M_AXI_BREADY}),
        .s_axi_bresp({S01_AXI_0_1_BRESP,axi_protocol_convert_0_M_AXI_BRESP}),
        .s_axi_bvalid({S01_AXI_0_1_BVALID,axi_protocol_convert_0_M_AXI_BVALID}),
        .s_axi_rdata({S01_AXI_0_1_RDATA,axi_protocol_convert_0_M_AXI_RDATA}),
        .s_axi_rid({S01_AXI_0_1_RID,NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED[4:0]}),
        .s_axi_rlast({S01_AXI_0_1_RLAST,axi_protocol_convert_0_M_AXI_RLAST}),
        .s_axi_rready({S01_AXI_0_1_RREADY,axi_protocol_convert_0_M_AXI_RREADY}),
        .s_axi_rresp({S01_AXI_0_1_RRESP,axi_protocol_convert_0_M_AXI_RRESP}),
        .s_axi_rvalid({S01_AXI_0_1_RVALID,axi_protocol_convert_0_M_AXI_RVALID}),
        .s_axi_wdata({S01_AXI_0_1_WDATA,axi_protocol_convert_0_M_AXI_WDATA}),
        .s_axi_wlast({S01_AXI_0_1_WLAST,axi_protocol_convert_0_M_AXI_WLAST}),
        .s_axi_wready({S01_AXI_0_1_WREADY,axi_protocol_convert_0_M_AXI_WREADY}),
        .s_axi_wstrb({S01_AXI_0_1_WSTRB,axi_protocol_convert_0_M_AXI_WSTRB}),
        .s_axi_wvalid({S01_AXI_0_1_WVALID,axi_protocol_convert_0_M_AXI_WVALID}));
  nova_project_axi_crossbar_1_0 axi_crossbar_1
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr({axi_crossbar_1_M02_AXI_ARADDR,axi_crossbar_1_M01_AXI_ARADDR,axi_crossbar_1_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_1_M02_AXI_ARBURST,axi_crossbar_1_M01_AXI_ARBURST,axi_crossbar_1_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_1_M02_AXI_ARCACHE,axi_crossbar_1_M01_AXI_ARCACHE,axi_crossbar_1_M00_AXI_ARCACHE}),
        .m_axi_arid({axi_crossbar_1_M02_AXI_ARID,axi_crossbar_1_M01_AXI_ARID,axi_crossbar_1_M00_AXI_ARID}),
        .m_axi_arlen({axi_crossbar_1_M02_AXI_ARLEN,axi_crossbar_1_M01_AXI_ARLEN,axi_crossbar_1_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_1_M02_AXI_ARLOCK,axi_crossbar_1_M01_AXI_ARLOCK,axi_crossbar_1_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_1_M02_AXI_ARPROT,axi_crossbar_1_M01_AXI_ARPROT,axi_crossbar_1_M00_AXI_ARPROT}),
        .m_axi_arqos({axi_crossbar_1_M02_AXI_ARQOS,axi_crossbar_1_M01_AXI_ARQOS,NLW_axi_crossbar_1_m_axi_arqos_UNCONNECTED[3:0]}),
        .m_axi_arready({axi_crossbar_1_M02_AXI_ARREADY,axi_crossbar_1_M01_AXI_ARREADY,axi_crossbar_1_M00_AXI_ARREADY}),
        .m_axi_arregion({axi_crossbar_1_M02_AXI_ARREGION,axi_crossbar_1_M01_AXI_ARREGION,NLW_axi_crossbar_1_m_axi_arregion_UNCONNECTED[3:0]}),
        .m_axi_arsize({axi_crossbar_1_M02_AXI_ARSIZE,axi_crossbar_1_M01_AXI_ARSIZE,axi_crossbar_1_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_1_M02_AXI_ARVALID,axi_crossbar_1_M01_AXI_ARVALID,axi_crossbar_1_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_1_M02_AXI_AWADDR,axi_crossbar_1_M01_AXI_AWADDR,axi_crossbar_1_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_1_M02_AXI_AWBURST,axi_crossbar_1_M01_AXI_AWBURST,axi_crossbar_1_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_1_M02_AXI_AWCACHE,axi_crossbar_1_M01_AXI_AWCACHE,axi_crossbar_1_M00_AXI_AWCACHE}),
        .m_axi_awid({axi_crossbar_1_M02_AXI_AWID,axi_crossbar_1_M01_AXI_AWID,axi_crossbar_1_M00_AXI_AWID}),
        .m_axi_awlen({axi_crossbar_1_M02_AXI_AWLEN,axi_crossbar_1_M01_AXI_AWLEN,axi_crossbar_1_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_1_M02_AXI_AWLOCK,axi_crossbar_1_M01_AXI_AWLOCK,axi_crossbar_1_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_1_M02_AXI_AWPROT,axi_crossbar_1_M01_AXI_AWPROT,axi_crossbar_1_M00_AXI_AWPROT}),
        .m_axi_awqos({axi_crossbar_1_M02_AXI_AWQOS,axi_crossbar_1_M01_AXI_AWQOS,NLW_axi_crossbar_1_m_axi_awqos_UNCONNECTED[3:0]}),
        .m_axi_awready({axi_crossbar_1_M02_AXI_AWREADY,axi_crossbar_1_M01_AXI_AWREADY,axi_crossbar_1_M00_AXI_AWREADY}),
        .m_axi_awregion({axi_crossbar_1_M02_AXI_AWREGION,axi_crossbar_1_M01_AXI_AWREGION,NLW_axi_crossbar_1_m_axi_awregion_UNCONNECTED[3:0]}),
        .m_axi_awsize({axi_crossbar_1_M02_AXI_AWSIZE,axi_crossbar_1_M01_AXI_AWSIZE,axi_crossbar_1_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_1_M02_AXI_AWVALID,axi_crossbar_1_M01_AXI_AWVALID,axi_crossbar_1_M00_AXI_AWVALID}),
        .m_axi_bid({axi_crossbar_1_M02_AXI_BID[4:0],axi_crossbar_1_M01_AXI_BID,axi_crossbar_1_M00_AXI_BID}),
        .m_axi_bready({axi_crossbar_1_M02_AXI_BREADY,axi_crossbar_1_M01_AXI_BREADY,axi_crossbar_1_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_1_M02_AXI_BRESP,axi_crossbar_1_M01_AXI_BRESP,axi_crossbar_1_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_1_M02_AXI_BVALID,axi_crossbar_1_M01_AXI_BVALID,axi_crossbar_1_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_1_M02_AXI_RDATA,axi_crossbar_1_M01_AXI_RDATA,axi_crossbar_1_M00_AXI_RDATA}),
        .m_axi_rid({axi_crossbar_1_M02_AXI_RID[4:0],axi_crossbar_1_M01_AXI_RID,axi_crossbar_1_M00_AXI_RID}),
        .m_axi_rlast({axi_crossbar_1_M02_AXI_RLAST,axi_crossbar_1_M01_AXI_RLAST,axi_crossbar_1_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_1_M02_AXI_RREADY,axi_crossbar_1_M01_AXI_RREADY,axi_crossbar_1_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_1_M02_AXI_RRESP,axi_crossbar_1_M01_AXI_RRESP,axi_crossbar_1_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_1_M02_AXI_RVALID,axi_crossbar_1_M01_AXI_RVALID,axi_crossbar_1_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_1_M02_AXI_WDATA,axi_crossbar_1_M01_AXI_WDATA,axi_crossbar_1_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_1_M02_AXI_WLAST,axi_crossbar_1_M01_AXI_WLAST,axi_crossbar_1_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_1_M02_AXI_WREADY,axi_crossbar_1_M01_AXI_WREADY,axi_crossbar_1_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_1_M02_AXI_WSTRB,axi_crossbar_1_M01_AXI_WSTRB,axi_crossbar_1_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_1_M02_AXI_WVALID,axi_crossbar_1_M01_AXI_WVALID,axi_crossbar_1_M00_AXI_WVALID}),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .s_axi_arburst(axi_crossbar_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M00_AXI_ARCACHE),
        .s_axi_arid(axi_crossbar_0_M00_AXI_ARID),
        .s_axi_arlen(axi_crossbar_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M00_AXI_ARPROT),
        .s_axi_arqos(axi_crossbar_0_M00_AXI_ARQOS),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .s_axi_awburst(axi_crossbar_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_0_M00_AXI_AWID),
        .s_axi_awlen(axi_crossbar_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M00_AXI_AWPROT),
        .s_axi_awqos(axi_crossbar_0_M00_AXI_AWQOS),
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
  nova_project_axi_crossbar_2_0 axi_crossbar_2
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr(axi_crossbar_2_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_2_M00_AXI_ARBURST),
        .m_axi_arcache(axi_crossbar_2_M00_AXI_ARCACHE),
        .m_axi_arid(axi_crossbar_2_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_2_M00_AXI_ARLEN),
        .m_axi_arlock(axi_crossbar_2_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_crossbar_2_M00_AXI_ARPROT),
        .m_axi_arqos(axi_crossbar_2_M00_AXI_ARQOS),
        .m_axi_arready(axi_crossbar_2_M00_AXI_ARREADY),
        .m_axi_arregion(axi_crossbar_2_M00_AXI_ARREGION),
        .m_axi_arsize(axi_crossbar_2_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_2_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_2_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_2_M00_AXI_AWBURST),
        .m_axi_awcache(axi_crossbar_2_M00_AXI_AWCACHE),
        .m_axi_awid(axi_crossbar_2_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_2_M00_AXI_AWLEN),
        .m_axi_awlock(axi_crossbar_2_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_crossbar_2_M00_AXI_AWPROT),
        .m_axi_awqos(axi_crossbar_2_M00_AXI_AWQOS),
        .m_axi_awready(axi_crossbar_2_M00_AXI_AWREADY),
        .m_axi_awregion(axi_crossbar_2_M00_AXI_AWREGION),
        .m_axi_awsize(axi_crossbar_2_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_2_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_2_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_2_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_2_M00_AXI_BRESP),
        .m_axi_bvalid(axi_crossbar_2_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_2_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_2_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_2_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_2_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_2_M00_AXI_RRESP),
        .m_axi_rvalid(axi_crossbar_2_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_2_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_2_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_2_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_2_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_2_M00_AXI_WVALID),
        .s_axi_araddr({S01_AXI_1_1_ARADDR,axi_dwidth_converter_2_M_AXI_ARADDR}),
        .s_axi_arburst({S01_AXI_1_1_ARBURST,axi_dwidth_converter_2_M_AXI_ARBURST}),
        .s_axi_arcache({S01_AXI_1_1_ARCACHE,axi_dwidth_converter_2_M_AXI_ARCACHE}),
        .s_axi_arid({S01_AXI_1_1_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({S01_AXI_1_1_ARLEN,axi_dwidth_converter_2_M_AXI_ARLEN}),
        .s_axi_arlock({S01_AXI_1_1_ARLOCK,axi_dwidth_converter_2_M_AXI_ARLOCK}),
        .s_axi_arprot({S01_AXI_1_1_ARPROT,axi_dwidth_converter_2_M_AXI_ARPROT}),
        .s_axi_arqos({S01_AXI_1_1_ARQOS,axi_dwidth_converter_2_M_AXI_ARQOS}),
        .s_axi_arready({S01_AXI_1_1_ARREADY,axi_dwidth_converter_2_M_AXI_ARREADY}),
        .s_axi_arsize({S01_AXI_1_1_ARSIZE,axi_dwidth_converter_2_M_AXI_ARSIZE}),
        .s_axi_arvalid({S01_AXI_1_1_ARVALID,axi_dwidth_converter_2_M_AXI_ARVALID}),
        .s_axi_awaddr({S01_AXI_1_1_AWADDR,axi_dwidth_converter_2_M_AXI_AWADDR}),
        .s_axi_awburst({S01_AXI_1_1_AWBURST,axi_dwidth_converter_2_M_AXI_AWBURST}),
        .s_axi_awcache({S01_AXI_1_1_AWCACHE,axi_dwidth_converter_2_M_AXI_AWCACHE}),
        .s_axi_awid({S01_AXI_1_1_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({S01_AXI_1_1_AWLEN,axi_dwidth_converter_2_M_AXI_AWLEN}),
        .s_axi_awlock({S01_AXI_1_1_AWLOCK,axi_dwidth_converter_2_M_AXI_AWLOCK}),
        .s_axi_awprot({S01_AXI_1_1_AWPROT,axi_dwidth_converter_2_M_AXI_AWPROT}),
        .s_axi_awqos({S01_AXI_1_1_AWQOS,axi_dwidth_converter_2_M_AXI_AWQOS}),
        .s_axi_awready({S01_AXI_1_1_AWREADY,axi_dwidth_converter_2_M_AXI_AWREADY}),
        .s_axi_awsize({S01_AXI_1_1_AWSIZE,axi_dwidth_converter_2_M_AXI_AWSIZE}),
        .s_axi_awvalid({S01_AXI_1_1_AWVALID,axi_dwidth_converter_2_M_AXI_AWVALID}),
        .s_axi_bid({S01_AXI_1_1_BID,NLW_axi_crossbar_2_s_axi_bid_UNCONNECTED[15:0]}),
        .s_axi_bready({S01_AXI_1_1_BREADY,axi_dwidth_converter_2_M_AXI_BREADY}),
        .s_axi_bresp({S01_AXI_1_1_BRESP,axi_dwidth_converter_2_M_AXI_BRESP}),
        .s_axi_bvalid({S01_AXI_1_1_BVALID,axi_dwidth_converter_2_M_AXI_BVALID}),
        .s_axi_rdata({S01_AXI_1_1_RDATA,axi_dwidth_converter_2_M_AXI_RDATA}),
        .s_axi_rid({S01_AXI_1_1_RID,NLW_axi_crossbar_2_s_axi_rid_UNCONNECTED[15:0]}),
        .s_axi_rlast({S01_AXI_1_1_RLAST,axi_dwidth_converter_2_M_AXI_RLAST}),
        .s_axi_rready({S01_AXI_1_1_RREADY,axi_dwidth_converter_2_M_AXI_RREADY}),
        .s_axi_rresp({S01_AXI_1_1_RRESP,axi_dwidth_converter_2_M_AXI_RRESP}),
        .s_axi_rvalid({S01_AXI_1_1_RVALID,axi_dwidth_converter_2_M_AXI_RVALID}),
        .s_axi_wdata({S01_AXI_1_1_WDATA,axi_dwidth_converter_2_M_AXI_WDATA}),
        .s_axi_wlast({S01_AXI_1_1_WLAST,axi_dwidth_converter_2_M_AXI_WLAST}),
        .s_axi_wready({S01_AXI_1_1_WREADY,axi_dwidth_converter_2_M_AXI_WREADY}),
        .s_axi_wstrb({S01_AXI_1_1_WSTRB,axi_dwidth_converter_2_M_AXI_WSTRB}),
        .s_axi_wvalid({S01_AXI_1_1_WVALID,axi_dwidth_converter_2_M_AXI_WVALID}));
  nova_project_axi_dwidth_converter_0_0 axi_dwidth_converter_0
       (.m_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .m_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_dwidth_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_dwidth_converter_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_dwidth_converter_0_M_AXI_AWPROT),
        .m_axi_awready(axi_dwidth_converter_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_dwidth_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_dwidth_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_dwidth_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_dwidth_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_dwidth_converter_0_M_AXI_RDATA),
        .m_axi_rready(axi_dwidth_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_dwidth_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_dwidth_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_dwidth_converter_0_M_AXI_WDATA),
        .m_axi_wready(axi_dwidth_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_dwidth_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_dwidth_converter_0_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arprot(S_AXI_0_1_ARPROT),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awprot(S_AXI_0_1_AWPROT),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID));
  nova_project_axi_dwidth_converter_1_0 axi_dwidth_converter_1
       (.m_axi_araddr(axi_dwidth_converter_1_M_AXI_ARADDR),
        .m_axi_arready(axi_dwidth_converter_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_dwidth_converter_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_dwidth_converter_1_M_AXI_AWADDR),
        .m_axi_awready(axi_dwidth_converter_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_dwidth_converter_1_M_AXI_AWVALID),
        .m_axi_bready(axi_dwidth_converter_1_M_AXI_BREADY),
        .m_axi_bresp(axi_dwidth_converter_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_dwidth_converter_1_M_AXI_BVALID),
        .m_axi_rdata(axi_dwidth_converter_1_M_AXI_RDATA),
        .m_axi_rready(axi_dwidth_converter_1_M_AXI_RREADY),
        .m_axi_rresp(axi_dwidth_converter_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_dwidth_converter_1_M_AXI_RVALID),
        .m_axi_wdata(axi_dwidth_converter_1_M_AXI_WDATA),
        .m_axi_wready(axi_dwidth_converter_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_dwidth_converter_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_dwidth_converter_1_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_protocol_convert_1_M_AXI_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arprot(axi_protocol_convert_1_M_AXI_ARPROT),
        .s_axi_arready(axi_protocol_convert_1_M_AXI_ARREADY),
        .s_axi_arvalid(axi_protocol_convert_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_protocol_convert_1_M_AXI_AWADDR),
        .s_axi_awprot(axi_protocol_convert_1_M_AXI_AWPROT),
        .s_axi_awready(axi_protocol_convert_1_M_AXI_AWREADY),
        .s_axi_awvalid(axi_protocol_convert_1_M_AXI_AWVALID),
        .s_axi_bready(axi_protocol_convert_1_M_AXI_BREADY),
        .s_axi_bresp(axi_protocol_convert_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_protocol_convert_1_M_AXI_BVALID),
        .s_axi_rdata(axi_protocol_convert_1_M_AXI_RDATA),
        .s_axi_rready(axi_protocol_convert_1_M_AXI_RREADY),
        .s_axi_rresp(axi_protocol_convert_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_protocol_convert_1_M_AXI_RVALID),
        .s_axi_wdata(axi_protocol_convert_1_M_AXI_WDATA),
        .s_axi_wready(axi_protocol_convert_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_protocol_convert_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_protocol_convert_1_M_AXI_WVALID));
  nova_project_axi_dwidth_converter_2_0 axi_dwidth_converter_2
       (.m_axi_araddr(axi_dwidth_converter_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_dwidth_converter_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_dwidth_converter_2_M_AXI_ARCACHE),
        .m_axi_arlen(axi_dwidth_converter_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_dwidth_converter_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_dwidth_converter_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_dwidth_converter_2_M_AXI_ARQOS),
        .m_axi_arready(axi_dwidth_converter_2_M_AXI_ARREADY),
        .m_axi_arsize(axi_dwidth_converter_2_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_dwidth_converter_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_dwidth_converter_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_dwidth_converter_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_dwidth_converter_2_M_AXI_AWCACHE),
        .m_axi_awlen(axi_dwidth_converter_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_dwidth_converter_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_dwidth_converter_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_dwidth_converter_2_M_AXI_AWQOS),
        .m_axi_awready(axi_dwidth_converter_2_M_AXI_AWREADY),
        .m_axi_awsize(axi_dwidth_converter_2_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_dwidth_converter_2_M_AXI_AWVALID),
        .m_axi_bready(axi_dwidth_converter_2_M_AXI_BREADY),
        .m_axi_bresp(axi_dwidth_converter_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_dwidth_converter_2_M_AXI_BVALID),
        .m_axi_rdata(axi_dwidth_converter_2_M_AXI_RDATA),
        .m_axi_rlast(axi_dwidth_converter_2_M_AXI_RLAST),
        .m_axi_rready(axi_dwidth_converter_2_M_AXI_RREADY),
        .m_axi_rresp(axi_dwidth_converter_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_dwidth_converter_2_M_AXI_RVALID),
        .m_axi_wdata(axi_dwidth_converter_2_M_AXI_WDATA),
        .m_axi_wlast(axi_dwidth_converter_2_M_AXI_WLAST),
        .m_axi_wready(axi_dwidth_converter_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_dwidth_converter_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_dwidth_converter_2_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_crossbar_1_M02_AXI_ARADDR),
        .s_axi_arburst(axi_crossbar_1_M02_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_1_M02_AXI_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_crossbar_1_M02_AXI_ARID}),
        .s_axi_arlen(axi_crossbar_1_M02_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_1_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_1_M02_AXI_ARPROT),
        .s_axi_arqos(axi_crossbar_1_M02_AXI_ARQOS),
        .s_axi_arready(axi_crossbar_1_M02_AXI_ARREADY),
        .s_axi_arregion(axi_crossbar_1_M02_AXI_ARREGION),
        .s_axi_arsize(axi_crossbar_1_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_1_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M02_AXI_AWADDR),
        .s_axi_awburst(axi_crossbar_1_M02_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_1_M02_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_crossbar_1_M02_AXI_AWID}),
        .s_axi_awlen(axi_crossbar_1_M02_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_1_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_1_M02_AXI_AWPROT),
        .s_axi_awqos(axi_crossbar_1_M02_AXI_AWQOS),
        .s_axi_awready(axi_crossbar_1_M02_AXI_AWREADY),
        .s_axi_awregion(axi_crossbar_1_M02_AXI_AWREGION),
        .s_axi_awsize(axi_crossbar_1_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_1_M02_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_1_M02_AXI_BID),
        .s_axi_bready(axi_crossbar_1_M02_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M02_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M02_AXI_RDATA),
        .s_axi_rid(axi_crossbar_1_M02_AXI_RID),
        .s_axi_rlast(axi_crossbar_1_M02_AXI_RLAST),
        .s_axi_rready(axi_crossbar_1_M02_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M02_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M02_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_1_M02_AXI_WLAST),
        .s_axi_wready(axi_crossbar_1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_1_M02_AXI_WVALID));
  nova_project_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_protocol_convert_0_M_AXI_ARQOS),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_protocol_convert_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_protocol_convert_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_protocol_convert_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_protocol_convert_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_protocol_convert_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_protocol_convert_0_M_AXI_AWQOS),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_protocol_convert_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rlast(axi_protocol_convert_0_M_AXI_RLAST),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wlast(axi_protocol_convert_0_M_AXI_WLAST),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .s_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .s_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_dwidth_converter_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_dwidth_converter_0_M_AXI_AWADDR),
        .s_axi_awprot(axi_dwidth_converter_0_M_AXI_AWPROT),
        .s_axi_awready(axi_dwidth_converter_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_dwidth_converter_0_M_AXI_AWVALID),
        .s_axi_bready(axi_dwidth_converter_0_M_AXI_BREADY),
        .s_axi_bresp(axi_dwidth_converter_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_dwidth_converter_0_M_AXI_BVALID),
        .s_axi_rdata(axi_dwidth_converter_0_M_AXI_RDATA),
        .s_axi_rready(axi_dwidth_converter_0_M_AXI_RREADY),
        .s_axi_rresp(axi_dwidth_converter_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_dwidth_converter_0_M_AXI_RVALID),
        .s_axi_wdata(axi_dwidth_converter_0_M_AXI_WDATA),
        .s_axi_wready(axi_dwidth_converter_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_dwidth_converter_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_dwidth_converter_0_M_AXI_WVALID));
  nova_project_axi_protocol_convert_1_0 axi_protocol_convert_1
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr(axi_protocol_convert_1_M_AXI_ARADDR),
        .m_axi_arprot(axi_protocol_convert_1_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_1_M_AXI_AWADDR),
        .m_axi_awprot(axi_protocol_convert_1_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_1_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_1_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_1_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_1_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_1_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_1_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_1_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_1_M_AXI_WVALID),
        .s_axi_araddr(axi_crossbar_1_M01_AXI_ARADDR),
        .s_axi_arburst(axi_crossbar_1_M01_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_1_M01_AXI_ARCACHE),
        .s_axi_arid(axi_crossbar_1_M01_AXI_ARID),
        .s_axi_arlen(axi_crossbar_1_M01_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_1_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_1_M01_AXI_ARPROT),
        .s_axi_arqos(axi_crossbar_1_M01_AXI_ARQOS),
        .s_axi_arready(axi_crossbar_1_M01_AXI_ARREADY),
        .s_axi_arregion(axi_crossbar_1_M01_AXI_ARREGION),
        .s_axi_arsize(axi_crossbar_1_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M01_AXI_AWADDR),
        .s_axi_awburst(axi_crossbar_1_M01_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_1_M01_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_1_M01_AXI_AWID),
        .s_axi_awlen(axi_crossbar_1_M01_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_1_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_1_M01_AXI_AWPROT),
        .s_axi_awqos(axi_crossbar_1_M01_AXI_AWQOS),
        .s_axi_awready(axi_crossbar_1_M01_AXI_AWREADY),
        .s_axi_awregion(axi_crossbar_1_M01_AXI_AWREGION),
        .s_axi_awsize(axi_crossbar_1_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_1_M01_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_1_M01_AXI_BID),
        .s_axi_bready(axi_crossbar_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M01_AXI_RDATA),
        .s_axi_rid(axi_crossbar_1_M01_AXI_RID),
        .s_axi_rlast(axi_crossbar_1_M01_AXI_RLAST),
        .s_axi_rready(axi_crossbar_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M01_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_1_M01_AXI_WLAST),
        .s_axi_wready(axi_crossbar_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_1_M01_AXI_WVALID));
  nova_project_axi_uartlite_0_1 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(axi_dwidth_converter_1_M_AXI_ARADDR[3:0]),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(axi_dwidth_converter_1_M_AXI_ARREADY),
        .s_axi_arvalid(axi_dwidth_converter_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_dwidth_converter_1_M_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_dwidth_converter_1_M_AXI_AWREADY),
        .s_axi_awvalid(axi_dwidth_converter_1_M_AXI_AWVALID),
        .s_axi_bready(axi_dwidth_converter_1_M_AXI_BREADY),
        .s_axi_bresp(axi_dwidth_converter_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_dwidth_converter_1_M_AXI_BVALID),
        .s_axi_rdata(axi_dwidth_converter_1_M_AXI_RDATA),
        .s_axi_rready(axi_dwidth_converter_1_M_AXI_RREADY),
        .s_axi_rresp(axi_dwidth_converter_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_dwidth_converter_1_M_AXI_RVALID),
        .s_axi_wdata(axi_dwidth_converter_1_M_AXI_WDATA),
        .s_axi_wready(axi_dwidth_converter_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_dwidth_converter_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_dwidth_converter_1_M_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  nova_project_axi_uartlite_0_2 axi_uartlite_1
       (.interrupt(axi_uartlite_1_interrupt),
        .rx(axi_uartlite_1_UART_RxD),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(S_AXI_1_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(S_AXI_1_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_1_AWADDR),
        .s_axi_awready(S_AXI_1_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_1_AWVALID),
        .s_axi_bready(S_AXI_1_1_BREADY),
        .s_axi_bresp(S_AXI_1_1_BRESP),
        .s_axi_bvalid(S_AXI_1_1_BVALID),
        .s_axi_rdata(S_AXI_1_1_RDATA),
        .s_axi_rready(S_AXI_1_1_RREADY),
        .s_axi_rresp(S_AXI_1_1_RRESP),
        .s_axi_rvalid(S_AXI_1_1_RVALID),
        .s_axi_wdata(S_AXI_1_1_WDATA),
        .s_axi_wready(S_AXI_1_1_WREADY),
        .s_axi_wstrb(S_AXI_1_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_1_WVALID),
        .tx(axi_uartlite_1_UART_TxD));
  nova_project_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
endmodule
