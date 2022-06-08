//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sun Jun  5 08:24:45 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target xlx_design_subsystem_wrapper.bd
//Design      : xlx_design_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xlx_design_subsystem_wrapper
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
  input [63:0]BAR1_araddr;
  input [1:0]BAR1_arburst;
  input [3:0]BAR1_arcache;
  input [4:0]BAR1_arid;
  input [7:0]BAR1_arlen;
  input [0:0]BAR1_arlock;
  input [2:0]BAR1_arprot;
  input [3:0]BAR1_arqos;
  output [0:0]BAR1_arready;
  input [2:0]BAR1_arsize;
  input [0:0]BAR1_arvalid;
  input [63:0]BAR1_awaddr;
  input [1:0]BAR1_awburst;
  input [3:0]BAR1_awcache;
  input [4:0]BAR1_awid;
  input [7:0]BAR1_awlen;
  input [0:0]BAR1_awlock;
  input [2:0]BAR1_awprot;
  input [3:0]BAR1_awqos;
  output [0:0]BAR1_awready;
  input [2:0]BAR1_awsize;
  input [0:0]BAR1_awvalid;
  output [4:0]BAR1_bid;
  input [0:0]BAR1_bready;
  output [1:0]BAR1_bresp;
  output [0:0]BAR1_bvalid;
  output [63:0]BAR1_rdata;
  output [4:0]BAR1_rid;
  output [0:0]BAR1_rlast;
  input [0:0]BAR1_rready;
  output [1:0]BAR1_rresp;
  output [0:0]BAR1_rvalid;
  input [63:0]BAR1_wdata;
  input [0:0]BAR1_wlast;
  output [0:0]BAR1_wready;
  input [7:0]BAR1_wstrb;
  input [0:0]BAR1_wvalid;
  output [63:0]DDR_m_araddr;
  output [1:0]DDR_m_arburst;
  output [3:0]DDR_m_arcache;
  output [4:0]DDR_m_arid;
  output [7:0]DDR_m_arlen;
  output [0:0]DDR_m_arlock;
  output [2:0]DDR_m_arprot;
  output [3:0]DDR_m_arqos;
  input [0:0]DDR_m_arready;
  output [3:0]DDR_m_arregion;
  output [2:0]DDR_m_arsize;
  output [0:0]DDR_m_arvalid;
  output [63:0]DDR_m_awaddr;
  output [1:0]DDR_m_awburst;
  output [3:0]DDR_m_awcache;
  output [4:0]DDR_m_awid;
  output [7:0]DDR_m_awlen;
  output [0:0]DDR_m_awlock;
  output [2:0]DDR_m_awprot;
  output [3:0]DDR_m_awqos;
  input [0:0]DDR_m_awready;
  output [3:0]DDR_m_awregion;
  output [2:0]DDR_m_awsize;
  output [0:0]DDR_m_awvalid;
  input [4:0]DDR_m_bid;
  output [0:0]DDR_m_bready;
  input [1:0]DDR_m_bresp;
  input [0:0]DDR_m_bvalid;
  input [63:0]DDR_m_rdata;
  input [4:0]DDR_m_rid;
  input [0:0]DDR_m_rlast;
  output [0:0]DDR_m_rready;
  input [1:0]DDR_m_rresp;
  input [0:0]DDR_m_rvalid;
  output [63:0]DDR_m_wdata;
  output [0:0]DDR_m_wlast;
  input [0:0]DDR_m_wready;
  output [7:0]DDR_m_wstrb;
  output [0:0]DDR_m_wvalid;
  output [63:0]MTML_m_araddr;
  output [1:0]MTML_m_arburst;
  output [3:0]MTML_m_arcache;
  output [4:0]MTML_m_arid;
  output [7:0]MTML_m_arlen;
  output [0:0]MTML_m_arlock;
  output [2:0]MTML_m_arprot;
  output [3:0]MTML_m_arqos;
  input [0:0]MTML_m_arready;
  output [3:0]MTML_m_arregion;
  output [2:0]MTML_m_arsize;
  output [0:0]MTML_m_arvalid;
  output [63:0]MTML_m_awaddr;
  output [1:0]MTML_m_awburst;
  output [3:0]MTML_m_awcache;
  output [4:0]MTML_m_awid;
  output [7:0]MTML_m_awlen;
  output [0:0]MTML_m_awlock;
  output [2:0]MTML_m_awprot;
  output [3:0]MTML_m_awqos;
  input [0:0]MTML_m_awready;
  output [3:0]MTML_m_awregion;
  output [2:0]MTML_m_awsize;
  output [0:0]MTML_m_awvalid;
  input [4:0]MTML_m_bid;
  output [0:0]MTML_m_bready;
  input [1:0]MTML_m_bresp;
  input [0:0]MTML_m_bvalid;
  input [63:0]MTML_m_rdata;
  input [4:0]MTML_m_rid;
  input [0:0]MTML_m_rlast;
  output [0:0]MTML_m_rready;
  input [1:0]MTML_m_rresp;
  input [0:0]MTML_m_rvalid;
  output [63:0]MTML_m_wdata;
  output [0:0]MTML_m_wlast;
  input [0:0]MTML_m_wready;
  output [7:0]MTML_m_wstrb;
  output [0:0]MTML_m_wvalid;
  input [63:0]MTML_s_araddr;
  input [1:0]MTML_s_arburst;
  input [3:0]MTML_s_arcache;
  input [4:0]MTML_s_arid;
  input [7:0]MTML_s_arlen;
  input [0:0]MTML_s_arlock;
  input [2:0]MTML_s_arprot;
  input [3:0]MTML_s_arqos;
  output [0:0]MTML_s_arready;
  input [2:0]MTML_s_arsize;
  input [0:0]MTML_s_arvalid;
  input [63:0]MTML_s_awaddr;
  input [1:0]MTML_s_awburst;
  input [3:0]MTML_s_awcache;
  input [4:0]MTML_s_awid;
  input [7:0]MTML_s_awlen;
  input [0:0]MTML_s_awlock;
  input [2:0]MTML_s_awprot;
  input [3:0]MTML_s_awqos;
  output [0:0]MTML_s_awready;
  input [2:0]MTML_s_awsize;
  input [0:0]MTML_s_awvalid;
  output [4:0]MTML_s_bid;
  input [0:0]MTML_s_bready;
  output [1:0]MTML_s_bresp;
  output [0:0]MTML_s_bvalid;
  output [63:0]MTML_s_rdata;
  output [4:0]MTML_s_rid;
  output [0:0]MTML_s_rlast;
  input [0:0]MTML_s_rready;
  output [1:0]MTML_s_rresp;
  output [0:0]MTML_s_rvalid;
  input [63:0]MTML_s_wdata;
  input [0:0]MTML_s_wlast;
  output [0:0]MTML_s_wready;
  input [7:0]MTML_s_wstrb;
  input [0:0]MTML_s_wvalid;
  output [191:128]SMU_m_araddr;
  output [5:4]SMU_m_arburst;
  output [11:8]SMU_m_arcache;
  output [14:10]SMU_m_arid;
  output [23:16]SMU_m_arlen;
  output [2:2]SMU_m_arlock;
  output [8:6]SMU_m_arprot;
  output [11:8]SMU_m_arqos;
  input [2:2]SMU_m_arready;
  output [11:8]SMU_m_arregion;
  output [8:6]SMU_m_arsize;
  output [2:2]SMU_m_arvalid;
  output [191:128]SMU_m_awaddr;
  output [5:4]SMU_m_awburst;
  output [11:8]SMU_m_awcache;
  output [14:10]SMU_m_awid;
  output [23:16]SMU_m_awlen;
  output [2:2]SMU_m_awlock;
  output [8:6]SMU_m_awprot;
  output [11:8]SMU_m_awqos;
  input [2:2]SMU_m_awready;
  output [11:8]SMU_m_awregion;
  output [8:6]SMU_m_awsize;
  output [2:2]SMU_m_awvalid;
  input [14:10]SMU_m_bid;
  output [2:2]SMU_m_bready;
  input [5:4]SMU_m_bresp;
  input [2:2]SMU_m_bvalid;
  input [191:128]SMU_m_rdata;
  input [14:10]SMU_m_rid;
  input [2:2]SMU_m_rlast;
  output [2:2]SMU_m_rready;
  input [5:4]SMU_m_rresp;
  input [2:2]SMU_m_rvalid;
  output [191:128]SMU_m_wdata;
  output [2:2]SMU_m_wlast;
  input [2:2]SMU_m_wready;
  output [23:16]SMU_m_wstrb;
  output [2:2]SMU_m_wvalid;
  input UART_0_rxd;
  output UART_0_txd;
  output [255:192]ethernet_m_araddr;
  output [7:6]ethernet_m_arburst;
  output [15:12]ethernet_m_arcache;
  output [19:15]ethernet_m_arid;
  output [31:24]ethernet_m_arlen;
  output [3:3]ethernet_m_arlock;
  output [11:9]ethernet_m_arprot;
  output [15:12]ethernet_m_arqos;
  input [3:3]ethernet_m_arready;
  output [15:12]ethernet_m_arregion;
  output [11:9]ethernet_m_arsize;
  output [3:3]ethernet_m_arvalid;
  output [255:192]ethernet_m_awaddr;
  output [7:6]ethernet_m_awburst;
  output [15:12]ethernet_m_awcache;
  output [19:15]ethernet_m_awid;
  output [31:24]ethernet_m_awlen;
  output [3:3]ethernet_m_awlock;
  output [11:9]ethernet_m_awprot;
  output [15:12]ethernet_m_awqos;
  input [3:3]ethernet_m_awready;
  output [15:12]ethernet_m_awregion;
  output [11:9]ethernet_m_awsize;
  output [3:3]ethernet_m_awvalid;
  input [19:15]ethernet_m_bid;
  output [3:3]ethernet_m_bready;
  input [7:6]ethernet_m_bresp;
  input [3:3]ethernet_m_bvalid;
  input [255:192]ethernet_m_rdata;
  input [19:15]ethernet_m_rid;
  input [3:3]ethernet_m_rlast;
  output [3:3]ethernet_m_rready;
  input [7:6]ethernet_m_rresp;
  input [3:3]ethernet_m_rvalid;
  output [255:192]ethernet_m_wdata;
  output [3:3]ethernet_m_wlast;
  input [3:3]ethernet_m_wready;
  output [31:24]ethernet_m_wstrb;
  output [3:3]ethernet_m_wvalid;
  input [63:0]hydra_s_araddr;
  input [1:0]hydra_s_arburst;
  input [3:0]hydra_s_arcache;
  input [4:0]hydra_s_arid;
  input [7:0]hydra_s_arlen;
  input [0:0]hydra_s_arlock;
  input [2:0]hydra_s_arprot;
  input [3:0]hydra_s_arqos;
  output [0:0]hydra_s_arready;
  input [2:0]hydra_s_arsize;
  input [0:0]hydra_s_arvalid;
  input [63:0]hydra_s_awaddr;
  input [1:0]hydra_s_awburst;
  input [3:0]hydra_s_awcache;
  input [4:0]hydra_s_awid;
  input [7:0]hydra_s_awlen;
  input [0:0]hydra_s_awlock;
  input [2:0]hydra_s_awprot;
  input [3:0]hydra_s_awqos;
  output [0:0]hydra_s_awready;
  input [2:0]hydra_s_awsize;
  input [0:0]hydra_s_awvalid;
  output [4:0]hydra_s_bid;
  input [0:0]hydra_s_bready;
  output [1:0]hydra_s_bresp;
  output [0:0]hydra_s_bvalid;
  output [63:0]hydra_s_rdata;
  output [4:0]hydra_s_rid;
  output [0:0]hydra_s_rlast;
  input [0:0]hydra_s_rready;
  output [1:0]hydra_s_rresp;
  output [0:0]hydra_s_rvalid;
  input [63:0]hydra_s_wdata;
  input [0:0]hydra_s_wlast;
  output [0:0]hydra_s_wready;
  input [7:0]hydra_s_wstrb;
  input [0:0]hydra_s_wvalid;
  output interrupt_0;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;

  wire [63:0]BAR1_araddr;
  wire [1:0]BAR1_arburst;
  wire [3:0]BAR1_arcache;
  wire [4:0]BAR1_arid;
  wire [7:0]BAR1_arlen;
  wire [0:0]BAR1_arlock;
  wire [2:0]BAR1_arprot;
  wire [3:0]BAR1_arqos;
  wire [0:0]BAR1_arready;
  wire [2:0]BAR1_arsize;
  wire [0:0]BAR1_arvalid;
  wire [63:0]BAR1_awaddr;
  wire [1:0]BAR1_awburst;
  wire [3:0]BAR1_awcache;
  wire [4:0]BAR1_awid;
  wire [7:0]BAR1_awlen;
  wire [0:0]BAR1_awlock;
  wire [2:0]BAR1_awprot;
  wire [3:0]BAR1_awqos;
  wire [0:0]BAR1_awready;
  wire [2:0]BAR1_awsize;
  wire [0:0]BAR1_awvalid;
  wire [4:0]BAR1_bid;
  wire [0:0]BAR1_bready;
  wire [1:0]BAR1_bresp;
  wire [0:0]BAR1_bvalid;
  wire [63:0]BAR1_rdata;
  wire [4:0]BAR1_rid;
  wire [0:0]BAR1_rlast;
  wire [0:0]BAR1_rready;
  wire [1:0]BAR1_rresp;
  wire [0:0]BAR1_rvalid;
  wire [63:0]BAR1_wdata;
  wire [0:0]BAR1_wlast;
  wire [0:0]BAR1_wready;
  wire [7:0]BAR1_wstrb;
  wire [0:0]BAR1_wvalid;
  wire [63:0]DDR_m_araddr;
  wire [1:0]DDR_m_arburst;
  wire [3:0]DDR_m_arcache;
  wire [4:0]DDR_m_arid;
  wire [7:0]DDR_m_arlen;
  wire [0:0]DDR_m_arlock;
  wire [2:0]DDR_m_arprot;
  wire [3:0]DDR_m_arqos;
  wire [0:0]DDR_m_arready;
  wire [3:0]DDR_m_arregion;
  wire [2:0]DDR_m_arsize;
  wire [0:0]DDR_m_arvalid;
  wire [63:0]DDR_m_awaddr;
  wire [1:0]DDR_m_awburst;
  wire [3:0]DDR_m_awcache;
  wire [4:0]DDR_m_awid;
  wire [7:0]DDR_m_awlen;
  wire [0:0]DDR_m_awlock;
  wire [2:0]DDR_m_awprot;
  wire [3:0]DDR_m_awqos;
  wire [0:0]DDR_m_awready;
  wire [3:0]DDR_m_awregion;
  wire [2:0]DDR_m_awsize;
  wire [0:0]DDR_m_awvalid;
  wire [4:0]DDR_m_bid;
  wire [0:0]DDR_m_bready;
  wire [1:0]DDR_m_bresp;
  wire [0:0]DDR_m_bvalid;
  wire [63:0]DDR_m_rdata;
  wire [4:0]DDR_m_rid;
  wire [0:0]DDR_m_rlast;
  wire [0:0]DDR_m_rready;
  wire [1:0]DDR_m_rresp;
  wire [0:0]DDR_m_rvalid;
  wire [63:0]DDR_m_wdata;
  wire [0:0]DDR_m_wlast;
  wire [0:0]DDR_m_wready;
  wire [7:0]DDR_m_wstrb;
  wire [0:0]DDR_m_wvalid;
  wire [63:0]MTML_m_araddr;
  wire [1:0]MTML_m_arburst;
  wire [3:0]MTML_m_arcache;
  wire [4:0]MTML_m_arid;
  wire [7:0]MTML_m_arlen;
  wire [0:0]MTML_m_arlock;
  wire [2:0]MTML_m_arprot;
  wire [3:0]MTML_m_arqos;
  wire [0:0]MTML_m_arready;
  wire [3:0]MTML_m_arregion;
  wire [2:0]MTML_m_arsize;
  wire [0:0]MTML_m_arvalid;
  wire [63:0]MTML_m_awaddr;
  wire [1:0]MTML_m_awburst;
  wire [3:0]MTML_m_awcache;
  wire [4:0]MTML_m_awid;
  wire [7:0]MTML_m_awlen;
  wire [0:0]MTML_m_awlock;
  wire [2:0]MTML_m_awprot;
  wire [3:0]MTML_m_awqos;
  wire [0:0]MTML_m_awready;
  wire [3:0]MTML_m_awregion;
  wire [2:0]MTML_m_awsize;
  wire [0:0]MTML_m_awvalid;
  wire [4:0]MTML_m_bid;
  wire [0:0]MTML_m_bready;
  wire [1:0]MTML_m_bresp;
  wire [0:0]MTML_m_bvalid;
  wire [63:0]MTML_m_rdata;
  wire [4:0]MTML_m_rid;
  wire [0:0]MTML_m_rlast;
  wire [0:0]MTML_m_rready;
  wire [1:0]MTML_m_rresp;
  wire [0:0]MTML_m_rvalid;
  wire [63:0]MTML_m_wdata;
  wire [0:0]MTML_m_wlast;
  wire [0:0]MTML_m_wready;
  wire [7:0]MTML_m_wstrb;
  wire [0:0]MTML_m_wvalid;
  wire [63:0]MTML_s_araddr;
  wire [1:0]MTML_s_arburst;
  wire [3:0]MTML_s_arcache;
  wire [4:0]MTML_s_arid;
  wire [7:0]MTML_s_arlen;
  wire [0:0]MTML_s_arlock;
  wire [2:0]MTML_s_arprot;
  wire [3:0]MTML_s_arqos;
  wire [0:0]MTML_s_arready;
  wire [2:0]MTML_s_arsize;
  wire [0:0]MTML_s_arvalid;
  wire [63:0]MTML_s_awaddr;
  wire [1:0]MTML_s_awburst;
  wire [3:0]MTML_s_awcache;
  wire [4:0]MTML_s_awid;
  wire [7:0]MTML_s_awlen;
  wire [0:0]MTML_s_awlock;
  wire [2:0]MTML_s_awprot;
  wire [3:0]MTML_s_awqos;
  wire [0:0]MTML_s_awready;
  wire [2:0]MTML_s_awsize;
  wire [0:0]MTML_s_awvalid;
  wire [4:0]MTML_s_bid;
  wire [0:0]MTML_s_bready;
  wire [1:0]MTML_s_bresp;
  wire [0:0]MTML_s_bvalid;
  wire [63:0]MTML_s_rdata;
  wire [4:0]MTML_s_rid;
  wire [0:0]MTML_s_rlast;
  wire [0:0]MTML_s_rready;
  wire [1:0]MTML_s_rresp;
  wire [0:0]MTML_s_rvalid;
  wire [63:0]MTML_s_wdata;
  wire [0:0]MTML_s_wlast;
  wire [0:0]MTML_s_wready;
  wire [7:0]MTML_s_wstrb;
  wire [0:0]MTML_s_wvalid;
  wire [191:128]SMU_m_araddr;
  wire [5:4]SMU_m_arburst;
  wire [11:8]SMU_m_arcache;
  wire [14:10]SMU_m_arid;
  wire [23:16]SMU_m_arlen;
  wire [2:2]SMU_m_arlock;
  wire [8:6]SMU_m_arprot;
  wire [11:8]SMU_m_arqos;
  wire [2:2]SMU_m_arready;
  wire [11:8]SMU_m_arregion;
  wire [8:6]SMU_m_arsize;
  wire [2:2]SMU_m_arvalid;
  wire [191:128]SMU_m_awaddr;
  wire [5:4]SMU_m_awburst;
  wire [11:8]SMU_m_awcache;
  wire [14:10]SMU_m_awid;
  wire [23:16]SMU_m_awlen;
  wire [2:2]SMU_m_awlock;
  wire [8:6]SMU_m_awprot;
  wire [11:8]SMU_m_awqos;
  wire [2:2]SMU_m_awready;
  wire [11:8]SMU_m_awregion;
  wire [8:6]SMU_m_awsize;
  wire [2:2]SMU_m_awvalid;
  wire [14:10]SMU_m_bid;
  wire [2:2]SMU_m_bready;
  wire [5:4]SMU_m_bresp;
  wire [2:2]SMU_m_bvalid;
  wire [191:128]SMU_m_rdata;
  wire [14:10]SMU_m_rid;
  wire [2:2]SMU_m_rlast;
  wire [2:2]SMU_m_rready;
  wire [5:4]SMU_m_rresp;
  wire [2:2]SMU_m_rvalid;
  wire [191:128]SMU_m_wdata;
  wire [2:2]SMU_m_wlast;
  wire [2:2]SMU_m_wready;
  wire [23:16]SMU_m_wstrb;
  wire [2:2]SMU_m_wvalid;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire [255:192]ethernet_m_araddr;
  wire [7:6]ethernet_m_arburst;
  wire [15:12]ethernet_m_arcache;
  wire [19:15]ethernet_m_arid;
  wire [31:24]ethernet_m_arlen;
  wire [3:3]ethernet_m_arlock;
  wire [11:9]ethernet_m_arprot;
  wire [15:12]ethernet_m_arqos;
  wire [3:3]ethernet_m_arready;
  wire [15:12]ethernet_m_arregion;
  wire [11:9]ethernet_m_arsize;
  wire [3:3]ethernet_m_arvalid;
  wire [255:192]ethernet_m_awaddr;
  wire [7:6]ethernet_m_awburst;
  wire [15:12]ethernet_m_awcache;
  wire [19:15]ethernet_m_awid;
  wire [31:24]ethernet_m_awlen;
  wire [3:3]ethernet_m_awlock;
  wire [11:9]ethernet_m_awprot;
  wire [15:12]ethernet_m_awqos;
  wire [3:3]ethernet_m_awready;
  wire [15:12]ethernet_m_awregion;
  wire [11:9]ethernet_m_awsize;
  wire [3:3]ethernet_m_awvalid;
  wire [19:15]ethernet_m_bid;
  wire [3:3]ethernet_m_bready;
  wire [7:6]ethernet_m_bresp;
  wire [3:3]ethernet_m_bvalid;
  wire [255:192]ethernet_m_rdata;
  wire [19:15]ethernet_m_rid;
  wire [3:3]ethernet_m_rlast;
  wire [3:3]ethernet_m_rready;
  wire [7:6]ethernet_m_rresp;
  wire [3:3]ethernet_m_rvalid;
  wire [255:192]ethernet_m_wdata;
  wire [3:3]ethernet_m_wlast;
  wire [3:3]ethernet_m_wready;
  wire [31:24]ethernet_m_wstrb;
  wire [3:3]ethernet_m_wvalid;
  wire [63:0]hydra_s_araddr;
  wire [1:0]hydra_s_arburst;
  wire [3:0]hydra_s_arcache;
  wire [4:0]hydra_s_arid;
  wire [7:0]hydra_s_arlen;
  wire [0:0]hydra_s_arlock;
  wire [2:0]hydra_s_arprot;
  wire [3:0]hydra_s_arqos;
  wire [0:0]hydra_s_arready;
  wire [2:0]hydra_s_arsize;
  wire [0:0]hydra_s_arvalid;
  wire [63:0]hydra_s_awaddr;
  wire [1:0]hydra_s_awburst;
  wire [3:0]hydra_s_awcache;
  wire [4:0]hydra_s_awid;
  wire [7:0]hydra_s_awlen;
  wire [0:0]hydra_s_awlock;
  wire [2:0]hydra_s_awprot;
  wire [3:0]hydra_s_awqos;
  wire [0:0]hydra_s_awready;
  wire [2:0]hydra_s_awsize;
  wire [0:0]hydra_s_awvalid;
  wire [4:0]hydra_s_bid;
  wire [0:0]hydra_s_bready;
  wire [1:0]hydra_s_bresp;
  wire [0:0]hydra_s_bvalid;
  wire [63:0]hydra_s_rdata;
  wire [4:0]hydra_s_rid;
  wire [0:0]hydra_s_rlast;
  wire [0:0]hydra_s_rready;
  wire [1:0]hydra_s_rresp;
  wire [0:0]hydra_s_rvalid;
  wire [63:0]hydra_s_wdata;
  wire [0:0]hydra_s_wlast;
  wire [0:0]hydra_s_wready;
  wire [7:0]hydra_s_wstrb;
  wire [0:0]hydra_s_wvalid;
  wire interrupt_0;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;

  xlx_design_subsystem xlx_design_subsystem_i
       (.BAR1_araddr(BAR1_araddr),
        .BAR1_arburst(BAR1_arburst),
        .BAR1_arcache(BAR1_arcache),
        .BAR1_arid(BAR1_arid),
        .BAR1_arlen(BAR1_arlen),
        .BAR1_arlock(BAR1_arlock),
        .BAR1_arprot(BAR1_arprot),
        .BAR1_arqos(BAR1_arqos),
        .BAR1_arready(BAR1_arready),
        .BAR1_arsize(BAR1_arsize),
        .BAR1_arvalid(BAR1_arvalid),
        .BAR1_awaddr(BAR1_awaddr),
        .BAR1_awburst(BAR1_awburst),
        .BAR1_awcache(BAR1_awcache),
        .BAR1_awid(BAR1_awid),
        .BAR1_awlen(BAR1_awlen),
        .BAR1_awlock(BAR1_awlock),
        .BAR1_awprot(BAR1_awprot),
        .BAR1_awqos(BAR1_awqos),
        .BAR1_awready(BAR1_awready),
        .BAR1_awsize(BAR1_awsize),
        .BAR1_awvalid(BAR1_awvalid),
        .BAR1_bid(BAR1_bid),
        .BAR1_bready(BAR1_bready),
        .BAR1_bresp(BAR1_bresp),
        .BAR1_bvalid(BAR1_bvalid),
        .BAR1_rdata(BAR1_rdata),
        .BAR1_rid(BAR1_rid),
        .BAR1_rlast(BAR1_rlast),
        .BAR1_rready(BAR1_rready),
        .BAR1_rresp(BAR1_rresp),
        .BAR1_rvalid(BAR1_rvalid),
        .BAR1_wdata(BAR1_wdata),
        .BAR1_wlast(BAR1_wlast),
        .BAR1_wready(BAR1_wready),
        .BAR1_wstrb(BAR1_wstrb),
        .BAR1_wvalid(BAR1_wvalid),
        .DDR_m_araddr(DDR_m_araddr),
        .DDR_m_arburst(DDR_m_arburst),
        .DDR_m_arcache(DDR_m_arcache),
        .DDR_m_arid(DDR_m_arid),
        .DDR_m_arlen(DDR_m_arlen),
        .DDR_m_arlock(DDR_m_arlock),
        .DDR_m_arprot(DDR_m_arprot),
        .DDR_m_arqos(DDR_m_arqos),
        .DDR_m_arready(DDR_m_arready),
        .DDR_m_arregion(DDR_m_arregion),
        .DDR_m_arsize(DDR_m_arsize),
        .DDR_m_arvalid(DDR_m_arvalid),
        .DDR_m_awaddr(DDR_m_awaddr),
        .DDR_m_awburst(DDR_m_awburst),
        .DDR_m_awcache(DDR_m_awcache),
        .DDR_m_awid(DDR_m_awid),
        .DDR_m_awlen(DDR_m_awlen),
        .DDR_m_awlock(DDR_m_awlock),
        .DDR_m_awprot(DDR_m_awprot),
        .DDR_m_awqos(DDR_m_awqos),
        .DDR_m_awready(DDR_m_awready),
        .DDR_m_awregion(DDR_m_awregion),
        .DDR_m_awsize(DDR_m_awsize),
        .DDR_m_awvalid(DDR_m_awvalid),
        .DDR_m_bid(DDR_m_bid),
        .DDR_m_bready(DDR_m_bready),
        .DDR_m_bresp(DDR_m_bresp),
        .DDR_m_bvalid(DDR_m_bvalid),
        .DDR_m_rdata(DDR_m_rdata),
        .DDR_m_rid(DDR_m_rid),
        .DDR_m_rlast(DDR_m_rlast),
        .DDR_m_rready(DDR_m_rready),
        .DDR_m_rresp(DDR_m_rresp),
        .DDR_m_rvalid(DDR_m_rvalid),
        .DDR_m_wdata(DDR_m_wdata),
        .DDR_m_wlast(DDR_m_wlast),
        .DDR_m_wready(DDR_m_wready),
        .DDR_m_wstrb(DDR_m_wstrb),
        .DDR_m_wvalid(DDR_m_wvalid),
        .MTML_m_araddr(MTML_m_araddr),
        .MTML_m_arburst(MTML_m_arburst),
        .MTML_m_arcache(MTML_m_arcache),
        .MTML_m_arid(MTML_m_arid),
        .MTML_m_arlen(MTML_m_arlen),
        .MTML_m_arlock(MTML_m_arlock),
        .MTML_m_arprot(MTML_m_arprot),
        .MTML_m_arqos(MTML_m_arqos),
        .MTML_m_arready(MTML_m_arready),
        .MTML_m_arregion(MTML_m_arregion),
        .MTML_m_arsize(MTML_m_arsize),
        .MTML_m_arvalid(MTML_m_arvalid),
        .MTML_m_awaddr(MTML_m_awaddr),
        .MTML_m_awburst(MTML_m_awburst),
        .MTML_m_awcache(MTML_m_awcache),
        .MTML_m_awid(MTML_m_awid),
        .MTML_m_awlen(MTML_m_awlen),
        .MTML_m_awlock(MTML_m_awlock),
        .MTML_m_awprot(MTML_m_awprot),
        .MTML_m_awqos(MTML_m_awqos),
        .MTML_m_awready(MTML_m_awready),
        .MTML_m_awregion(MTML_m_awregion),
        .MTML_m_awsize(MTML_m_awsize),
        .MTML_m_awvalid(MTML_m_awvalid),
        .MTML_m_bid(MTML_m_bid),
        .MTML_m_bready(MTML_m_bready),
        .MTML_m_bresp(MTML_m_bresp),
        .MTML_m_bvalid(MTML_m_bvalid),
        .MTML_m_rdata(MTML_m_rdata),
        .MTML_m_rid(MTML_m_rid),
        .MTML_m_rlast(MTML_m_rlast),
        .MTML_m_rready(MTML_m_rready),
        .MTML_m_rresp(MTML_m_rresp),
        .MTML_m_rvalid(MTML_m_rvalid),
        .MTML_m_wdata(MTML_m_wdata),
        .MTML_m_wlast(MTML_m_wlast),
        .MTML_m_wready(MTML_m_wready),
        .MTML_m_wstrb(MTML_m_wstrb),
        .MTML_m_wvalid(MTML_m_wvalid),
        .MTML_s_araddr(MTML_s_araddr),
        .MTML_s_arburst(MTML_s_arburst),
        .MTML_s_arcache(MTML_s_arcache),
        .MTML_s_arid(MTML_s_arid),
        .MTML_s_arlen(MTML_s_arlen),
        .MTML_s_arlock(MTML_s_arlock),
        .MTML_s_arprot(MTML_s_arprot),
        .MTML_s_arqos(MTML_s_arqos),
        .MTML_s_arready(MTML_s_arready),
        .MTML_s_arsize(MTML_s_arsize),
        .MTML_s_arvalid(MTML_s_arvalid),
        .MTML_s_awaddr(MTML_s_awaddr),
        .MTML_s_awburst(MTML_s_awburst),
        .MTML_s_awcache(MTML_s_awcache),
        .MTML_s_awid(MTML_s_awid),
        .MTML_s_awlen(MTML_s_awlen),
        .MTML_s_awlock(MTML_s_awlock),
        .MTML_s_awprot(MTML_s_awprot),
        .MTML_s_awqos(MTML_s_awqos),
        .MTML_s_awready(MTML_s_awready),
        .MTML_s_awsize(MTML_s_awsize),
        .MTML_s_awvalid(MTML_s_awvalid),
        .MTML_s_bid(MTML_s_bid),
        .MTML_s_bready(MTML_s_bready),
        .MTML_s_bresp(MTML_s_bresp),
        .MTML_s_bvalid(MTML_s_bvalid),
        .MTML_s_rdata(MTML_s_rdata),
        .MTML_s_rid(MTML_s_rid),
        .MTML_s_rlast(MTML_s_rlast),
        .MTML_s_rready(MTML_s_rready),
        .MTML_s_rresp(MTML_s_rresp),
        .MTML_s_rvalid(MTML_s_rvalid),
        .MTML_s_wdata(MTML_s_wdata),
        .MTML_s_wlast(MTML_s_wlast),
        .MTML_s_wready(MTML_s_wready),
        .MTML_s_wstrb(MTML_s_wstrb),
        .MTML_s_wvalid(MTML_s_wvalid),
        .SMU_m_araddr(SMU_m_araddr),
        .SMU_m_arburst(SMU_m_arburst),
        .SMU_m_arcache(SMU_m_arcache),
        .SMU_m_arid(SMU_m_arid),
        .SMU_m_arlen(SMU_m_arlen),
        .SMU_m_arlock(SMU_m_arlock),
        .SMU_m_arprot(SMU_m_arprot),
        .SMU_m_arqos(SMU_m_arqos),
        .SMU_m_arready(SMU_m_arready),
        .SMU_m_arregion(SMU_m_arregion),
        .SMU_m_arsize(SMU_m_arsize),
        .SMU_m_arvalid(SMU_m_arvalid),
        .SMU_m_awaddr(SMU_m_awaddr),
        .SMU_m_awburst(SMU_m_awburst),
        .SMU_m_awcache(SMU_m_awcache),
        .SMU_m_awid(SMU_m_awid),
        .SMU_m_awlen(SMU_m_awlen),
        .SMU_m_awlock(SMU_m_awlock),
        .SMU_m_awprot(SMU_m_awprot),
        .SMU_m_awqos(SMU_m_awqos),
        .SMU_m_awready(SMU_m_awready),
        .SMU_m_awregion(SMU_m_awregion),
        .SMU_m_awsize(SMU_m_awsize),
        .SMU_m_awvalid(SMU_m_awvalid),
        .SMU_m_bid(SMU_m_bid),
        .SMU_m_bready(SMU_m_bready),
        .SMU_m_bresp(SMU_m_bresp),
        .SMU_m_bvalid(SMU_m_bvalid),
        .SMU_m_rdata(SMU_m_rdata),
        .SMU_m_rid(SMU_m_rid),
        .SMU_m_rlast(SMU_m_rlast),
        .SMU_m_rready(SMU_m_rready),
        .SMU_m_rresp(SMU_m_rresp),
        .SMU_m_rvalid(SMU_m_rvalid),
        .SMU_m_wdata(SMU_m_wdata),
        .SMU_m_wlast(SMU_m_wlast),
        .SMU_m_wready(SMU_m_wready),
        .SMU_m_wstrb(SMU_m_wstrb),
        .SMU_m_wvalid(SMU_m_wvalid),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .ethernet_m_araddr(ethernet_m_araddr),
        .ethernet_m_arburst(ethernet_m_arburst),
        .ethernet_m_arcache(ethernet_m_arcache),
        .ethernet_m_arid(ethernet_m_arid),
        .ethernet_m_arlen(ethernet_m_arlen),
        .ethernet_m_arlock(ethernet_m_arlock),
        .ethernet_m_arprot(ethernet_m_arprot),
        .ethernet_m_arqos(ethernet_m_arqos),
        .ethernet_m_arready(ethernet_m_arready),
        .ethernet_m_arregion(ethernet_m_arregion),
        .ethernet_m_arsize(ethernet_m_arsize),
        .ethernet_m_arvalid(ethernet_m_arvalid),
        .ethernet_m_awaddr(ethernet_m_awaddr),
        .ethernet_m_awburst(ethernet_m_awburst),
        .ethernet_m_awcache(ethernet_m_awcache),
        .ethernet_m_awid(ethernet_m_awid),
        .ethernet_m_awlen(ethernet_m_awlen),
        .ethernet_m_awlock(ethernet_m_awlock),
        .ethernet_m_awprot(ethernet_m_awprot),
        .ethernet_m_awqos(ethernet_m_awqos),
        .ethernet_m_awready(ethernet_m_awready),
        .ethernet_m_awregion(ethernet_m_awregion),
        .ethernet_m_awsize(ethernet_m_awsize),
        .ethernet_m_awvalid(ethernet_m_awvalid),
        .ethernet_m_bid(ethernet_m_bid),
        .ethernet_m_bready(ethernet_m_bready),
        .ethernet_m_bresp(ethernet_m_bresp),
        .ethernet_m_bvalid(ethernet_m_bvalid),
        .ethernet_m_rdata(ethernet_m_rdata),
        .ethernet_m_rid(ethernet_m_rid),
        .ethernet_m_rlast(ethernet_m_rlast),
        .ethernet_m_rready(ethernet_m_rready),
        .ethernet_m_rresp(ethernet_m_rresp),
        .ethernet_m_rvalid(ethernet_m_rvalid),
        .ethernet_m_wdata(ethernet_m_wdata),
        .ethernet_m_wlast(ethernet_m_wlast),
        .ethernet_m_wready(ethernet_m_wready),
        .ethernet_m_wstrb(ethernet_m_wstrb),
        .ethernet_m_wvalid(ethernet_m_wvalid),
        .hydra_s_araddr(hydra_s_araddr),
        .hydra_s_arburst(hydra_s_arburst),
        .hydra_s_arcache(hydra_s_arcache),
        .hydra_s_arid(hydra_s_arid),
        .hydra_s_arlen(hydra_s_arlen),
        .hydra_s_arlock(hydra_s_arlock),
        .hydra_s_arprot(hydra_s_arprot),
        .hydra_s_arqos(hydra_s_arqos),
        .hydra_s_arready(hydra_s_arready),
        .hydra_s_arsize(hydra_s_arsize),
        .hydra_s_arvalid(hydra_s_arvalid),
        .hydra_s_awaddr(hydra_s_awaddr),
        .hydra_s_awburst(hydra_s_awburst),
        .hydra_s_awcache(hydra_s_awcache),
        .hydra_s_awid(hydra_s_awid),
        .hydra_s_awlen(hydra_s_awlen),
        .hydra_s_awlock(hydra_s_awlock),
        .hydra_s_awprot(hydra_s_awprot),
        .hydra_s_awqos(hydra_s_awqos),
        .hydra_s_awready(hydra_s_awready),
        .hydra_s_awsize(hydra_s_awsize),
        .hydra_s_awvalid(hydra_s_awvalid),
        .hydra_s_bid(hydra_s_bid),
        .hydra_s_bready(hydra_s_bready),
        .hydra_s_bresp(hydra_s_bresp),
        .hydra_s_bvalid(hydra_s_bvalid),
        .hydra_s_rdata(hydra_s_rdata),
        .hydra_s_rid(hydra_s_rid),
        .hydra_s_rlast(hydra_s_rlast),
        .hydra_s_rready(hydra_s_rready),
        .hydra_s_rresp(hydra_s_rresp),
        .hydra_s_rvalid(hydra_s_rvalid),
        .hydra_s_wdata(hydra_s_wdata),
        .hydra_s_wlast(hydra_s_wlast),
        .hydra_s_wready(hydra_s_wready),
        .hydra_s_wstrb(hydra_s_wstrb),
        .hydra_s_wvalid(hydra_s_wvalid),
        .interrupt_0(interrupt_0),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));
endmodule
