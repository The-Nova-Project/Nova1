//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sun Mar 20 21:12:47 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target AXIcrossbar1_wrapper.bd
//Design      : AXIcrossbar1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXIcrossbar1_wrapper
   (BAR1_AXIL_32_araddr,
    BAR1_AXIL_32_arprot,
    BAR1_AXIL_32_arready,
    BAR1_AXIL_32_arvalid,
    BAR1_AXIL_32_awaddr,
    BAR1_AXIL_32_awprot,
    BAR1_AXIL_32_awready,
    BAR1_AXIL_32_awvalid,
    BAR1_AXIL_32_bready,
    BAR1_AXIL_32_bresp,
    BAR1_AXIL_32_bvalid,
    BAR1_AXIL_32_rdata,
    BAR1_AXIL_32_rready,
    BAR1_AXIL_32_rresp,
    BAR1_AXIL_32_rvalid,
    BAR1_AXIL_32_wdata,
    BAR1_AXIL_32_wready,
    BAR1_AXIL_32_wstrb,
    BAR1_AXIL_32_wvalid,
    DDR_ADDR_512_64_araddr,
    DDR_ADDR_512_64_arburst,
    DDR_ADDR_512_64_arcache,
    DDR_ADDR_512_64_arid,
    DDR_ADDR_512_64_arlen,
    DDR_ADDR_512_64_arlock,
    DDR_ADDR_512_64_arprot,
    DDR_ADDR_512_64_arqos,
    DDR_ADDR_512_64_arready,
    DDR_ADDR_512_64_arregion,
    DDR_ADDR_512_64_arsize,
    DDR_ADDR_512_64_arvalid,
    DDR_ADDR_512_64_awaddr,
    DDR_ADDR_512_64_awburst,
    DDR_ADDR_512_64_awcache,
    DDR_ADDR_512_64_awid,
    DDR_ADDR_512_64_awlen,
    DDR_ADDR_512_64_awlock,
    DDR_ADDR_512_64_awprot,
    DDR_ADDR_512_64_awqos,
    DDR_ADDR_512_64_awready,
    DDR_ADDR_512_64_awregion,
    DDR_ADDR_512_64_awsize,
    DDR_ADDR_512_64_awvalid,
    DDR_ADDR_512_64_bid,
    DDR_ADDR_512_64_bready,
    DDR_ADDR_512_64_bresp,
    DDR_ADDR_512_64_bvalid,
    DDR_ADDR_512_64_rdata,
    DDR_ADDR_512_64_rid,
    DDR_ADDR_512_64_rlast,
    DDR_ADDR_512_64_rready,
    DDR_ADDR_512_64_rresp,
    DDR_ADDR_512_64_rvalid,
    DDR_ADDR_512_64_wdata,
    DDR_ADDR_512_64_wlast,
    DDR_ADDR_512_64_wready,
    DDR_ADDR_512_64_wstrb,
    DDR_ADDR_512_64_wvalid,
    DDR_AXI4_araddr,
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
    M02_AXI_0_araddr,
    M02_AXI_0_arprot,
    M02_AXI_0_arready,
    M02_AXI_0_arvalid,
    M02_AXI_0_awaddr,
    M02_AXI_0_awprot,
    M02_AXI_0_awready,
    M02_AXI_0_awvalid,
    M02_AXI_0_bready,
    M02_AXI_0_bresp,
    M02_AXI_0_bvalid,
    M02_AXI_0_rdata,
    M02_AXI_0_rready,
    M02_AXI_0_rresp,
    M02_AXI_0_rvalid,
    M02_AXI_0_wdata,
    M02_AXI_0_wready,
    M02_AXI_0_wstrb,
    M02_AXI_0_wvalid,
    M_AXI_0_araddr,
    M_AXI_0_arburst,
    M_AXI_0_arcache,
    M_AXI_0_arlen,
    M_AXI_0_arlock,
    M_AXI_0_arprot,
    M_AXI_0_arqos,
    M_AXI_0_arready,
    M_AXI_0_arregion,
    M_AXI_0_arsize,
    M_AXI_0_arvalid,
    M_AXI_0_awaddr,
    M_AXI_0_awburst,
    M_AXI_0_awcache,
    M_AXI_0_awlen,
    M_AXI_0_awlock,
    M_AXI_0_awprot,
    M_AXI_0_awqos,
    M_AXI_0_awready,
    M_AXI_0_awregion,
    M_AXI_0_awsize,
    M_AXI_0_awvalid,
    M_AXI_0_bready,
    M_AXI_0_bresp,
    M_AXI_0_bvalid,
    M_AXI_0_rdata,
    M_AXI_0_rlast,
    M_AXI_0_rready,
    M_AXI_0_rresp,
    M_AXI_0_rvalid,
    M_AXI_0_wdata,
    M_AXI_0_wlast,
    M_AXI_0_wready,
    M_AXI_0_wstrb,
    M_AXI_0_wvalid,
    OCL_AXIL_32_araddr,
    OCL_AXIL_32_arprot,
    OCL_AXIL_32_arready,
    OCL_AXIL_32_arvalid,
    OCL_AXIL_32_awaddr,
    OCL_AXIL_32_awprot,
    OCL_AXIL_32_awready,
    OCL_AXIL_32_awvalid,
    OCL_AXIL_32_bready,
    OCL_AXIL_32_bresp,
    OCL_AXIL_32_bvalid,
    OCL_AXIL_32_rdata,
    OCL_AXIL_32_rready,
    OCL_AXIL_32_rresp,
    OCL_AXIL_32_rvalid,
    OCL_AXIL_32_wdata,
    OCL_AXIL_32_wready,
    OCL_AXIL_32_wstrb,
    OCL_AXIL_32_wvalid,
    UART_1_rxd,
    UART_1_txd,
    aclk_0,
    aresetn_0,
    interrupt_1,
    test_status_araddr,
    test_status_arprot,
    test_status_arready,
    test_status_arvalid,
    test_status_awaddr,
    test_status_awprot,
    test_status_awready,
    test_status_awvalid,
    test_status_bready,
    test_status_bresp,
    test_status_bvalid,
    test_status_rdata,
    test_status_rready,
    test_status_rresp,
    test_status_rvalid,
    test_status_wdata,
    test_status_wready,
    test_status_wstrb,
    test_status_wvalid);
  input [63:0]BAR1_AXIL_32_araddr;
  input [2:0]BAR1_AXIL_32_arprot;
  output BAR1_AXIL_32_arready;
  input BAR1_AXIL_32_arvalid;
  input [63:0]BAR1_AXIL_32_awaddr;
  input [2:0]BAR1_AXIL_32_awprot;
  output BAR1_AXIL_32_awready;
  input BAR1_AXIL_32_awvalid;
  input BAR1_AXIL_32_bready;
  output [1:0]BAR1_AXIL_32_bresp;
  output BAR1_AXIL_32_bvalid;
  output [31:0]BAR1_AXIL_32_rdata;
  input BAR1_AXIL_32_rready;
  output [1:0]BAR1_AXIL_32_rresp;
  output BAR1_AXIL_32_rvalid;
  input [31:0]BAR1_AXIL_32_wdata;
  output BAR1_AXIL_32_wready;
  input [3:0]BAR1_AXIL_32_wstrb;
  input BAR1_AXIL_32_wvalid;
  input [63:0]DDR_ADDR_512_64_araddr;
  input [1:0]DDR_ADDR_512_64_arburst;
  input [3:0]DDR_ADDR_512_64_arcache;
  input [4:0]DDR_ADDR_512_64_arid;
  input [7:0]DDR_ADDR_512_64_arlen;
  input [0:0]DDR_ADDR_512_64_arlock;
  input [2:0]DDR_ADDR_512_64_arprot;
  input [3:0]DDR_ADDR_512_64_arqos;
  output DDR_ADDR_512_64_arready;
  input [3:0]DDR_ADDR_512_64_arregion;
  input [2:0]DDR_ADDR_512_64_arsize;
  input DDR_ADDR_512_64_arvalid;
  input [63:0]DDR_ADDR_512_64_awaddr;
  input [1:0]DDR_ADDR_512_64_awburst;
  input [3:0]DDR_ADDR_512_64_awcache;
  input [4:0]DDR_ADDR_512_64_awid;
  input [7:0]DDR_ADDR_512_64_awlen;
  input [0:0]DDR_ADDR_512_64_awlock;
  input [2:0]DDR_ADDR_512_64_awprot;
  input [3:0]DDR_ADDR_512_64_awqos;
  output DDR_ADDR_512_64_awready;
  input [3:0]DDR_ADDR_512_64_awregion;
  input [2:0]DDR_ADDR_512_64_awsize;
  input DDR_ADDR_512_64_awvalid;
  output [4:0]DDR_ADDR_512_64_bid;
  input DDR_ADDR_512_64_bready;
  output [1:0]DDR_ADDR_512_64_bresp;
  output DDR_ADDR_512_64_bvalid;
  output [63:0]DDR_ADDR_512_64_rdata;
  output [4:0]DDR_ADDR_512_64_rid;
  output DDR_ADDR_512_64_rlast;
  input DDR_ADDR_512_64_rready;
  output [1:0]DDR_ADDR_512_64_rresp;
  output DDR_ADDR_512_64_rvalid;
  input [63:0]DDR_ADDR_512_64_wdata;
  input DDR_ADDR_512_64_wlast;
  output DDR_ADDR_512_64_wready;
  input [7:0]DDR_ADDR_512_64_wstrb;
  input DDR_ADDR_512_64_wvalid;
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
  output [31:0]M02_AXI_0_araddr;
  output [2:0]M02_AXI_0_arprot;
  input [0:0]M02_AXI_0_arready;
  output [0:0]M02_AXI_0_arvalid;
  output [31:0]M02_AXI_0_awaddr;
  output [2:0]M02_AXI_0_awprot;
  input [0:0]M02_AXI_0_awready;
  output [0:0]M02_AXI_0_awvalid;
  output [0:0]M02_AXI_0_bready;
  input [1:0]M02_AXI_0_bresp;
  input [0:0]M02_AXI_0_bvalid;
  input [31:0]M02_AXI_0_rdata;
  output [0:0]M02_AXI_0_rready;
  input [1:0]M02_AXI_0_rresp;
  input [0:0]M02_AXI_0_rvalid;
  output [31:0]M02_AXI_0_wdata;
  input [0:0]M02_AXI_0_wready;
  output [3:0]M02_AXI_0_wstrb;
  output [0:0]M02_AXI_0_wvalid;
  output [63:0]M_AXI_0_araddr;
  output [1:0]M_AXI_0_arburst;
  output [3:0]M_AXI_0_arcache;
  output [7:0]M_AXI_0_arlen;
  output [0:0]M_AXI_0_arlock;
  output [2:0]M_AXI_0_arprot;
  output [3:0]M_AXI_0_arqos;
  input M_AXI_0_arready;
  output [3:0]M_AXI_0_arregion;
  output [2:0]M_AXI_0_arsize;
  output M_AXI_0_arvalid;
  output [63:0]M_AXI_0_awaddr;
  output [1:0]M_AXI_0_awburst;
  output [3:0]M_AXI_0_awcache;
  output [7:0]M_AXI_0_awlen;
  output [0:0]M_AXI_0_awlock;
  output [2:0]M_AXI_0_awprot;
  output [3:0]M_AXI_0_awqos;
  input M_AXI_0_awready;
  output [3:0]M_AXI_0_awregion;
  output [2:0]M_AXI_0_awsize;
  output M_AXI_0_awvalid;
  output M_AXI_0_bready;
  input [1:0]M_AXI_0_bresp;
  input M_AXI_0_bvalid;
  input [63:0]M_AXI_0_rdata;
  input M_AXI_0_rlast;
  output M_AXI_0_rready;
  input [1:0]M_AXI_0_rresp;
  input M_AXI_0_rvalid;
  output [63:0]M_AXI_0_wdata;
  output M_AXI_0_wlast;
  input M_AXI_0_wready;
  output [7:0]M_AXI_0_wstrb;
  output M_AXI_0_wvalid;
  input [31:0]OCL_AXIL_32_araddr;
  input [2:0]OCL_AXIL_32_arprot;
  output [0:0]OCL_AXIL_32_arready;
  input [0:0]OCL_AXIL_32_arvalid;
  input [31:0]OCL_AXIL_32_awaddr;
  input [2:0]OCL_AXIL_32_awprot;
  output [0:0]OCL_AXIL_32_awready;
  input [0:0]OCL_AXIL_32_awvalid;
  input [0:0]OCL_AXIL_32_bready;
  output [1:0]OCL_AXIL_32_bresp;
  output [0:0]OCL_AXIL_32_bvalid;
  output [31:0]OCL_AXIL_32_rdata;
  input [0:0]OCL_AXIL_32_rready;
  output [1:0]OCL_AXIL_32_rresp;
  output [0:0]OCL_AXIL_32_rvalid;
  input [31:0]OCL_AXIL_32_wdata;
  output [0:0]OCL_AXIL_32_wready;
  input [3:0]OCL_AXIL_32_wstrb;
  input [0:0]OCL_AXIL_32_wvalid;
  input UART_1_rxd;
  output UART_1_txd;
  input aclk_0;
  input aresetn_0;
  output interrupt_1;
  output [31:0]test_status_araddr;
  output [2:0]test_status_arprot;
  input [0:0]test_status_arready;
  output [0:0]test_status_arvalid;
  output [31:0]test_status_awaddr;
  output [2:0]test_status_awprot;
  input [0:0]test_status_awready;
  output [0:0]test_status_awvalid;
  output [0:0]test_status_bready;
  input [1:0]test_status_bresp;
  input [0:0]test_status_bvalid;
  input [31:0]test_status_rdata;
  output [0:0]test_status_rready;
  input [1:0]test_status_rresp;
  input [0:0]test_status_rvalid;
  output [31:0]test_status_wdata;
  input [0:0]test_status_wready;
  output [3:0]test_status_wstrb;
  output [0:0]test_status_wvalid;

  wire [63:0]BAR1_AXIL_32_araddr;
  wire [2:0]BAR1_AXIL_32_arprot;
  wire BAR1_AXIL_32_arready;
  wire BAR1_AXIL_32_arvalid;
  wire [63:0]BAR1_AXIL_32_awaddr;
  wire [2:0]BAR1_AXIL_32_awprot;
  wire BAR1_AXIL_32_awready;
  wire BAR1_AXIL_32_awvalid;
  wire BAR1_AXIL_32_bready;
  wire [1:0]BAR1_AXIL_32_bresp;
  wire BAR1_AXIL_32_bvalid;
  wire [31:0]BAR1_AXIL_32_rdata;
  wire BAR1_AXIL_32_rready;
  wire [1:0]BAR1_AXIL_32_rresp;
  wire BAR1_AXIL_32_rvalid;
  wire [31:0]BAR1_AXIL_32_wdata;
  wire BAR1_AXIL_32_wready;
  wire [3:0]BAR1_AXIL_32_wstrb;
  wire BAR1_AXIL_32_wvalid;
  wire [63:0]DDR_ADDR_512_64_araddr;
  wire [1:0]DDR_ADDR_512_64_arburst;
  wire [3:0]DDR_ADDR_512_64_arcache;
  wire [4:0]DDR_ADDR_512_64_arid;
  wire [7:0]DDR_ADDR_512_64_arlen;
  wire [0:0]DDR_ADDR_512_64_arlock;
  wire [2:0]DDR_ADDR_512_64_arprot;
  wire [3:0]DDR_ADDR_512_64_arqos;
  wire DDR_ADDR_512_64_arready;
  wire [3:0]DDR_ADDR_512_64_arregion;
  wire [2:0]DDR_ADDR_512_64_arsize;
  wire DDR_ADDR_512_64_arvalid;
  wire [63:0]DDR_ADDR_512_64_awaddr;
  wire [1:0]DDR_ADDR_512_64_awburst;
  wire [3:0]DDR_ADDR_512_64_awcache;
  wire [4:0]DDR_ADDR_512_64_awid;
  wire [7:0]DDR_ADDR_512_64_awlen;
  wire [0:0]DDR_ADDR_512_64_awlock;
  wire [2:0]DDR_ADDR_512_64_awprot;
  wire [3:0]DDR_ADDR_512_64_awqos;
  wire DDR_ADDR_512_64_awready;
  wire [3:0]DDR_ADDR_512_64_awregion;
  wire [2:0]DDR_ADDR_512_64_awsize;
  wire DDR_ADDR_512_64_awvalid;
  wire [4:0]DDR_ADDR_512_64_bid;
  wire DDR_ADDR_512_64_bready;
  wire [1:0]DDR_ADDR_512_64_bresp;
  wire DDR_ADDR_512_64_bvalid;
  wire [63:0]DDR_ADDR_512_64_rdata;
  wire [4:0]DDR_ADDR_512_64_rid;
  wire DDR_ADDR_512_64_rlast;
  wire DDR_ADDR_512_64_rready;
  wire [1:0]DDR_ADDR_512_64_rresp;
  wire DDR_ADDR_512_64_rvalid;
  wire [63:0]DDR_ADDR_512_64_wdata;
  wire DDR_ADDR_512_64_wlast;
  wire DDR_ADDR_512_64_wready;
  wire [7:0]DDR_ADDR_512_64_wstrb;
  wire DDR_ADDR_512_64_wvalid;
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
  wire [31:0]M02_AXI_0_araddr;
  wire [2:0]M02_AXI_0_arprot;
  wire [0:0]M02_AXI_0_arready;
  wire [0:0]M02_AXI_0_arvalid;
  wire [31:0]M02_AXI_0_awaddr;
  wire [2:0]M02_AXI_0_awprot;
  wire [0:0]M02_AXI_0_awready;
  wire [0:0]M02_AXI_0_awvalid;
  wire [0:0]M02_AXI_0_bready;
  wire [1:0]M02_AXI_0_bresp;
  wire [0:0]M02_AXI_0_bvalid;
  wire [31:0]M02_AXI_0_rdata;
  wire [0:0]M02_AXI_0_rready;
  wire [1:0]M02_AXI_0_rresp;
  wire [0:0]M02_AXI_0_rvalid;
  wire [31:0]M02_AXI_0_wdata;
  wire [0:0]M02_AXI_0_wready;
  wire [3:0]M02_AXI_0_wstrb;
  wire [0:0]M02_AXI_0_wvalid;
  wire [63:0]M_AXI_0_araddr;
  wire [1:0]M_AXI_0_arburst;
  wire [3:0]M_AXI_0_arcache;
  wire [7:0]M_AXI_0_arlen;
  wire [0:0]M_AXI_0_arlock;
  wire [2:0]M_AXI_0_arprot;
  wire [3:0]M_AXI_0_arqos;
  wire M_AXI_0_arready;
  wire [3:0]M_AXI_0_arregion;
  wire [2:0]M_AXI_0_arsize;
  wire M_AXI_0_arvalid;
  wire [63:0]M_AXI_0_awaddr;
  wire [1:0]M_AXI_0_awburst;
  wire [3:0]M_AXI_0_awcache;
  wire [7:0]M_AXI_0_awlen;
  wire [0:0]M_AXI_0_awlock;
  wire [2:0]M_AXI_0_awprot;
  wire [3:0]M_AXI_0_awqos;
  wire M_AXI_0_awready;
  wire [3:0]M_AXI_0_awregion;
  wire [2:0]M_AXI_0_awsize;
  wire M_AXI_0_awvalid;
  wire M_AXI_0_bready;
  wire [1:0]M_AXI_0_bresp;
  wire M_AXI_0_bvalid;
  wire [63:0]M_AXI_0_rdata;
  wire M_AXI_0_rlast;
  wire M_AXI_0_rready;
  wire [1:0]M_AXI_0_rresp;
  wire M_AXI_0_rvalid;
  wire [63:0]M_AXI_0_wdata;
  wire M_AXI_0_wlast;
  wire M_AXI_0_wready;
  wire [7:0]M_AXI_0_wstrb;
  wire M_AXI_0_wvalid;
  wire [31:0]OCL_AXIL_32_araddr;
  wire [2:0]OCL_AXIL_32_arprot;
  wire [0:0]OCL_AXIL_32_arready;
  wire [0:0]OCL_AXIL_32_arvalid;
  wire [31:0]OCL_AXIL_32_awaddr;
  wire [2:0]OCL_AXIL_32_awprot;
  wire [0:0]OCL_AXIL_32_awready;
  wire [0:0]OCL_AXIL_32_awvalid;
  wire [0:0]OCL_AXIL_32_bready;
  wire [1:0]OCL_AXIL_32_bresp;
  wire [0:0]OCL_AXIL_32_bvalid;
  wire [31:0]OCL_AXIL_32_rdata;
  wire [0:0]OCL_AXIL_32_rready;
  wire [1:0]OCL_AXIL_32_rresp;
  wire [0:0]OCL_AXIL_32_rvalid;
  wire [31:0]OCL_AXIL_32_wdata;
  wire [0:0]OCL_AXIL_32_wready;
  wire [3:0]OCL_AXIL_32_wstrb;
  wire [0:0]OCL_AXIL_32_wvalid;
  wire UART_1_rxd;
  wire UART_1_txd;
  wire aclk_0;
  wire aresetn_0;
  wire interrupt_1;
  wire [31:0]test_status_araddr;
  wire [2:0]test_status_arprot;
  wire [0:0]test_status_arready;
  wire [0:0]test_status_arvalid;
  wire [31:0]test_status_awaddr;
  wire [2:0]test_status_awprot;
  wire [0:0]test_status_awready;
  wire [0:0]test_status_awvalid;
  wire [0:0]test_status_bready;
  wire [1:0]test_status_bresp;
  wire [0:0]test_status_bvalid;
  wire [31:0]test_status_rdata;
  wire [0:0]test_status_rready;
  wire [1:0]test_status_rresp;
  wire [0:0]test_status_rvalid;
  wire [31:0]test_status_wdata;
  wire [0:0]test_status_wready;
  wire [3:0]test_status_wstrb;
  wire [0:0]test_status_wvalid;

  AXIcrossbar1 AXIcrossbar1_i
       (.BAR1_AXIL_32_araddr(BAR1_AXIL_32_araddr),
        .BAR1_AXIL_32_arprot(BAR1_AXIL_32_arprot),
        .BAR1_AXIL_32_arready(BAR1_AXIL_32_arready),
        .BAR1_AXIL_32_arvalid(BAR1_AXIL_32_arvalid),
        .BAR1_AXIL_32_awaddr(BAR1_AXIL_32_awaddr),
        .BAR1_AXIL_32_awprot(BAR1_AXIL_32_awprot),
        .BAR1_AXIL_32_awready(BAR1_AXIL_32_awready),
        .BAR1_AXIL_32_awvalid(BAR1_AXIL_32_awvalid),
        .BAR1_AXIL_32_bready(BAR1_AXIL_32_bready),
        .BAR1_AXIL_32_bresp(BAR1_AXIL_32_bresp),
        .BAR1_AXIL_32_bvalid(BAR1_AXIL_32_bvalid),
        .BAR1_AXIL_32_rdata(BAR1_AXIL_32_rdata),
        .BAR1_AXIL_32_rready(BAR1_AXIL_32_rready),
        .BAR1_AXIL_32_rresp(BAR1_AXIL_32_rresp),
        .BAR1_AXIL_32_rvalid(BAR1_AXIL_32_rvalid),
        .BAR1_AXIL_32_wdata(BAR1_AXIL_32_wdata),
        .BAR1_AXIL_32_wready(BAR1_AXIL_32_wready),
        .BAR1_AXIL_32_wstrb(BAR1_AXIL_32_wstrb),
        .BAR1_AXIL_32_wvalid(BAR1_AXIL_32_wvalid),
        .DDR_ADDR_512_64_araddr(DDR_ADDR_512_64_araddr),
        .DDR_ADDR_512_64_arburst(DDR_ADDR_512_64_arburst),
        .DDR_ADDR_512_64_arcache(DDR_ADDR_512_64_arcache),
        .DDR_ADDR_512_64_arid(DDR_ADDR_512_64_arid),
        .DDR_ADDR_512_64_arlen(DDR_ADDR_512_64_arlen),
        .DDR_ADDR_512_64_arlock(DDR_ADDR_512_64_arlock),
        .DDR_ADDR_512_64_arprot(DDR_ADDR_512_64_arprot),
        .DDR_ADDR_512_64_arqos(DDR_ADDR_512_64_arqos),
        .DDR_ADDR_512_64_arready(DDR_ADDR_512_64_arready),
        .DDR_ADDR_512_64_arregion(DDR_ADDR_512_64_arregion),
        .DDR_ADDR_512_64_arsize(DDR_ADDR_512_64_arsize),
        .DDR_ADDR_512_64_arvalid(DDR_ADDR_512_64_arvalid),
        .DDR_ADDR_512_64_awaddr(DDR_ADDR_512_64_awaddr),
        .DDR_ADDR_512_64_awburst(DDR_ADDR_512_64_awburst),
        .DDR_ADDR_512_64_awcache(DDR_ADDR_512_64_awcache),
        .DDR_ADDR_512_64_awid(DDR_ADDR_512_64_awid),
        .DDR_ADDR_512_64_awlen(DDR_ADDR_512_64_awlen),
        .DDR_ADDR_512_64_awlock(DDR_ADDR_512_64_awlock),
        .DDR_ADDR_512_64_awprot(DDR_ADDR_512_64_awprot),
        .DDR_ADDR_512_64_awqos(DDR_ADDR_512_64_awqos),
        .DDR_ADDR_512_64_awready(DDR_ADDR_512_64_awready),
        .DDR_ADDR_512_64_awregion(DDR_ADDR_512_64_awregion),
        .DDR_ADDR_512_64_awsize(DDR_ADDR_512_64_awsize),
        .DDR_ADDR_512_64_awvalid(DDR_ADDR_512_64_awvalid),
        .DDR_ADDR_512_64_bid(DDR_ADDR_512_64_bid),
        .DDR_ADDR_512_64_bready(DDR_ADDR_512_64_bready),
        .DDR_ADDR_512_64_bresp(DDR_ADDR_512_64_bresp),
        .DDR_ADDR_512_64_bvalid(DDR_ADDR_512_64_bvalid),
        .DDR_ADDR_512_64_rdata(DDR_ADDR_512_64_rdata),
        .DDR_ADDR_512_64_rid(DDR_ADDR_512_64_rid),
        .DDR_ADDR_512_64_rlast(DDR_ADDR_512_64_rlast),
        .DDR_ADDR_512_64_rready(DDR_ADDR_512_64_rready),
        .DDR_ADDR_512_64_rresp(DDR_ADDR_512_64_rresp),
        .DDR_ADDR_512_64_rvalid(DDR_ADDR_512_64_rvalid),
        .DDR_ADDR_512_64_wdata(DDR_ADDR_512_64_wdata),
        .DDR_ADDR_512_64_wlast(DDR_ADDR_512_64_wlast),
        .DDR_ADDR_512_64_wready(DDR_ADDR_512_64_wready),
        .DDR_ADDR_512_64_wstrb(DDR_ADDR_512_64_wstrb),
        .DDR_ADDR_512_64_wvalid(DDR_ADDR_512_64_wvalid),
        .DDR_AXI4_araddr(DDR_AXI4_araddr),
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
        .M02_AXI_0_araddr(M02_AXI_0_araddr),
        .M02_AXI_0_arprot(M02_AXI_0_arprot),
        .M02_AXI_0_arready(M02_AXI_0_arready),
        .M02_AXI_0_arvalid(M02_AXI_0_arvalid),
        .M02_AXI_0_awaddr(M02_AXI_0_awaddr),
        .M02_AXI_0_awprot(M02_AXI_0_awprot),
        .M02_AXI_0_awready(M02_AXI_0_awready),
        .M02_AXI_0_awvalid(M02_AXI_0_awvalid),
        .M02_AXI_0_bready(M02_AXI_0_bready),
        .M02_AXI_0_bresp(M02_AXI_0_bresp),
        .M02_AXI_0_bvalid(M02_AXI_0_bvalid),
        .M02_AXI_0_rdata(M02_AXI_0_rdata),
        .M02_AXI_0_rready(M02_AXI_0_rready),
        .M02_AXI_0_rresp(M02_AXI_0_rresp),
        .M02_AXI_0_rvalid(M02_AXI_0_rvalid),
        .M02_AXI_0_wdata(M02_AXI_0_wdata),
        .M02_AXI_0_wready(M02_AXI_0_wready),
        .M02_AXI_0_wstrb(M02_AXI_0_wstrb),
        .M02_AXI_0_wvalid(M02_AXI_0_wvalid),
        .M_AXI_0_araddr(M_AXI_0_araddr),
        .M_AXI_0_arburst(M_AXI_0_arburst),
        .M_AXI_0_arcache(M_AXI_0_arcache),
        .M_AXI_0_arlen(M_AXI_0_arlen),
        .M_AXI_0_arlock(M_AXI_0_arlock),
        .M_AXI_0_arprot(M_AXI_0_arprot),
        .M_AXI_0_arqos(M_AXI_0_arqos),
        .M_AXI_0_arready(M_AXI_0_arready),
        .M_AXI_0_arregion(M_AXI_0_arregion),
        .M_AXI_0_arsize(M_AXI_0_arsize),
        .M_AXI_0_arvalid(M_AXI_0_arvalid),
        .M_AXI_0_awaddr(M_AXI_0_awaddr),
        .M_AXI_0_awburst(M_AXI_0_awburst),
        .M_AXI_0_awcache(M_AXI_0_awcache),
        .M_AXI_0_awlen(M_AXI_0_awlen),
        .M_AXI_0_awlock(M_AXI_0_awlock),
        .M_AXI_0_awprot(M_AXI_0_awprot),
        .M_AXI_0_awqos(M_AXI_0_awqos),
        .M_AXI_0_awready(M_AXI_0_awready),
        .M_AXI_0_awregion(M_AXI_0_awregion),
        .M_AXI_0_awsize(M_AXI_0_awsize),
        .M_AXI_0_awvalid(M_AXI_0_awvalid),
        .M_AXI_0_bready(M_AXI_0_bready),
        .M_AXI_0_bresp(M_AXI_0_bresp),
        .M_AXI_0_bvalid(M_AXI_0_bvalid),
        .M_AXI_0_rdata(M_AXI_0_rdata),
        .M_AXI_0_rlast(M_AXI_0_rlast),
        .M_AXI_0_rready(M_AXI_0_rready),
        .M_AXI_0_rresp(M_AXI_0_rresp),
        .M_AXI_0_rvalid(M_AXI_0_rvalid),
        .M_AXI_0_wdata(M_AXI_0_wdata),
        .M_AXI_0_wlast(M_AXI_0_wlast),
        .M_AXI_0_wready(M_AXI_0_wready),
        .M_AXI_0_wstrb(M_AXI_0_wstrb),
        .M_AXI_0_wvalid(M_AXI_0_wvalid),
        .OCL_AXIL_32_araddr(OCL_AXIL_32_araddr),
        .OCL_AXIL_32_arprot(OCL_AXIL_32_arprot),
        .OCL_AXIL_32_arready(OCL_AXIL_32_arready),
        .OCL_AXIL_32_arvalid(OCL_AXIL_32_arvalid),
        .OCL_AXIL_32_awaddr(OCL_AXIL_32_awaddr),
        .OCL_AXIL_32_awprot(OCL_AXIL_32_awprot),
        .OCL_AXIL_32_awready(OCL_AXIL_32_awready),
        .OCL_AXIL_32_awvalid(OCL_AXIL_32_awvalid),
        .OCL_AXIL_32_bready(OCL_AXIL_32_bready),
        .OCL_AXIL_32_bresp(OCL_AXIL_32_bresp),
        .OCL_AXIL_32_bvalid(OCL_AXIL_32_bvalid),
        .OCL_AXIL_32_rdata(OCL_AXIL_32_rdata),
        .OCL_AXIL_32_rready(OCL_AXIL_32_rready),
        .OCL_AXIL_32_rresp(OCL_AXIL_32_rresp),
        .OCL_AXIL_32_rvalid(OCL_AXIL_32_rvalid),
        .OCL_AXIL_32_wdata(OCL_AXIL_32_wdata),
        .OCL_AXIL_32_wready(OCL_AXIL_32_wready),
        .OCL_AXIL_32_wstrb(OCL_AXIL_32_wstrb),
        .OCL_AXIL_32_wvalid(OCL_AXIL_32_wvalid),
        .UART_1_rxd(UART_1_rxd),
        .UART_1_txd(UART_1_txd),
        .aclk_0(aclk_0),
        .aresetn_0(aresetn_0),
        .interrupt_1(interrupt_1),
        .test_status_araddr(test_status_araddr),
        .test_status_arprot(test_status_arprot),
        .test_status_arready(test_status_arready),
        .test_status_arvalid(test_status_arvalid),
        .test_status_awaddr(test_status_awaddr),
        .test_status_awprot(test_status_awprot),
        .test_status_awready(test_status_awready),
        .test_status_awvalid(test_status_awvalid),
        .test_status_bready(test_status_bready),
        .test_status_bresp(test_status_bresp),
        .test_status_bvalid(test_status_bvalid),
        .test_status_rdata(test_status_rdata),
        .test_status_rready(test_status_rready),
        .test_status_rresp(test_status_rresp),
        .test_status_rvalid(test_status_rvalid),
        .test_status_wdata(test_status_wdata),
        .test_status_wready(test_status_wready),
        .test_status_wstrb(test_status_wstrb),
        .test_status_wvalid(test_status_wvalid));
endmodule
