//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Tue Aug  2 07:19:20 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target nova_project_wrapper.bd
//Design      : nova_project_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module nova_project_wrapper
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
  output [63:0]DDR_AXI4_araddr;
  output [1:0]DDR_AXI4_arburst;
  output [3:0]DDR_AXI4_arcache;
  output [15:0]DDR_AXI4_arid;
  output [7:0]DDR_AXI4_arlen;
  output [0:0]DDR_AXI4_arlock;
  output [2:0]DDR_AXI4_arprot;
  output [3:0]DDR_AXI4_arqos;
  input [0:0]DDR_AXI4_arready;
  output [3:0]DDR_AXI4_arregion;
  output [2:0]DDR_AXI4_arsize;
  output [0:0]DDR_AXI4_arvalid;
  output [63:0]DDR_AXI4_awaddr;
  output [1:0]DDR_AXI4_awburst;
  output [3:0]DDR_AXI4_awcache;
  output [15:0]DDR_AXI4_awid;
  output [7:0]DDR_AXI4_awlen;
  output [0:0]DDR_AXI4_awlock;
  output [2:0]DDR_AXI4_awprot;
  output [3:0]DDR_AXI4_awqos;
  input [0:0]DDR_AXI4_awready;
  output [3:0]DDR_AXI4_awregion;
  output [2:0]DDR_AXI4_awsize;
  output [0:0]DDR_AXI4_awvalid;
  input [15:0]DDR_AXI4_bid;
  output [0:0]DDR_AXI4_bready;
  input [1:0]DDR_AXI4_bresp;
  input [0:0]DDR_AXI4_bvalid;
  input [511:0]DDR_AXI4_rdata;
  input [15:0]DDR_AXI4_rid;
  input [0:0]DDR_AXI4_rlast;
  output [0:0]DDR_AXI4_rready;
  input [1:0]DDR_AXI4_rresp;
  input [0:0]DDR_AXI4_rvalid;
  output [511:0]DDR_AXI4_wdata;
  output [0:0]DDR_AXI4_wlast;
  input [0:0]DDR_AXI4_wready;
  output [63:0]DDR_AXI4_wstrb;
  output [0:0]DDR_AXI4_wvalid;
  input [63:0]DMA_PCIS_AXI4_araddr;
  input [1:0]DMA_PCIS_AXI4_arburst;
  input [3:0]DMA_PCIS_AXI4_arcache;
  input [15:0]DMA_PCIS_AXI4_arid;
  input [7:0]DMA_PCIS_AXI4_arlen;
  input [0:0]DMA_PCIS_AXI4_arlock;
  input [2:0]DMA_PCIS_AXI4_arprot;
  input [3:0]DMA_PCIS_AXI4_arqos;
  output [0:0]DMA_PCIS_AXI4_arready;
  input [2:0]DMA_PCIS_AXI4_arsize;
  input [0:0]DMA_PCIS_AXI4_arvalid;
  input [63:0]DMA_PCIS_AXI4_awaddr;
  input [1:0]DMA_PCIS_AXI4_awburst;
  input [3:0]DMA_PCIS_AXI4_awcache;
  input [15:0]DMA_PCIS_AXI4_awid;
  input [7:0]DMA_PCIS_AXI4_awlen;
  input [0:0]DMA_PCIS_AXI4_awlock;
  input [2:0]DMA_PCIS_AXI4_awprot;
  input [3:0]DMA_PCIS_AXI4_awqos;
  output [0:0]DMA_PCIS_AXI4_awready;
  input [2:0]DMA_PCIS_AXI4_awsize;
  input [0:0]DMA_PCIS_AXI4_awvalid;
  output [15:0]DMA_PCIS_AXI4_bid;
  input [0:0]DMA_PCIS_AXI4_bready;
  output [1:0]DMA_PCIS_AXI4_bresp;
  output [0:0]DMA_PCIS_AXI4_bvalid;
  output [511:0]DMA_PCIS_AXI4_rdata;
  output [15:0]DMA_PCIS_AXI4_rid;
  output [0:0]DMA_PCIS_AXI4_rlast;
  input [0:0]DMA_PCIS_AXI4_rready;
  output [1:0]DMA_PCIS_AXI4_rresp;
  output [0:0]DMA_PCIS_AXI4_rvalid;
  input [511:0]DMA_PCIS_AXI4_wdata;
  input [0:0]DMA_PCIS_AXI4_wlast;
  output [0:0]DMA_PCIS_AXI4_wready;
  input [63:0]DMA_PCIS_AXI4_wstrb;
  input [0:0]DMA_PCIS_AXI4_wvalid;
  input [63:0]S01_AXI_0_araddr;
  input [1:0]S01_AXI_0_arburst;
  input [3:0]S01_AXI_0_arcache;
  input [4:0]S01_AXI_0_arid;
  input [7:0]S01_AXI_0_arlen;
  input [0:0]S01_AXI_0_arlock;
  input [2:0]S01_AXI_0_arprot;
  input [3:0]S01_AXI_0_arqos;
  output [0:0]S01_AXI_0_arready;
  input [2:0]S01_AXI_0_arsize;
  input [0:0]S01_AXI_0_arvalid;
  input [63:0]S01_AXI_0_awaddr;
  input [1:0]S01_AXI_0_awburst;
  input [3:0]S01_AXI_0_awcache;
  input [4:0]S01_AXI_0_awid;
  input [7:0]S01_AXI_0_awlen;
  input [0:0]S01_AXI_0_awlock;
  input [2:0]S01_AXI_0_awprot;
  input [3:0]S01_AXI_0_awqos;
  output [0:0]S01_AXI_0_awready;
  input [2:0]S01_AXI_0_awsize;
  input [0:0]S01_AXI_0_awvalid;
  output [4:0]S01_AXI_0_bid;
  input [0:0]S01_AXI_0_bready;
  output [1:0]S01_AXI_0_bresp;
  output [0:0]S01_AXI_0_bvalid;
  output [63:0]S01_AXI_0_rdata;
  output [4:0]S01_AXI_0_rid;
  output [0:0]S01_AXI_0_rlast;
  input [0:0]S01_AXI_0_rready;
  output [1:0]S01_AXI_0_rresp;
  output [0:0]S01_AXI_0_rvalid;
  input [63:0]S01_AXI_0_wdata;
  input [0:0]S01_AXI_0_wlast;
  output [0:0]S01_AXI_0_wready;
  input [7:0]S01_AXI_0_wstrb;
  input [0:0]S01_AXI_0_wvalid;
  input [63:0]S_AXI_0_araddr;
  input [2:0]S_AXI_0_arprot;
  output S_AXI_0_arready;
  input S_AXI_0_arvalid;
  input [63:0]S_AXI_0_awaddr;
  input [2:0]S_AXI_0_awprot;
  output S_AXI_0_awready;
  input S_AXI_0_awvalid;
  input S_AXI_0_bready;
  output [1:0]S_AXI_0_bresp;
  output S_AXI_0_bvalid;
  output [31:0]S_AXI_0_rdata;
  input S_AXI_0_rready;
  output [1:0]S_AXI_0_rresp;
  output S_AXI_0_rvalid;
  input [31:0]S_AXI_0_wdata;
  output S_AXI_0_wready;
  input [3:0]S_AXI_0_wstrb;
  input S_AXI_0_wvalid;
  input [3:0]S_AXI_1_araddr;
  output S_AXI_1_arready;
  input S_AXI_1_arvalid;
  input [3:0]S_AXI_1_awaddr;
  output S_AXI_1_awready;
  input S_AXI_1_awvalid;
  input S_AXI_1_bready;
  output [1:0]S_AXI_1_bresp;
  output S_AXI_1_bvalid;
  output [31:0]S_AXI_1_rdata;
  input S_AXI_1_rready;
  output [1:0]S_AXI_1_rresp;
  output S_AXI_1_rvalid;
  input [31:0]S_AXI_1_wdata;
  output S_AXI_1_wready;
  input [3:0]S_AXI_1_wstrb;
  input S_AXI_1_wvalid;
  input UART_0_rxd;
  output UART_0_txd;
  input UART_1_rxd;
  output UART_1_txd;
  output interrupt_0;
  output interrupt_1;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;

  wire [63:0]DDR_AXI4_araddr;
  wire [1:0]DDR_AXI4_arburst;
  wire [3:0]DDR_AXI4_arcache;
  wire [15:0]DDR_AXI4_arid;
  wire [7:0]DDR_AXI4_arlen;
  wire [0:0]DDR_AXI4_arlock;
  wire [2:0]DDR_AXI4_arprot;
  wire [3:0]DDR_AXI4_arqos;
  wire [0:0]DDR_AXI4_arready;
  wire [3:0]DDR_AXI4_arregion;
  wire [2:0]DDR_AXI4_arsize;
  wire [0:0]DDR_AXI4_arvalid;
  wire [63:0]DDR_AXI4_awaddr;
  wire [1:0]DDR_AXI4_awburst;
  wire [3:0]DDR_AXI4_awcache;
  wire [15:0]DDR_AXI4_awid;
  wire [7:0]DDR_AXI4_awlen;
  wire [0:0]DDR_AXI4_awlock;
  wire [2:0]DDR_AXI4_awprot;
  wire [3:0]DDR_AXI4_awqos;
  wire [0:0]DDR_AXI4_awready;
  wire [3:0]DDR_AXI4_awregion;
  wire [2:0]DDR_AXI4_awsize;
  wire [0:0]DDR_AXI4_awvalid;
  wire [15:0]DDR_AXI4_bid;
  wire [0:0]DDR_AXI4_bready;
  wire [1:0]DDR_AXI4_bresp;
  wire [0:0]DDR_AXI4_bvalid;
  wire [511:0]DDR_AXI4_rdata;
  wire [15:0]DDR_AXI4_rid;
  wire [0:0]DDR_AXI4_rlast;
  wire [0:0]DDR_AXI4_rready;
  wire [1:0]DDR_AXI4_rresp;
  wire [0:0]DDR_AXI4_rvalid;
  wire [511:0]DDR_AXI4_wdata;
  wire [0:0]DDR_AXI4_wlast;
  wire [0:0]DDR_AXI4_wready;
  wire [63:0]DDR_AXI4_wstrb;
  wire [0:0]DDR_AXI4_wvalid;
  wire [63:0]DMA_PCIS_AXI4_araddr;
  wire [1:0]DMA_PCIS_AXI4_arburst;
  wire [3:0]DMA_PCIS_AXI4_arcache;
  wire [15:0]DMA_PCIS_AXI4_arid;
  wire [7:0]DMA_PCIS_AXI4_arlen;
  wire [0:0]DMA_PCIS_AXI4_arlock;
  wire [2:0]DMA_PCIS_AXI4_arprot;
  wire [3:0]DMA_PCIS_AXI4_arqos;
  wire [0:0]DMA_PCIS_AXI4_arready;
  wire [2:0]DMA_PCIS_AXI4_arsize;
  wire [0:0]DMA_PCIS_AXI4_arvalid;
  wire [63:0]DMA_PCIS_AXI4_awaddr;
  wire [1:0]DMA_PCIS_AXI4_awburst;
  wire [3:0]DMA_PCIS_AXI4_awcache;
  wire [15:0]DMA_PCIS_AXI4_awid;
  wire [7:0]DMA_PCIS_AXI4_awlen;
  wire [0:0]DMA_PCIS_AXI4_awlock;
  wire [2:0]DMA_PCIS_AXI4_awprot;
  wire [3:0]DMA_PCIS_AXI4_awqos;
  wire [0:0]DMA_PCIS_AXI4_awready;
  wire [2:0]DMA_PCIS_AXI4_awsize;
  wire [0:0]DMA_PCIS_AXI4_awvalid;
  wire [15:0]DMA_PCIS_AXI4_bid;
  wire [0:0]DMA_PCIS_AXI4_bready;
  wire [1:0]DMA_PCIS_AXI4_bresp;
  wire [0:0]DMA_PCIS_AXI4_bvalid;
  wire [511:0]DMA_PCIS_AXI4_rdata;
  wire [15:0]DMA_PCIS_AXI4_rid;
  wire [0:0]DMA_PCIS_AXI4_rlast;
  wire [0:0]DMA_PCIS_AXI4_rready;
  wire [1:0]DMA_PCIS_AXI4_rresp;
  wire [0:0]DMA_PCIS_AXI4_rvalid;
  wire [511:0]DMA_PCIS_AXI4_wdata;
  wire [0:0]DMA_PCIS_AXI4_wlast;
  wire [0:0]DMA_PCIS_AXI4_wready;
  wire [63:0]DMA_PCIS_AXI4_wstrb;
  wire [0:0]DMA_PCIS_AXI4_wvalid;
  wire [63:0]S01_AXI_0_araddr;
  wire [1:0]S01_AXI_0_arburst;
  wire [3:0]S01_AXI_0_arcache;
  wire [4:0]S01_AXI_0_arid;
  wire [7:0]S01_AXI_0_arlen;
  wire [0:0]S01_AXI_0_arlock;
  wire [2:0]S01_AXI_0_arprot;
  wire [3:0]S01_AXI_0_arqos;
  wire [0:0]S01_AXI_0_arready;
  wire [2:0]S01_AXI_0_arsize;
  wire [0:0]S01_AXI_0_arvalid;
  wire [63:0]S01_AXI_0_awaddr;
  wire [1:0]S01_AXI_0_awburst;
  wire [3:0]S01_AXI_0_awcache;
  wire [4:0]S01_AXI_0_awid;
  wire [7:0]S01_AXI_0_awlen;
  wire [0:0]S01_AXI_0_awlock;
  wire [2:0]S01_AXI_0_awprot;
  wire [3:0]S01_AXI_0_awqos;
  wire [0:0]S01_AXI_0_awready;
  wire [2:0]S01_AXI_0_awsize;
  wire [0:0]S01_AXI_0_awvalid;
  wire [4:0]S01_AXI_0_bid;
  wire [0:0]S01_AXI_0_bready;
  wire [1:0]S01_AXI_0_bresp;
  wire [0:0]S01_AXI_0_bvalid;
  wire [63:0]S01_AXI_0_rdata;
  wire [4:0]S01_AXI_0_rid;
  wire [0:0]S01_AXI_0_rlast;
  wire [0:0]S01_AXI_0_rready;
  wire [1:0]S01_AXI_0_rresp;
  wire [0:0]S01_AXI_0_rvalid;
  wire [63:0]S01_AXI_0_wdata;
  wire [0:0]S01_AXI_0_wlast;
  wire [0:0]S01_AXI_0_wready;
  wire [7:0]S01_AXI_0_wstrb;
  wire [0:0]S01_AXI_0_wvalid;
  wire [63:0]S_AXI_0_araddr;
  wire [2:0]S_AXI_0_arprot;
  wire S_AXI_0_arready;
  wire S_AXI_0_arvalid;
  wire [63:0]S_AXI_0_awaddr;
  wire [2:0]S_AXI_0_awprot;
  wire S_AXI_0_awready;
  wire S_AXI_0_awvalid;
  wire S_AXI_0_bready;
  wire [1:0]S_AXI_0_bresp;
  wire S_AXI_0_bvalid;
  wire [31:0]S_AXI_0_rdata;
  wire S_AXI_0_rready;
  wire [1:0]S_AXI_0_rresp;
  wire S_AXI_0_rvalid;
  wire [31:0]S_AXI_0_wdata;
  wire S_AXI_0_wready;
  wire [3:0]S_AXI_0_wstrb;
  wire S_AXI_0_wvalid;
  wire [3:0]S_AXI_1_araddr;
  wire S_AXI_1_arready;
  wire S_AXI_1_arvalid;
  wire [3:0]S_AXI_1_awaddr;
  wire S_AXI_1_awready;
  wire S_AXI_1_awvalid;
  wire S_AXI_1_bready;
  wire [1:0]S_AXI_1_bresp;
  wire S_AXI_1_bvalid;
  wire [31:0]S_AXI_1_rdata;
  wire S_AXI_1_rready;
  wire [1:0]S_AXI_1_rresp;
  wire S_AXI_1_rvalid;
  wire [31:0]S_AXI_1_wdata;
  wire S_AXI_1_wready;
  wire [3:0]S_AXI_1_wstrb;
  wire S_AXI_1_wvalid;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire UART_1_rxd;
  wire UART_1_txd;
  wire interrupt_0;
  wire interrupt_1;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;

  nova_project nova_project_i
       (.DDR_AXI4_araddr(DDR_AXI4_araddr),
        .DDR_AXI4_arburst(DDR_AXI4_arburst),
        .DDR_AXI4_arcache(DDR_AXI4_arcache),
        .DDR_AXI4_arid(DDR_AXI4_arid),
        .DDR_AXI4_arlen(DDR_AXI4_arlen),
        .DDR_AXI4_arlock(DDR_AXI4_arlock),
        .DDR_AXI4_arprot(DDR_AXI4_arprot),
        .DDR_AXI4_arqos(DDR_AXI4_arqos),
        .DDR_AXI4_arready(DDR_AXI4_arready),
        .DDR_AXI4_arregion(DDR_AXI4_arregion),
        .DDR_AXI4_arsize(DDR_AXI4_arsize),
        .DDR_AXI4_arvalid(DDR_AXI4_arvalid),
        .DDR_AXI4_awaddr(DDR_AXI4_awaddr),
        .DDR_AXI4_awburst(DDR_AXI4_awburst),
        .DDR_AXI4_awcache(DDR_AXI4_awcache),
        .DDR_AXI4_awid(DDR_AXI4_awid),
        .DDR_AXI4_awlen(DDR_AXI4_awlen),
        .DDR_AXI4_awlock(DDR_AXI4_awlock),
        .DDR_AXI4_awprot(DDR_AXI4_awprot),
        .DDR_AXI4_awqos(DDR_AXI4_awqos),
        .DDR_AXI4_awready(DDR_AXI4_awready),
        .DDR_AXI4_awregion(DDR_AXI4_awregion),
        .DDR_AXI4_awsize(DDR_AXI4_awsize),
        .DDR_AXI4_awvalid(DDR_AXI4_awvalid),
        .DDR_AXI4_bid(DDR_AXI4_bid),
        .DDR_AXI4_bready(DDR_AXI4_bready),
        .DDR_AXI4_bresp(DDR_AXI4_bresp),
        .DDR_AXI4_bvalid(DDR_AXI4_bvalid),
        .DDR_AXI4_rdata(DDR_AXI4_rdata),
        .DDR_AXI4_rid(DDR_AXI4_rid),
        .DDR_AXI4_rlast(DDR_AXI4_rlast),
        .DDR_AXI4_rready(DDR_AXI4_rready),
        .DDR_AXI4_rresp(DDR_AXI4_rresp),
        .DDR_AXI4_rvalid(DDR_AXI4_rvalid),
        .DDR_AXI4_wdata(DDR_AXI4_wdata),
        .DDR_AXI4_wlast(DDR_AXI4_wlast),
        .DDR_AXI4_wready(DDR_AXI4_wready),
        .DDR_AXI4_wstrb(DDR_AXI4_wstrb),
        .DDR_AXI4_wvalid(DDR_AXI4_wvalid),
        .DMA_PCIS_AXI4_araddr(DMA_PCIS_AXI4_araddr),
        .DMA_PCIS_AXI4_arburst(DMA_PCIS_AXI4_arburst),
        .DMA_PCIS_AXI4_arcache(DMA_PCIS_AXI4_arcache),
        .DMA_PCIS_AXI4_arid(DMA_PCIS_AXI4_arid),
        .DMA_PCIS_AXI4_arlen(DMA_PCIS_AXI4_arlen),
        .DMA_PCIS_AXI4_arlock(DMA_PCIS_AXI4_arlock),
        .DMA_PCIS_AXI4_arprot(DMA_PCIS_AXI4_arprot),
        .DMA_PCIS_AXI4_arqos(DMA_PCIS_AXI4_arqos),
        .DMA_PCIS_AXI4_arready(DMA_PCIS_AXI4_arready),
        .DMA_PCIS_AXI4_arsize(DMA_PCIS_AXI4_arsize),
        .DMA_PCIS_AXI4_arvalid(DMA_PCIS_AXI4_arvalid),
        .DMA_PCIS_AXI4_awaddr(DMA_PCIS_AXI4_awaddr),
        .DMA_PCIS_AXI4_awburst(DMA_PCIS_AXI4_awburst),
        .DMA_PCIS_AXI4_awcache(DMA_PCIS_AXI4_awcache),
        .DMA_PCIS_AXI4_awid(DMA_PCIS_AXI4_awid),
        .DMA_PCIS_AXI4_awlen(DMA_PCIS_AXI4_awlen),
        .DMA_PCIS_AXI4_awlock(DMA_PCIS_AXI4_awlock),
        .DMA_PCIS_AXI4_awprot(DMA_PCIS_AXI4_awprot),
        .DMA_PCIS_AXI4_awqos(DMA_PCIS_AXI4_awqos),
        .DMA_PCIS_AXI4_awready(DMA_PCIS_AXI4_awready),
        .DMA_PCIS_AXI4_awsize(DMA_PCIS_AXI4_awsize),
        .DMA_PCIS_AXI4_awvalid(DMA_PCIS_AXI4_awvalid),
        .DMA_PCIS_AXI4_bid(DMA_PCIS_AXI4_bid),
        .DMA_PCIS_AXI4_bready(DMA_PCIS_AXI4_bready),
        .DMA_PCIS_AXI4_bresp(DMA_PCIS_AXI4_bresp),
        .DMA_PCIS_AXI4_bvalid(DMA_PCIS_AXI4_bvalid),
        .DMA_PCIS_AXI4_rdata(DMA_PCIS_AXI4_rdata),
        .DMA_PCIS_AXI4_rid(DMA_PCIS_AXI4_rid),
        .DMA_PCIS_AXI4_rlast(DMA_PCIS_AXI4_rlast),
        .DMA_PCIS_AXI4_rready(DMA_PCIS_AXI4_rready),
        .DMA_PCIS_AXI4_rresp(DMA_PCIS_AXI4_rresp),
        .DMA_PCIS_AXI4_rvalid(DMA_PCIS_AXI4_rvalid),
        .DMA_PCIS_AXI4_wdata(DMA_PCIS_AXI4_wdata),
        .DMA_PCIS_AXI4_wlast(DMA_PCIS_AXI4_wlast),
        .DMA_PCIS_AXI4_wready(DMA_PCIS_AXI4_wready),
        .DMA_PCIS_AXI4_wstrb(DMA_PCIS_AXI4_wstrb),
        .DMA_PCIS_AXI4_wvalid(DMA_PCIS_AXI4_wvalid),
        .S01_AXI_0_araddr(S01_AXI_0_araddr),
        .S01_AXI_0_arburst(S01_AXI_0_arburst),
        .S01_AXI_0_arcache(S01_AXI_0_arcache),
        .S01_AXI_0_arid(S01_AXI_0_arid),
        .S01_AXI_0_arlen(S01_AXI_0_arlen),
        .S01_AXI_0_arlock(S01_AXI_0_arlock),
        .S01_AXI_0_arprot(S01_AXI_0_arprot),
        .S01_AXI_0_arqos(S01_AXI_0_arqos),
        .S01_AXI_0_arready(S01_AXI_0_arready),
        .S01_AXI_0_arsize(S01_AXI_0_arsize),
        .S01_AXI_0_arvalid(S01_AXI_0_arvalid),
        .S01_AXI_0_awaddr(S01_AXI_0_awaddr),
        .S01_AXI_0_awburst(S01_AXI_0_awburst),
        .S01_AXI_0_awcache(S01_AXI_0_awcache),
        .S01_AXI_0_awid(S01_AXI_0_awid),
        .S01_AXI_0_awlen(S01_AXI_0_awlen),
        .S01_AXI_0_awlock(S01_AXI_0_awlock),
        .S01_AXI_0_awprot(S01_AXI_0_awprot),
        .S01_AXI_0_awqos(S01_AXI_0_awqos),
        .S01_AXI_0_awready(S01_AXI_0_awready),
        .S01_AXI_0_awsize(S01_AXI_0_awsize),
        .S01_AXI_0_awvalid(S01_AXI_0_awvalid),
        .S01_AXI_0_bid(S01_AXI_0_bid),
        .S01_AXI_0_bready(S01_AXI_0_bready),
        .S01_AXI_0_bresp(S01_AXI_0_bresp),
        .S01_AXI_0_bvalid(S01_AXI_0_bvalid),
        .S01_AXI_0_rdata(S01_AXI_0_rdata),
        .S01_AXI_0_rid(S01_AXI_0_rid),
        .S01_AXI_0_rlast(S01_AXI_0_rlast),
        .S01_AXI_0_rready(S01_AXI_0_rready),
        .S01_AXI_0_rresp(S01_AXI_0_rresp),
        .S01_AXI_0_rvalid(S01_AXI_0_rvalid),
        .S01_AXI_0_wdata(S01_AXI_0_wdata),
        .S01_AXI_0_wlast(S01_AXI_0_wlast),
        .S01_AXI_0_wready(S01_AXI_0_wready),
        .S01_AXI_0_wstrb(S01_AXI_0_wstrb),
        .S01_AXI_0_wvalid(S01_AXI_0_wvalid),
        .S_AXI_0_araddr(S_AXI_0_araddr),
        .S_AXI_0_arprot(S_AXI_0_arprot),
        .S_AXI_0_arready(S_AXI_0_arready),
        .S_AXI_0_arvalid(S_AXI_0_arvalid),
        .S_AXI_0_awaddr(S_AXI_0_awaddr),
        .S_AXI_0_awprot(S_AXI_0_awprot),
        .S_AXI_0_awready(S_AXI_0_awready),
        .S_AXI_0_awvalid(S_AXI_0_awvalid),
        .S_AXI_0_bready(S_AXI_0_bready),
        .S_AXI_0_bresp(S_AXI_0_bresp),
        .S_AXI_0_bvalid(S_AXI_0_bvalid),
        .S_AXI_0_rdata(S_AXI_0_rdata),
        .S_AXI_0_rready(S_AXI_0_rready),
        .S_AXI_0_rresp(S_AXI_0_rresp),
        .S_AXI_0_rvalid(S_AXI_0_rvalid),
        .S_AXI_0_wdata(S_AXI_0_wdata),
        .S_AXI_0_wready(S_AXI_0_wready),
        .S_AXI_0_wstrb(S_AXI_0_wstrb),
        .S_AXI_0_wvalid(S_AXI_0_wvalid),
        .S_AXI_1_araddr(S_AXI_1_araddr),
        .S_AXI_1_arready(S_AXI_1_arready),
        .S_AXI_1_arvalid(S_AXI_1_arvalid),
        .S_AXI_1_awaddr(S_AXI_1_awaddr),
        .S_AXI_1_awready(S_AXI_1_awready),
        .S_AXI_1_awvalid(S_AXI_1_awvalid),
        .S_AXI_1_bready(S_AXI_1_bready),
        .S_AXI_1_bresp(S_AXI_1_bresp),
        .S_AXI_1_bvalid(S_AXI_1_bvalid),
        .S_AXI_1_rdata(S_AXI_1_rdata),
        .S_AXI_1_rready(S_AXI_1_rready),
        .S_AXI_1_rresp(S_AXI_1_rresp),
        .S_AXI_1_rvalid(S_AXI_1_rvalid),
        .S_AXI_1_wdata(S_AXI_1_wdata),
        .S_AXI_1_wready(S_AXI_1_wready),
        .S_AXI_1_wstrb(S_AXI_1_wstrb),
        .S_AXI_1_wvalid(S_AXI_1_wvalid),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .UART_1_rxd(UART_1_rxd),
        .UART_1_txd(UART_1_txd),
        .interrupt_0(interrupt_0),
        .interrupt_1(interrupt_1),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));
endmodule
