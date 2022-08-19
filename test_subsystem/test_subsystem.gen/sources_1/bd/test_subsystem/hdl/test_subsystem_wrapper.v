//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Thu Aug 18 11:05:05 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target test_subsystem_wrapper.bd
//Design      : test_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module test_subsystem_wrapper
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
  input [31:0]OCL_AXI4L_araddr;
  input [2:0]OCL_AXI4L_arprot;
  output [0:0]OCL_AXI4L_arready;
  input [0:0]OCL_AXI4L_arvalid;
  input [31:0]OCL_AXI4L_awaddr;
  input [2:0]OCL_AXI4L_awprot;
  output [0:0]OCL_AXI4L_awready;
  input [0:0]OCL_AXI4L_awvalid;
  input [0:0]OCL_AXI4L_bready;
  output [1:0]OCL_AXI4L_bresp;
  output [0:0]OCL_AXI4L_bvalid;
  output [31:0]OCL_AXI4L_rdata;
  input [0:0]OCL_AXI4L_rready;
  output [1:0]OCL_AXI4L_rresp;
  output [0:0]OCL_AXI4L_rvalid;
  input [31:0]OCL_AXI4L_wdata;
  output [0:0]OCL_AXI4L_wready;
  input [3:0]OCL_AXI4L_wstrb;
  input [0:0]OCL_AXI4L_wvalid;
  input [63:0]S_DDR_araddr;
  input [1:0]S_DDR_arburst;
  input [3:0]S_DDR_arcache;
  input [15:0]S_DDR_arid;
  input [7:0]S_DDR_arlen;
  input [0:0]S_DDR_arlock;
  input [2:0]S_DDR_arprot;
  input [3:0]S_DDR_arqos;
  output S_DDR_arready;
  input [3:0]S_DDR_arregion;
  input [2:0]S_DDR_arsize;
  input S_DDR_arvalid;
  input [63:0]S_DDR_awaddr;
  input [1:0]S_DDR_awburst;
  input [3:0]S_DDR_awcache;
  input [15:0]S_DDR_awid;
  input [7:0]S_DDR_awlen;
  input [0:0]S_DDR_awlock;
  input [2:0]S_DDR_awprot;
  input [3:0]S_DDR_awqos;
  output S_DDR_awready;
  input [3:0]S_DDR_awregion;
  input [2:0]S_DDR_awsize;
  input S_DDR_awvalid;
  output [15:0]S_DDR_bid;
  input S_DDR_bready;
  output [1:0]S_DDR_bresp;
  output S_DDR_bvalid;
  output [63:0]S_DDR_rdata;
  output [15:0]S_DDR_rid;
  output S_DDR_rlast;
  input S_DDR_rready;
  output [1:0]S_DDR_rresp;
  output S_DDR_rvalid;
  input [63:0]S_DDR_wdata;
  input S_DDR_wlast;
  output S_DDR_wready;
  input [7:0]S_DDR_wstrb;
  input S_DDR_wvalid;
  input UART_0_rxd;
  output UART_0_txd;
  output interrupt_0;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;
  output tap_tck_0;
  output tap_tdi_0;
  input tap_tdo_0;
  output tap_tms_0;

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
  wire [31:0]OCL_AXI4L_araddr;
  wire [2:0]OCL_AXI4L_arprot;
  wire [0:0]OCL_AXI4L_arready;
  wire [0:0]OCL_AXI4L_arvalid;
  wire [31:0]OCL_AXI4L_awaddr;
  wire [2:0]OCL_AXI4L_awprot;
  wire [0:0]OCL_AXI4L_awready;
  wire [0:0]OCL_AXI4L_awvalid;
  wire [0:0]OCL_AXI4L_bready;
  wire [1:0]OCL_AXI4L_bresp;
  wire [0:0]OCL_AXI4L_bvalid;
  wire [31:0]OCL_AXI4L_rdata;
  wire [0:0]OCL_AXI4L_rready;
  wire [1:0]OCL_AXI4L_rresp;
  wire [0:0]OCL_AXI4L_rvalid;
  wire [31:0]OCL_AXI4L_wdata;
  wire [0:0]OCL_AXI4L_wready;
  wire [3:0]OCL_AXI4L_wstrb;
  wire [0:0]OCL_AXI4L_wvalid;
  wire [63:0]S_DDR_araddr;
  wire [1:0]S_DDR_arburst;
  wire [3:0]S_DDR_arcache;
  wire [15:0]S_DDR_arid;
  wire [7:0]S_DDR_arlen;
  wire [0:0]S_DDR_arlock;
  wire [2:0]S_DDR_arprot;
  wire [3:0]S_DDR_arqos;
  wire S_DDR_arready;
  wire [3:0]S_DDR_arregion;
  wire [2:0]S_DDR_arsize;
  wire S_DDR_arvalid;
  wire [63:0]S_DDR_awaddr;
  wire [1:0]S_DDR_awburst;
  wire [3:0]S_DDR_awcache;
  wire [15:0]S_DDR_awid;
  wire [7:0]S_DDR_awlen;
  wire [0:0]S_DDR_awlock;
  wire [2:0]S_DDR_awprot;
  wire [3:0]S_DDR_awqos;
  wire S_DDR_awready;
  wire [3:0]S_DDR_awregion;
  wire [2:0]S_DDR_awsize;
  wire S_DDR_awvalid;
  wire [15:0]S_DDR_bid;
  wire S_DDR_bready;
  wire [1:0]S_DDR_bresp;
  wire S_DDR_bvalid;
  wire [63:0]S_DDR_rdata;
  wire [15:0]S_DDR_rid;
  wire S_DDR_rlast;
  wire S_DDR_rready;
  wire [1:0]S_DDR_rresp;
  wire S_DDR_rvalid;
  wire [63:0]S_DDR_wdata;
  wire S_DDR_wlast;
  wire S_DDR_wready;
  wire [7:0]S_DDR_wstrb;
  wire S_DDR_wvalid;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire interrupt_0;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;
  wire tap_tck_0;
  wire tap_tdi_0;
  wire tap_tdo_0;
  wire tap_tms_0;

  test_subsystem test_subsystem_i
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
        .OCL_AXI4L_araddr(OCL_AXI4L_araddr),
        .OCL_AXI4L_arprot(OCL_AXI4L_arprot),
        .OCL_AXI4L_arready(OCL_AXI4L_arready),
        .OCL_AXI4L_arvalid(OCL_AXI4L_arvalid),
        .OCL_AXI4L_awaddr(OCL_AXI4L_awaddr),
        .OCL_AXI4L_awprot(OCL_AXI4L_awprot),
        .OCL_AXI4L_awready(OCL_AXI4L_awready),
        .OCL_AXI4L_awvalid(OCL_AXI4L_awvalid),
        .OCL_AXI4L_bready(OCL_AXI4L_bready),
        .OCL_AXI4L_bresp(OCL_AXI4L_bresp),
        .OCL_AXI4L_bvalid(OCL_AXI4L_bvalid),
        .OCL_AXI4L_rdata(OCL_AXI4L_rdata),
        .OCL_AXI4L_rready(OCL_AXI4L_rready),
        .OCL_AXI4L_rresp(OCL_AXI4L_rresp),
        .OCL_AXI4L_rvalid(OCL_AXI4L_rvalid),
        .OCL_AXI4L_wdata(OCL_AXI4L_wdata),
        .OCL_AXI4L_wready(OCL_AXI4L_wready),
        .OCL_AXI4L_wstrb(OCL_AXI4L_wstrb),
        .OCL_AXI4L_wvalid(OCL_AXI4L_wvalid),
        .S_DDR_araddr(S_DDR_araddr),
        .S_DDR_arburst(S_DDR_arburst),
        .S_DDR_arcache(S_DDR_arcache),
        .S_DDR_arid(S_DDR_arid),
        .S_DDR_arlen(S_DDR_arlen),
        .S_DDR_arlock(S_DDR_arlock),
        .S_DDR_arprot(S_DDR_arprot),
        .S_DDR_arqos(S_DDR_arqos),
        .S_DDR_arready(S_DDR_arready),
        .S_DDR_arregion(S_DDR_arregion),
        .S_DDR_arsize(S_DDR_arsize),
        .S_DDR_arvalid(S_DDR_arvalid),
        .S_DDR_awaddr(S_DDR_awaddr),
        .S_DDR_awburst(S_DDR_awburst),
        .S_DDR_awcache(S_DDR_awcache),
        .S_DDR_awid(S_DDR_awid),
        .S_DDR_awlen(S_DDR_awlen),
        .S_DDR_awlock(S_DDR_awlock),
        .S_DDR_awprot(S_DDR_awprot),
        .S_DDR_awqos(S_DDR_awqos),
        .S_DDR_awready(S_DDR_awready),
        .S_DDR_awregion(S_DDR_awregion),
        .S_DDR_awsize(S_DDR_awsize),
        .S_DDR_awvalid(S_DDR_awvalid),
        .S_DDR_bid(S_DDR_bid),
        .S_DDR_bready(S_DDR_bready),
        .S_DDR_bresp(S_DDR_bresp),
        .S_DDR_bvalid(S_DDR_bvalid),
        .S_DDR_rdata(S_DDR_rdata),
        .S_DDR_rid(S_DDR_rid),
        .S_DDR_rlast(S_DDR_rlast),
        .S_DDR_rready(S_DDR_rready),
        .S_DDR_rresp(S_DDR_rresp),
        .S_DDR_rvalid(S_DDR_rvalid),
        .S_DDR_wdata(S_DDR_wdata),
        .S_DDR_wlast(S_DDR_wlast),
        .S_DDR_wready(S_DDR_wready),
        .S_DDR_wstrb(S_DDR_wstrb),
        .S_DDR_wvalid(S_DDR_wvalid),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .interrupt_0(interrupt_0),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .tap_tck_0(tap_tck_0),
        .tap_tdi_0(tap_tdi_0),
        .tap_tdo_0(tap_tdo_0),
        .tap_tms_0(tap_tms_0));
endmodule
