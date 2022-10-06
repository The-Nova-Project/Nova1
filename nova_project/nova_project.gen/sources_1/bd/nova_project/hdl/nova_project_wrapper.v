//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Wed Sep 14 05:47:10 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target nova_project_wrapper.bd
//Design      : nova_project_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module nova_project_wrapper
   (M02_AXI_MTML_araddr,
    M02_AXI_MTML_arburst,
    M02_AXI_MTML_arcache,
    M02_AXI_MTML_arid,
    M02_AXI_MTML_arlen,
    M02_AXI_MTML_arlock,
    M02_AXI_MTML_arprot,
    M02_AXI_MTML_arqos,
    M02_AXI_MTML_arready,
    M02_AXI_MTML_arregion,
    M02_AXI_MTML_arsize,
    M02_AXI_MTML_arvalid,
    M02_AXI_MTML_awaddr,
    M02_AXI_MTML_awburst,
    M02_AXI_MTML_awcache,
    M02_AXI_MTML_awid,
    M02_AXI_MTML_awlen,
    M02_AXI_MTML_awlock,
    M02_AXI_MTML_awprot,
    M02_AXI_MTML_awqos,
    M02_AXI_MTML_awready,
    M02_AXI_MTML_awregion,
    M02_AXI_MTML_awsize,
    M02_AXI_MTML_awvalid,
    M02_AXI_MTML_bid,
    M02_AXI_MTML_bready,
    M02_AXI_MTML_bresp,
    M02_AXI_MTML_bvalid,
    M02_AXI_MTML_rdata,
    M02_AXI_MTML_rid,
    M02_AXI_MTML_rlast,
    M02_AXI_MTML_rready,
    M02_AXI_MTML_rresp,
    M02_AXI_MTML_rvalid,
    M02_AXI_MTML_wdata,
    M02_AXI_MTML_wlast,
    M02_AXI_MTML_wready,
    M02_AXI_MTML_wstrb,
    M02_AXI_MTML_wvalid,
    M03_AXI_DDR_araddr,
    M03_AXI_DDR_arburst,
    M03_AXI_DDR_arcache,
    M03_AXI_DDR_arid,
    M03_AXI_DDR_arlen,
    M03_AXI_DDR_arlock,
    M03_AXI_DDR_arprot,
    M03_AXI_DDR_arqos,
    M03_AXI_DDR_arready,
    M03_AXI_DDR_arregion,
    M03_AXI_DDR_arsize,
    M03_AXI_DDR_arvalid,
    M03_AXI_DDR_awaddr,
    M03_AXI_DDR_awburst,
    M03_AXI_DDR_awcache,
    M03_AXI_DDR_awid,
    M03_AXI_DDR_awlen,
    M03_AXI_DDR_awlock,
    M03_AXI_DDR_awprot,
    M03_AXI_DDR_awqos,
    M03_AXI_DDR_awready,
    M03_AXI_DDR_awregion,
    M03_AXI_DDR_awsize,
    M03_AXI_DDR_awvalid,
    M03_AXI_DDR_bid,
    M03_AXI_DDR_bready,
    M03_AXI_DDR_bresp,
    M03_AXI_DDR_bvalid,
    M03_AXI_DDR_rdata,
    M03_AXI_DDR_rid,
    M03_AXI_DDR_rlast,
    M03_AXI_DDR_rready,
    M03_AXI_DDR_rresp,
    M03_AXI_DDR_rvalid,
    M03_AXI_DDR_wdata,
    M03_AXI_DDR_wlast,
    M03_AXI_DDR_wready,
    M03_AXI_DDR_wstrb,
    M03_AXI_DDR_wvalid,
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
    S02_AXI_MTML_araddr,
    S02_AXI_MTML_arburst,
    S02_AXI_MTML_arcache,
    S02_AXI_MTML_arid,
    S02_AXI_MTML_arlen,
    S02_AXI_MTML_arlock,
    S02_AXI_MTML_arprot,
    S02_AXI_MTML_arqos,
    S02_AXI_MTML_arready,
    S02_AXI_MTML_arsize,
    S02_AXI_MTML_arvalid,
    S02_AXI_MTML_awaddr,
    S02_AXI_MTML_awburst,
    S02_AXI_MTML_awcache,
    S02_AXI_MTML_awid,
    S02_AXI_MTML_awlen,
    S02_AXI_MTML_awlock,
    S02_AXI_MTML_awprot,
    S02_AXI_MTML_awqos,
    S02_AXI_MTML_awready,
    S02_AXI_MTML_awsize,
    S02_AXI_MTML_awvalid,
    S02_AXI_MTML_bid,
    S02_AXI_MTML_bready,
    S02_AXI_MTML_bresp,
    S02_AXI_MTML_bvalid,
    S02_AXI_MTML_rdata,
    S02_AXI_MTML_rid,
    S02_AXI_MTML_rlast,
    S02_AXI_MTML_rready,
    S02_AXI_MTML_rresp,
    S02_AXI_MTML_rvalid,
    S02_AXI_MTML_wdata,
    S02_AXI_MTML_wlast,
    S02_AXI_MTML_wready,
    S02_AXI_MTML_wstrb,
    S02_AXI_MTML_wvalid,
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
    UART_0_rxd,
    UART_0_txd,
    interrupt_0,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  output [63:0]M02_AXI_MTML_araddr;
  output [1:0]M02_AXI_MTML_arburst;
  output [3:0]M02_AXI_MTML_arcache;
  output [4:0]M02_AXI_MTML_arid;
  output [7:0]M02_AXI_MTML_arlen;
  output [0:0]M02_AXI_MTML_arlock;
  output [2:0]M02_AXI_MTML_arprot;
  output [3:0]M02_AXI_MTML_arqos;
  input [0:0]M02_AXI_MTML_arready;
  output [3:0]M02_AXI_MTML_arregion;
  output [2:0]M02_AXI_MTML_arsize;
  output [0:0]M02_AXI_MTML_arvalid;
  output [63:0]M02_AXI_MTML_awaddr;
  output [1:0]M02_AXI_MTML_awburst;
  output [3:0]M02_AXI_MTML_awcache;
  output [4:0]M02_AXI_MTML_awid;
  output [7:0]M02_AXI_MTML_awlen;
  output [0:0]M02_AXI_MTML_awlock;
  output [2:0]M02_AXI_MTML_awprot;
  output [3:0]M02_AXI_MTML_awqos;
  input [0:0]M02_AXI_MTML_awready;
  output [3:0]M02_AXI_MTML_awregion;
  output [2:0]M02_AXI_MTML_awsize;
  output [0:0]M02_AXI_MTML_awvalid;
  input [4:0]M02_AXI_MTML_bid;
  output [0:0]M02_AXI_MTML_bready;
  input [1:0]M02_AXI_MTML_bresp;
  input [0:0]M02_AXI_MTML_bvalid;
  input [63:0]M02_AXI_MTML_rdata;
  input [4:0]M02_AXI_MTML_rid;
  input [0:0]M02_AXI_MTML_rlast;
  output [0:0]M02_AXI_MTML_rready;
  input [1:0]M02_AXI_MTML_rresp;
  input [0:0]M02_AXI_MTML_rvalid;
  output [63:0]M02_AXI_MTML_wdata;
  output [0:0]M02_AXI_MTML_wlast;
  input [0:0]M02_AXI_MTML_wready;
  output [7:0]M02_AXI_MTML_wstrb;
  output [0:0]M02_AXI_MTML_wvalid;
  output [63:0]M03_AXI_DDR_araddr;
  output [1:0]M03_AXI_DDR_arburst;
  output [3:0]M03_AXI_DDR_arcache;
  output [4:0]M03_AXI_DDR_arid;
  output [7:0]M03_AXI_DDR_arlen;
  output [0:0]M03_AXI_DDR_arlock;
  output [2:0]M03_AXI_DDR_arprot;
  output [3:0]M03_AXI_DDR_arqos;
  input [0:0]M03_AXI_DDR_arready;
  output [3:0]M03_AXI_DDR_arregion;
  output [2:0]M03_AXI_DDR_arsize;
  output [0:0]M03_AXI_DDR_arvalid;
  output [63:0]M03_AXI_DDR_awaddr;
  output [1:0]M03_AXI_DDR_awburst;
  output [3:0]M03_AXI_DDR_awcache;
  output [4:0]M03_AXI_DDR_awid;
  output [7:0]M03_AXI_DDR_awlen;
  output [0:0]M03_AXI_DDR_awlock;
  output [2:0]M03_AXI_DDR_awprot;
  output [3:0]M03_AXI_DDR_awqos;
  input [0:0]M03_AXI_DDR_awready;
  output [3:0]M03_AXI_DDR_awregion;
  output [2:0]M03_AXI_DDR_awsize;
  output [0:0]M03_AXI_DDR_awvalid;
  input [4:0]M03_AXI_DDR_bid;
  output [0:0]M03_AXI_DDR_bready;
  input [1:0]M03_AXI_DDR_bresp;
  input [0:0]M03_AXI_DDR_bvalid;
  input [63:0]M03_AXI_DDR_rdata;
  input [4:0]M03_AXI_DDR_rid;
  input [0:0]M03_AXI_DDR_rlast;
  output [0:0]M03_AXI_DDR_rready;
  input [1:0]M03_AXI_DDR_rresp;
  input [0:0]M03_AXI_DDR_rvalid;
  output [63:0]M03_AXI_DDR_wdata;
  output [0:0]M03_AXI_DDR_wlast;
  input [0:0]M03_AXI_DDR_wready;
  output [7:0]M03_AXI_DDR_wstrb;
  output [0:0]M03_AXI_DDR_wvalid;
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
  input [63:0]S02_AXI_MTML_araddr;
  input [1:0]S02_AXI_MTML_arburst;
  input [3:0]S02_AXI_MTML_arcache;
  input [4:0]S02_AXI_MTML_arid;
  input [7:0]S02_AXI_MTML_arlen;
  input [0:0]S02_AXI_MTML_arlock;
  input [2:0]S02_AXI_MTML_arprot;
  input [3:0]S02_AXI_MTML_arqos;
  output [0:0]S02_AXI_MTML_arready;
  input [2:0]S02_AXI_MTML_arsize;
  input [0:0]S02_AXI_MTML_arvalid;
  input [63:0]S02_AXI_MTML_awaddr;
  input [1:0]S02_AXI_MTML_awburst;
  input [3:0]S02_AXI_MTML_awcache;
  input [4:0]S02_AXI_MTML_awid;
  input [7:0]S02_AXI_MTML_awlen;
  input [0:0]S02_AXI_MTML_awlock;
  input [2:0]S02_AXI_MTML_awprot;
  input [3:0]S02_AXI_MTML_awqos;
  output [0:0]S02_AXI_MTML_awready;
  input [2:0]S02_AXI_MTML_awsize;
  input [0:0]S02_AXI_MTML_awvalid;
  output [4:0]S02_AXI_MTML_bid;
  input [0:0]S02_AXI_MTML_bready;
  output [1:0]S02_AXI_MTML_bresp;
  output [0:0]S02_AXI_MTML_bvalid;
  output [63:0]S02_AXI_MTML_rdata;
  output [4:0]S02_AXI_MTML_rid;
  output [0:0]S02_AXI_MTML_rlast;
  input [0:0]S02_AXI_MTML_rready;
  output [1:0]S02_AXI_MTML_rresp;
  output [0:0]S02_AXI_MTML_rvalid;
  input [63:0]S02_AXI_MTML_wdata;
  input [0:0]S02_AXI_MTML_wlast;
  output [0:0]S02_AXI_MTML_wready;
  input [7:0]S02_AXI_MTML_wstrb;
  input [0:0]S02_AXI_MTML_wvalid;
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
  input UART_0_rxd;
  output UART_0_txd;
  output interrupt_0;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;

  wire [63:0]M02_AXI_MTML_araddr;
  wire [1:0]M02_AXI_MTML_arburst;
  wire [3:0]M02_AXI_MTML_arcache;
  wire [4:0]M02_AXI_MTML_arid;
  wire [7:0]M02_AXI_MTML_arlen;
  wire [0:0]M02_AXI_MTML_arlock;
  wire [2:0]M02_AXI_MTML_arprot;
  wire [3:0]M02_AXI_MTML_arqos;
  wire [0:0]M02_AXI_MTML_arready;
  wire [3:0]M02_AXI_MTML_arregion;
  wire [2:0]M02_AXI_MTML_arsize;
  wire [0:0]M02_AXI_MTML_arvalid;
  wire [63:0]M02_AXI_MTML_awaddr;
  wire [1:0]M02_AXI_MTML_awburst;
  wire [3:0]M02_AXI_MTML_awcache;
  wire [4:0]M02_AXI_MTML_awid;
  wire [7:0]M02_AXI_MTML_awlen;
  wire [0:0]M02_AXI_MTML_awlock;
  wire [2:0]M02_AXI_MTML_awprot;
  wire [3:0]M02_AXI_MTML_awqos;
  wire [0:0]M02_AXI_MTML_awready;
  wire [3:0]M02_AXI_MTML_awregion;
  wire [2:0]M02_AXI_MTML_awsize;
  wire [0:0]M02_AXI_MTML_awvalid;
  wire [4:0]M02_AXI_MTML_bid;
  wire [0:0]M02_AXI_MTML_bready;
  wire [1:0]M02_AXI_MTML_bresp;
  wire [0:0]M02_AXI_MTML_bvalid;
  wire [63:0]M02_AXI_MTML_rdata;
  wire [4:0]M02_AXI_MTML_rid;
  wire [0:0]M02_AXI_MTML_rlast;
  wire [0:0]M02_AXI_MTML_rready;
  wire [1:0]M02_AXI_MTML_rresp;
  wire [0:0]M02_AXI_MTML_rvalid;
  wire [63:0]M02_AXI_MTML_wdata;
  wire [0:0]M02_AXI_MTML_wlast;
  wire [0:0]M02_AXI_MTML_wready;
  wire [7:0]M02_AXI_MTML_wstrb;
  wire [0:0]M02_AXI_MTML_wvalid;
  wire [63:0]M03_AXI_DDR_araddr;
  wire [1:0]M03_AXI_DDR_arburst;
  wire [3:0]M03_AXI_DDR_arcache;
  wire [4:0]M03_AXI_DDR_arid;
  wire [7:0]M03_AXI_DDR_arlen;
  wire [0:0]M03_AXI_DDR_arlock;
  wire [2:0]M03_AXI_DDR_arprot;
  wire [3:0]M03_AXI_DDR_arqos;
  wire [0:0]M03_AXI_DDR_arready;
  wire [3:0]M03_AXI_DDR_arregion;
  wire [2:0]M03_AXI_DDR_arsize;
  wire [0:0]M03_AXI_DDR_arvalid;
  wire [63:0]M03_AXI_DDR_awaddr;
  wire [1:0]M03_AXI_DDR_awburst;
  wire [3:0]M03_AXI_DDR_awcache;
  wire [4:0]M03_AXI_DDR_awid;
  wire [7:0]M03_AXI_DDR_awlen;
  wire [0:0]M03_AXI_DDR_awlock;
  wire [2:0]M03_AXI_DDR_awprot;
  wire [3:0]M03_AXI_DDR_awqos;
  wire [0:0]M03_AXI_DDR_awready;
  wire [3:0]M03_AXI_DDR_awregion;
  wire [2:0]M03_AXI_DDR_awsize;
  wire [0:0]M03_AXI_DDR_awvalid;
  wire [4:0]M03_AXI_DDR_bid;
  wire [0:0]M03_AXI_DDR_bready;
  wire [1:0]M03_AXI_DDR_bresp;
  wire [0:0]M03_AXI_DDR_bvalid;
  wire [63:0]M03_AXI_DDR_rdata;
  wire [4:0]M03_AXI_DDR_rid;
  wire [0:0]M03_AXI_DDR_rlast;
  wire [0:0]M03_AXI_DDR_rready;
  wire [1:0]M03_AXI_DDR_rresp;
  wire [0:0]M03_AXI_DDR_rvalid;
  wire [63:0]M03_AXI_DDR_wdata;
  wire [0:0]M03_AXI_DDR_wlast;
  wire [0:0]M03_AXI_DDR_wready;
  wire [7:0]M03_AXI_DDR_wstrb;
  wire [0:0]M03_AXI_DDR_wvalid;
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
  wire [63:0]S02_AXI_MTML_araddr;
  wire [1:0]S02_AXI_MTML_arburst;
  wire [3:0]S02_AXI_MTML_arcache;
  wire [4:0]S02_AXI_MTML_arid;
  wire [7:0]S02_AXI_MTML_arlen;
  wire [0:0]S02_AXI_MTML_arlock;
  wire [2:0]S02_AXI_MTML_arprot;
  wire [3:0]S02_AXI_MTML_arqos;
  wire [0:0]S02_AXI_MTML_arready;
  wire [2:0]S02_AXI_MTML_arsize;
  wire [0:0]S02_AXI_MTML_arvalid;
  wire [63:0]S02_AXI_MTML_awaddr;
  wire [1:0]S02_AXI_MTML_awburst;
  wire [3:0]S02_AXI_MTML_awcache;
  wire [4:0]S02_AXI_MTML_awid;
  wire [7:0]S02_AXI_MTML_awlen;
  wire [0:0]S02_AXI_MTML_awlock;
  wire [2:0]S02_AXI_MTML_awprot;
  wire [3:0]S02_AXI_MTML_awqos;
  wire [0:0]S02_AXI_MTML_awready;
  wire [2:0]S02_AXI_MTML_awsize;
  wire [0:0]S02_AXI_MTML_awvalid;
  wire [4:0]S02_AXI_MTML_bid;
  wire [0:0]S02_AXI_MTML_bready;
  wire [1:0]S02_AXI_MTML_bresp;
  wire [0:0]S02_AXI_MTML_bvalid;
  wire [63:0]S02_AXI_MTML_rdata;
  wire [4:0]S02_AXI_MTML_rid;
  wire [0:0]S02_AXI_MTML_rlast;
  wire [0:0]S02_AXI_MTML_rready;
  wire [1:0]S02_AXI_MTML_rresp;
  wire [0:0]S02_AXI_MTML_rvalid;
  wire [63:0]S02_AXI_MTML_wdata;
  wire [0:0]S02_AXI_MTML_wlast;
  wire [0:0]S02_AXI_MTML_wready;
  wire [7:0]S02_AXI_MTML_wstrb;
  wire [0:0]S02_AXI_MTML_wvalid;
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
  wire UART_0_rxd;
  wire UART_0_txd;
  wire interrupt_0;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;

  nova_project nova_project_i
       (.M02_AXI_MTML_araddr(M02_AXI_MTML_araddr),
        .M02_AXI_MTML_arburst(M02_AXI_MTML_arburst),
        .M02_AXI_MTML_arcache(M02_AXI_MTML_arcache),
        .M02_AXI_MTML_arid(M02_AXI_MTML_arid),
        .M02_AXI_MTML_arlen(M02_AXI_MTML_arlen),
        .M02_AXI_MTML_arlock(M02_AXI_MTML_arlock),
        .M02_AXI_MTML_arprot(M02_AXI_MTML_arprot),
        .M02_AXI_MTML_arqos(M02_AXI_MTML_arqos),
        .M02_AXI_MTML_arready(M02_AXI_MTML_arready),
        .M02_AXI_MTML_arregion(M02_AXI_MTML_arregion),
        .M02_AXI_MTML_arsize(M02_AXI_MTML_arsize),
        .M02_AXI_MTML_arvalid(M02_AXI_MTML_arvalid),
        .M02_AXI_MTML_awaddr(M02_AXI_MTML_awaddr),
        .M02_AXI_MTML_awburst(M02_AXI_MTML_awburst),
        .M02_AXI_MTML_awcache(M02_AXI_MTML_awcache),
        .M02_AXI_MTML_awid(M02_AXI_MTML_awid),
        .M02_AXI_MTML_awlen(M02_AXI_MTML_awlen),
        .M02_AXI_MTML_awlock(M02_AXI_MTML_awlock),
        .M02_AXI_MTML_awprot(M02_AXI_MTML_awprot),
        .M02_AXI_MTML_awqos(M02_AXI_MTML_awqos),
        .M02_AXI_MTML_awready(M02_AXI_MTML_awready),
        .M02_AXI_MTML_awregion(M02_AXI_MTML_awregion),
        .M02_AXI_MTML_awsize(M02_AXI_MTML_awsize),
        .M02_AXI_MTML_awvalid(M02_AXI_MTML_awvalid),
        .M02_AXI_MTML_bid(M02_AXI_MTML_bid),
        .M02_AXI_MTML_bready(M02_AXI_MTML_bready),
        .M02_AXI_MTML_bresp(M02_AXI_MTML_bresp),
        .M02_AXI_MTML_bvalid(M02_AXI_MTML_bvalid),
        .M02_AXI_MTML_rdata(M02_AXI_MTML_rdata),
        .M02_AXI_MTML_rid(M02_AXI_MTML_rid),
        .M02_AXI_MTML_rlast(M02_AXI_MTML_rlast),
        .M02_AXI_MTML_rready(M02_AXI_MTML_rready),
        .M02_AXI_MTML_rresp(M02_AXI_MTML_rresp),
        .M02_AXI_MTML_rvalid(M02_AXI_MTML_rvalid),
        .M02_AXI_MTML_wdata(M02_AXI_MTML_wdata),
        .M02_AXI_MTML_wlast(M02_AXI_MTML_wlast),
        .M02_AXI_MTML_wready(M02_AXI_MTML_wready),
        .M02_AXI_MTML_wstrb(M02_AXI_MTML_wstrb),
        .M02_AXI_MTML_wvalid(M02_AXI_MTML_wvalid),
        .M03_AXI_DDR_araddr(M03_AXI_DDR_araddr),
        .M03_AXI_DDR_arburst(M03_AXI_DDR_arburst),
        .M03_AXI_DDR_arcache(M03_AXI_DDR_arcache),
        .M03_AXI_DDR_arid(M03_AXI_DDR_arid),
        .M03_AXI_DDR_arlen(M03_AXI_DDR_arlen),
        .M03_AXI_DDR_arlock(M03_AXI_DDR_arlock),
        .M03_AXI_DDR_arprot(M03_AXI_DDR_arprot),
        .M03_AXI_DDR_arqos(M03_AXI_DDR_arqos),
        .M03_AXI_DDR_arready(M03_AXI_DDR_arready),
        .M03_AXI_DDR_arregion(M03_AXI_DDR_arregion),
        .M03_AXI_DDR_arsize(M03_AXI_DDR_arsize),
        .M03_AXI_DDR_arvalid(M03_AXI_DDR_arvalid),
        .M03_AXI_DDR_awaddr(M03_AXI_DDR_awaddr),
        .M03_AXI_DDR_awburst(M03_AXI_DDR_awburst),
        .M03_AXI_DDR_awcache(M03_AXI_DDR_awcache),
        .M03_AXI_DDR_awid(M03_AXI_DDR_awid),
        .M03_AXI_DDR_awlen(M03_AXI_DDR_awlen),
        .M03_AXI_DDR_awlock(M03_AXI_DDR_awlock),
        .M03_AXI_DDR_awprot(M03_AXI_DDR_awprot),
        .M03_AXI_DDR_awqos(M03_AXI_DDR_awqos),
        .M03_AXI_DDR_awready(M03_AXI_DDR_awready),
        .M03_AXI_DDR_awregion(M03_AXI_DDR_awregion),
        .M03_AXI_DDR_awsize(M03_AXI_DDR_awsize),
        .M03_AXI_DDR_awvalid(M03_AXI_DDR_awvalid),
        .M03_AXI_DDR_bid(M03_AXI_DDR_bid),
        .M03_AXI_DDR_bready(M03_AXI_DDR_bready),
        .M03_AXI_DDR_bresp(M03_AXI_DDR_bresp),
        .M03_AXI_DDR_bvalid(M03_AXI_DDR_bvalid),
        .M03_AXI_DDR_rdata(M03_AXI_DDR_rdata),
        .M03_AXI_DDR_rid(M03_AXI_DDR_rid),
        .M03_AXI_DDR_rlast(M03_AXI_DDR_rlast),
        .M03_AXI_DDR_rready(M03_AXI_DDR_rready),
        .M03_AXI_DDR_rresp(M03_AXI_DDR_rresp),
        .M03_AXI_DDR_rvalid(M03_AXI_DDR_rvalid),
        .M03_AXI_DDR_wdata(M03_AXI_DDR_wdata),
        .M03_AXI_DDR_wlast(M03_AXI_DDR_wlast),
        .M03_AXI_DDR_wready(M03_AXI_DDR_wready),
        .M03_AXI_DDR_wstrb(M03_AXI_DDR_wstrb),
        .M03_AXI_DDR_wvalid(M03_AXI_DDR_wvalid),
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
        .S02_AXI_MTML_araddr(S02_AXI_MTML_araddr),
        .S02_AXI_MTML_arburst(S02_AXI_MTML_arburst),
        .S02_AXI_MTML_arcache(S02_AXI_MTML_arcache),
        .S02_AXI_MTML_arid(S02_AXI_MTML_arid),
        .S02_AXI_MTML_arlen(S02_AXI_MTML_arlen),
        .S02_AXI_MTML_arlock(S02_AXI_MTML_arlock),
        .S02_AXI_MTML_arprot(S02_AXI_MTML_arprot),
        .S02_AXI_MTML_arqos(S02_AXI_MTML_arqos),
        .S02_AXI_MTML_arready(S02_AXI_MTML_arready),
        .S02_AXI_MTML_arsize(S02_AXI_MTML_arsize),
        .S02_AXI_MTML_arvalid(S02_AXI_MTML_arvalid),
        .S02_AXI_MTML_awaddr(S02_AXI_MTML_awaddr),
        .S02_AXI_MTML_awburst(S02_AXI_MTML_awburst),
        .S02_AXI_MTML_awcache(S02_AXI_MTML_awcache),
        .S02_AXI_MTML_awid(S02_AXI_MTML_awid),
        .S02_AXI_MTML_awlen(S02_AXI_MTML_awlen),
        .S02_AXI_MTML_awlock(S02_AXI_MTML_awlock),
        .S02_AXI_MTML_awprot(S02_AXI_MTML_awprot),
        .S02_AXI_MTML_awqos(S02_AXI_MTML_awqos),
        .S02_AXI_MTML_awready(S02_AXI_MTML_awready),
        .S02_AXI_MTML_awsize(S02_AXI_MTML_awsize),
        .S02_AXI_MTML_awvalid(S02_AXI_MTML_awvalid),
        .S02_AXI_MTML_bid(S02_AXI_MTML_bid),
        .S02_AXI_MTML_bready(S02_AXI_MTML_bready),
        .S02_AXI_MTML_bresp(S02_AXI_MTML_bresp),
        .S02_AXI_MTML_bvalid(S02_AXI_MTML_bvalid),
        .S02_AXI_MTML_rdata(S02_AXI_MTML_rdata),
        .S02_AXI_MTML_rid(S02_AXI_MTML_rid),
        .S02_AXI_MTML_rlast(S02_AXI_MTML_rlast),
        .S02_AXI_MTML_rready(S02_AXI_MTML_rready),
        .S02_AXI_MTML_rresp(S02_AXI_MTML_rresp),
        .S02_AXI_MTML_rvalid(S02_AXI_MTML_rvalid),
        .S02_AXI_MTML_wdata(S02_AXI_MTML_wdata),
        .S02_AXI_MTML_wlast(S02_AXI_MTML_wlast),
        .S02_AXI_MTML_wready(S02_AXI_MTML_wready),
        .S02_AXI_MTML_wstrb(S02_AXI_MTML_wstrb),
        .S02_AXI_MTML_wvalid(S02_AXI_MTML_wvalid),
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
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .interrupt_0(interrupt_0),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));
endmodule
