//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Mar 28 16:51:45 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target xlx_design_subsystem_wrapper.bd
//Design      : xlx_design_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xlx_design_subsystem_wrapper
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
    s_axi_aresetn_0,
    xbar0_araddr,
    xbar0_arburst,
    xbar0_arcache,
    xbar0_arid,
    xbar0_arlen,
    xbar0_arlock,
    xbar0_arprot,
    xbar0_arqos,
    xbar0_arready,
    xbar0_arsize,
    xbar0_arvalid,
    xbar0_awaddr,
    xbar0_awburst,
    xbar0_awcache,
    xbar0_awid,
    xbar0_awlen,
    xbar0_awlock,
    xbar0_awprot,
    xbar0_awqos,
    xbar0_awready,
    xbar0_awsize,
    xbar0_awvalid,
    xbar0_bid,
    xbar0_bready,
    xbar0_bresp,
    xbar0_bvalid,
    xbar0_rdata,
    xbar0_rid,
    xbar0_rlast,
    xbar0_rready,
    xbar0_rresp,
    xbar0_rvalid,
    xbar0_wdata,
    xbar0_wlast,
    xbar0_wready,
    xbar0_wstrb,
    xbar0_wvalid,
    xbar1_araddr,
    xbar1_arburst,
    xbar1_arcache,
    xbar1_arid,
    xbar1_arlen,
    xbar1_arlock,
    xbar1_arprot,
    xbar1_arqos,
    xbar1_arready,
    xbar1_arregion,
    xbar1_arsize,
    xbar1_arvalid,
    xbar1_awaddr,
    xbar1_awburst,
    xbar1_awcache,
    xbar1_awid,
    xbar1_awlen,
    xbar1_awlock,
    xbar1_awprot,
    xbar1_awqos,
    xbar1_awready,
    xbar1_awregion,
    xbar1_awsize,
    xbar1_awvalid,
    xbar1_bid,
    xbar1_bready,
    xbar1_bresp,
    xbar1_bvalid,
    xbar1_rdata,
    xbar1_rid,
    xbar1_rlast,
    xbar1_rready,
    xbar1_rresp,
    xbar1_rvalid,
    xbar1_wdata,
    xbar1_wlast,
    xbar1_wready,
    xbar1_wstrb,
    xbar1_wvalid);
  output [63:0]DDR_s_araddr;
  output [1:0]DDR_s_arburst;
  output [3:0]DDR_s_arcache;
  output [4:0]DDR_s_arid;
  output [7:0]DDR_s_arlen;
  output [0:0]DDR_s_arlock;
  output [2:0]DDR_s_arprot;
  output [3:0]DDR_s_arqos;
  input [0:0]DDR_s_arready;
  output [3:0]DDR_s_arregion;
  output [2:0]DDR_s_arsize;
  output [0:0]DDR_s_arvalid;
  output [63:0]DDR_s_awaddr;
  output [1:0]DDR_s_awburst;
  output [3:0]DDR_s_awcache;
  output [4:0]DDR_s_awid;
  output [7:0]DDR_s_awlen;
  output [0:0]DDR_s_awlock;
  output [2:0]DDR_s_awprot;
  output [3:0]DDR_s_awqos;
  input [0:0]DDR_s_awready;
  output [3:0]DDR_s_awregion;
  output [2:0]DDR_s_awsize;
  output [0:0]DDR_s_awvalid;
  input [4:0]DDR_s_bid;
  output [0:0]DDR_s_bready;
  input [1:0]DDR_s_bresp;
  input [0:0]DDR_s_bvalid;
  input [63:0]DDR_s_rdata;
  input [4:0]DDR_s_rid;
  input [0:0]DDR_s_rlast;
  output [0:0]DDR_s_rready;
  input [1:0]DDR_s_rresp;
  input [0:0]DDR_s_rvalid;
  output [63:0]DDR_s_wdata;
  output [0:0]DDR_s_wlast;
  input [0:0]DDR_s_wready;
  output [7:0]DDR_s_wstrb;
  output [0:0]DDR_s_wvalid;
  input [63:0]MTMLAddr_m_araddr;
  input [1:0]MTMLAddr_m_arburst;
  input [3:0]MTMLAddr_m_arcache;
  input [4:0]MTMLAddr_m_arid;
  input [7:0]MTMLAddr_m_arlen;
  input [0:0]MTMLAddr_m_arlock;
  input [2:0]MTMLAddr_m_arprot;
  input [3:0]MTMLAddr_m_arqos;
  output [0:0]MTMLAddr_m_arready;
  input [2:0]MTMLAddr_m_arsize;
  input [0:0]MTMLAddr_m_arvalid;
  input [63:0]MTMLAddr_m_awaddr;
  input [1:0]MTMLAddr_m_awburst;
  input [3:0]MTMLAddr_m_awcache;
  input [4:0]MTMLAddr_m_awid;
  input [7:0]MTMLAddr_m_awlen;
  input [0:0]MTMLAddr_m_awlock;
  input [2:0]MTMLAddr_m_awprot;
  input [3:0]MTMLAddr_m_awqos;
  output [0:0]MTMLAddr_m_awready;
  input [2:0]MTMLAddr_m_awsize;
  input [0:0]MTMLAddr_m_awvalid;
  output [4:0]MTMLAddr_m_bid;
  input [0:0]MTMLAddr_m_bready;
  output [1:0]MTMLAddr_m_bresp;
  output [0:0]MTMLAddr_m_bvalid;
  output [63:0]MTMLAddr_m_rdata;
  output [4:0]MTMLAddr_m_rid;
  output [0:0]MTMLAddr_m_rlast;
  input [0:0]MTMLAddr_m_rready;
  output [1:0]MTMLAddr_m_rresp;
  output [0:0]MTMLAddr_m_rvalid;
  input [63:0]MTMLAddr_m_wdata;
  input [0:0]MTMLAddr_m_wlast;
  output [0:0]MTMLAddr_m_wready;
  input [7:0]MTMLAddr_m_wstrb;
  input [0:0]MTMLAddr_m_wvalid;
  output [127:64]MTMLAddr_s_araddr;
  output [3:2]MTMLAddr_s_arburst;
  output [7:4]MTMLAddr_s_arcache;
  output [9:5]MTMLAddr_s_arid;
  output [15:8]MTMLAddr_s_arlen;
  output [1:1]MTMLAddr_s_arlock;
  output [5:3]MTMLAddr_s_arprot;
  output [7:4]MTMLAddr_s_arqos;
  input [1:1]MTMLAddr_s_arready;
  output [7:4]MTMLAddr_s_arregion;
  output [5:3]MTMLAddr_s_arsize;
  output [1:1]MTMLAddr_s_arvalid;
  output [127:64]MTMLAddr_s_awaddr;
  output [3:2]MTMLAddr_s_awburst;
  output [7:4]MTMLAddr_s_awcache;
  output [9:5]MTMLAddr_s_awid;
  output [15:8]MTMLAddr_s_awlen;
  output [1:1]MTMLAddr_s_awlock;
  output [5:3]MTMLAddr_s_awprot;
  output [7:4]MTMLAddr_s_awqos;
  input [1:1]MTMLAddr_s_awready;
  output [7:4]MTMLAddr_s_awregion;
  output [5:3]MTMLAddr_s_awsize;
  output [1:1]MTMLAddr_s_awvalid;
  input [9:5]MTMLAddr_s_bid;
  output [1:1]MTMLAddr_s_bready;
  input [3:2]MTMLAddr_s_bresp;
  input [1:1]MTMLAddr_s_bvalid;
  input [127:64]MTMLAddr_s_rdata;
  input [9:5]MTMLAddr_s_rid;
  input [1:1]MTMLAddr_s_rlast;
  output [1:1]MTMLAddr_s_rready;
  input [3:2]MTMLAddr_s_rresp;
  input [1:1]MTMLAddr_s_rvalid;
  output [127:64]MTMLAddr_s_wdata;
  output [1:1]MTMLAddr_s_wlast;
  input [1:1]MTMLAddr_s_wready;
  output [15:8]MTMLAddr_s_wstrb;
  output [1:1]MTMLAddr_s_wvalid;
  input [63:0]S00_AXI_0_araddr;
  input [1:0]S00_AXI_0_arburst;
  input [3:0]S00_AXI_0_arcache;
  input [4:0]S00_AXI_0_arid;
  input [7:0]S00_AXI_0_arlen;
  input [0:0]S00_AXI_0_arlock;
  input [2:0]S00_AXI_0_arprot;
  input [3:0]S00_AXI_0_arqos;
  output [0:0]S00_AXI_0_arready;
  input [2:0]S00_AXI_0_arsize;
  input [0:0]S00_AXI_0_arvalid;
  input [63:0]S00_AXI_0_awaddr;
  input [1:0]S00_AXI_0_awburst;
  input [3:0]S00_AXI_0_awcache;
  input [4:0]S00_AXI_0_awid;
  input [7:0]S00_AXI_0_awlen;
  input [0:0]S00_AXI_0_awlock;
  input [2:0]S00_AXI_0_awprot;
  input [3:0]S00_AXI_0_awqos;
  output [0:0]S00_AXI_0_awready;
  input [2:0]S00_AXI_0_awsize;
  input [0:0]S00_AXI_0_awvalid;
  output [4:0]S00_AXI_0_bid;
  input [0:0]S00_AXI_0_bready;
  output [1:0]S00_AXI_0_bresp;
  output [0:0]S00_AXI_0_bvalid;
  output [63:0]S00_AXI_0_rdata;
  output [4:0]S00_AXI_0_rid;
  output [0:0]S00_AXI_0_rlast;
  input [0:0]S00_AXI_0_rready;
  output [1:0]S00_AXI_0_rresp;
  output [0:0]S00_AXI_0_rvalid;
  input [63:0]S00_AXI_0_wdata;
  input [0:0]S00_AXI_0_wlast;
  output [0:0]S00_AXI_0_wready;
  input [7:0]S00_AXI_0_wstrb;
  input [0:0]S00_AXI_0_wvalid;
  output [191:128]SMU_s_araddr;
  output [5:4]SMU_s_arburst;
  output [11:8]SMU_s_arcache;
  output [14:10]SMU_s_arid;
  output [23:16]SMU_s_arlen;
  output [2:2]SMU_s_arlock;
  output [8:6]SMU_s_arprot;
  output [11:8]SMU_s_arqos;
  input [2:2]SMU_s_arready;
  output [11:8]SMU_s_arregion;
  output [8:6]SMU_s_arsize;
  output [2:2]SMU_s_arvalid;
  output [191:128]SMU_s_awaddr;
  output [5:4]SMU_s_awburst;
  output [11:8]SMU_s_awcache;
  output [14:10]SMU_s_awid;
  output [23:16]SMU_s_awlen;
  output [2:2]SMU_s_awlock;
  output [8:6]SMU_s_awprot;
  output [11:8]SMU_s_awqos;
  input [2:2]SMU_s_awready;
  output [11:8]SMU_s_awregion;
  output [8:6]SMU_s_awsize;
  output [2:2]SMU_s_awvalid;
  input [14:10]SMU_s_bid;
  output [2:2]SMU_s_bready;
  input [5:4]SMU_s_bresp;
  input [2:2]SMU_s_bvalid;
  input [191:128]SMU_s_rdata;
  input [14:10]SMU_s_rid;
  input [2:2]SMU_s_rlast;
  output [2:2]SMU_s_rready;
  input [5:4]SMU_s_rresp;
  input [2:2]SMU_s_rvalid;
  output [191:128]SMU_s_wdata;
  output [2:2]SMU_s_wlast;
  input [2:2]SMU_s_wready;
  output [23:16]SMU_s_wstrb;
  output [2:2]SMU_s_wvalid;
  input UART_0_rxd;
  output UART_0_txd;
  output [255:192]ethernet_s_araddr;
  output [7:6]ethernet_s_arburst;
  output [15:12]ethernet_s_arcache;
  output [19:15]ethernet_s_arid;
  output [31:24]ethernet_s_arlen;
  output [3:3]ethernet_s_arlock;
  output [11:9]ethernet_s_arprot;
  output [15:12]ethernet_s_arqos;
  input [3:3]ethernet_s_arready;
  output [15:12]ethernet_s_arregion;
  output [11:9]ethernet_s_arsize;
  output [3:3]ethernet_s_arvalid;
  output [255:192]ethernet_s_awaddr;
  output [7:6]ethernet_s_awburst;
  output [15:12]ethernet_s_awcache;
  output [19:15]ethernet_s_awid;
  output [31:24]ethernet_s_awlen;
  output [3:3]ethernet_s_awlock;
  output [11:9]ethernet_s_awprot;
  output [15:12]ethernet_s_awqos;
  input [3:3]ethernet_s_awready;
  output [15:12]ethernet_s_awregion;
  output [11:9]ethernet_s_awsize;
  output [3:3]ethernet_s_awvalid;
  input [19:15]ethernet_s_bid;
  output [3:3]ethernet_s_bready;
  input [7:6]ethernet_s_bresp;
  input [3:3]ethernet_s_bvalid;
  input [255:192]ethernet_s_rdata;
  input [19:15]ethernet_s_rid;
  input [3:3]ethernet_s_rlast;
  output [3:3]ethernet_s_rready;
  input [7:6]ethernet_s_rresp;
  input [3:3]ethernet_s_rvalid;
  output [255:192]ethernet_s_wdata;
  output [3:3]ethernet_s_wlast;
  input [3:3]ethernet_s_wready;
  output [31:24]ethernet_s_wstrb;
  output [3:3]ethernet_s_wvalid;
  output [255:192]hydra_S_araddr;
  output [7:6]hydra_S_arburst;
  output [15:12]hydra_S_arcache;
  output [19:15]hydra_S_arid;
  output [31:24]hydra_S_arlen;
  output [3:3]hydra_S_arlock;
  output [11:9]hydra_S_arprot;
  output [15:12]hydra_S_arqos;
  input [3:3]hydra_S_arready;
  output [15:12]hydra_S_arregion;
  output [11:9]hydra_S_arsize;
  output [3:3]hydra_S_arvalid;
  output [255:192]hydra_S_awaddr;
  output [7:6]hydra_S_awburst;
  output [15:12]hydra_S_awcache;
  output [19:15]hydra_S_awid;
  output [31:24]hydra_S_awlen;
  output [3:3]hydra_S_awlock;
  output [11:9]hydra_S_awprot;
  output [15:12]hydra_S_awqos;
  input [3:3]hydra_S_awready;
  output [15:12]hydra_S_awregion;
  output [11:9]hydra_S_awsize;
  output [3:3]hydra_S_awvalid;
  input [19:15]hydra_S_bid;
  output [3:3]hydra_S_bready;
  input [7:6]hydra_S_bresp;
  input [3:3]hydra_S_bvalid;
  input [255:192]hydra_S_rdata;
  input [19:15]hydra_S_rid;
  input [3:3]hydra_S_rlast;
  output [3:3]hydra_S_rready;
  input [7:6]hydra_S_rresp;
  input [3:3]hydra_S_rvalid;
  output [255:192]hydra_S_wdata;
  output [3:3]hydra_S_wlast;
  input [3:3]hydra_S_wready;
  output [31:24]hydra_S_wstrb;
  output [3:3]hydra_S_wvalid;
  input [127:64]hydra_m_araddr;
  input [3:2]hydra_m_arburst;
  input [7:4]hydra_m_arcache;
  input [9:5]hydra_m_arid;
  input [15:8]hydra_m_arlen;
  input [1:1]hydra_m_arlock;
  input [5:3]hydra_m_arprot;
  input [7:4]hydra_m_arqos;
  output [1:1]hydra_m_arready;
  input [5:3]hydra_m_arsize;
  input [1:1]hydra_m_arvalid;
  input [127:64]hydra_m_awaddr;
  input [3:2]hydra_m_awburst;
  input [7:4]hydra_m_awcache;
  input [9:5]hydra_m_awid;
  input [15:8]hydra_m_awlen;
  input [1:1]hydra_m_awlock;
  input [5:3]hydra_m_awprot;
  input [7:4]hydra_m_awqos;
  output [1:1]hydra_m_awready;
  input [5:3]hydra_m_awsize;
  input [1:1]hydra_m_awvalid;
  output [9:5]hydra_m_bid;
  input [1:1]hydra_m_bready;
  output [3:2]hydra_m_bresp;
  output [1:1]hydra_m_bvalid;
  output [127:64]hydra_m_rdata;
  output [9:5]hydra_m_rid;
  output [1:1]hydra_m_rlast;
  input [1:1]hydra_m_rready;
  output [3:2]hydra_m_rresp;
  output [1:1]hydra_m_rvalid;
  input [127:64]hydra_m_wdata;
  input [1:1]hydra_m_wlast;
  output [1:1]hydra_m_wready;
  input [15:8]hydra_m_wstrb;
  input [1:1]hydra_m_wvalid;
  output interrupt_0;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;
  input [63:0]xbar0_araddr;
  input [1:0]xbar0_arburst;
  input [3:0]xbar0_arcache;
  input [4:0]xbar0_arid;
  input [7:0]xbar0_arlen;
  input [0:0]xbar0_arlock;
  input [2:0]xbar0_arprot;
  input [3:0]xbar0_arqos;
  output [0:0]xbar0_arready;
  input [2:0]xbar0_arsize;
  input [0:0]xbar0_arvalid;
  input [63:0]xbar0_awaddr;
  input [1:0]xbar0_awburst;
  input [3:0]xbar0_awcache;
  input [4:0]xbar0_awid;
  input [7:0]xbar0_awlen;
  input [0:0]xbar0_awlock;
  input [2:0]xbar0_awprot;
  input [3:0]xbar0_awqos;
  output [0:0]xbar0_awready;
  input [2:0]xbar0_awsize;
  input [0:0]xbar0_awvalid;
  output [4:0]xbar0_bid;
  input [0:0]xbar0_bready;
  output [1:0]xbar0_bresp;
  output [0:0]xbar0_bvalid;
  output [63:0]xbar0_rdata;
  output [4:0]xbar0_rid;
  output [0:0]xbar0_rlast;
  input [0:0]xbar0_rready;
  output [1:0]xbar0_rresp;
  output [0:0]xbar0_rvalid;
  input [63:0]xbar0_wdata;
  input [0:0]xbar0_wlast;
  output [0:0]xbar0_wready;
  input [7:0]xbar0_wstrb;
  input [0:0]xbar0_wvalid;
  output [63:0]xbar1_araddr;
  output [1:0]xbar1_arburst;
  output [3:0]xbar1_arcache;
  output [4:0]xbar1_arid;
  output [7:0]xbar1_arlen;
  output [0:0]xbar1_arlock;
  output [2:0]xbar1_arprot;
  output [3:0]xbar1_arqos;
  input [0:0]xbar1_arready;
  output [3:0]xbar1_arregion;
  output [2:0]xbar1_arsize;
  output [0:0]xbar1_arvalid;
  output [63:0]xbar1_awaddr;
  output [1:0]xbar1_awburst;
  output [3:0]xbar1_awcache;
  output [4:0]xbar1_awid;
  output [7:0]xbar1_awlen;
  output [0:0]xbar1_awlock;
  output [2:0]xbar1_awprot;
  output [3:0]xbar1_awqos;
  input [0:0]xbar1_awready;
  output [3:0]xbar1_awregion;
  output [2:0]xbar1_awsize;
  output [0:0]xbar1_awvalid;
  input [4:0]xbar1_bid;
  output [0:0]xbar1_bready;
  input [1:0]xbar1_bresp;
  input [0:0]xbar1_bvalid;
  input [63:0]xbar1_rdata;
  input [4:0]xbar1_rid;
  input [0:0]xbar1_rlast;
  output [0:0]xbar1_rready;
  input [1:0]xbar1_rresp;
  input [0:0]xbar1_rvalid;
  output [63:0]xbar1_wdata;
  output [0:0]xbar1_wlast;
  input [0:0]xbar1_wready;
  output [7:0]xbar1_wstrb;
  output [0:0]xbar1_wvalid;

  wire [63:0]DDR_s_araddr;
  wire [1:0]DDR_s_arburst;
  wire [3:0]DDR_s_arcache;
  wire [4:0]DDR_s_arid;
  wire [7:0]DDR_s_arlen;
  wire [0:0]DDR_s_arlock;
  wire [2:0]DDR_s_arprot;
  wire [3:0]DDR_s_arqos;
  wire [0:0]DDR_s_arready;
  wire [3:0]DDR_s_arregion;
  wire [2:0]DDR_s_arsize;
  wire [0:0]DDR_s_arvalid;
  wire [63:0]DDR_s_awaddr;
  wire [1:0]DDR_s_awburst;
  wire [3:0]DDR_s_awcache;
  wire [4:0]DDR_s_awid;
  wire [7:0]DDR_s_awlen;
  wire [0:0]DDR_s_awlock;
  wire [2:0]DDR_s_awprot;
  wire [3:0]DDR_s_awqos;
  wire [0:0]DDR_s_awready;
  wire [3:0]DDR_s_awregion;
  wire [2:0]DDR_s_awsize;
  wire [0:0]DDR_s_awvalid;
  wire [4:0]DDR_s_bid;
  wire [0:0]DDR_s_bready;
  wire [1:0]DDR_s_bresp;
  wire [0:0]DDR_s_bvalid;
  wire [63:0]DDR_s_rdata;
  wire [4:0]DDR_s_rid;
  wire [0:0]DDR_s_rlast;
  wire [0:0]DDR_s_rready;
  wire [1:0]DDR_s_rresp;
  wire [0:0]DDR_s_rvalid;
  wire [63:0]DDR_s_wdata;
  wire [0:0]DDR_s_wlast;
  wire [0:0]DDR_s_wready;
  wire [7:0]DDR_s_wstrb;
  wire [0:0]DDR_s_wvalid;
  wire [63:0]MTMLAddr_m_araddr;
  wire [1:0]MTMLAddr_m_arburst;
  wire [3:0]MTMLAddr_m_arcache;
  wire [4:0]MTMLAddr_m_arid;
  wire [7:0]MTMLAddr_m_arlen;
  wire [0:0]MTMLAddr_m_arlock;
  wire [2:0]MTMLAddr_m_arprot;
  wire [3:0]MTMLAddr_m_arqos;
  wire [0:0]MTMLAddr_m_arready;
  wire [2:0]MTMLAddr_m_arsize;
  wire [0:0]MTMLAddr_m_arvalid;
  wire [63:0]MTMLAddr_m_awaddr;
  wire [1:0]MTMLAddr_m_awburst;
  wire [3:0]MTMLAddr_m_awcache;
  wire [4:0]MTMLAddr_m_awid;
  wire [7:0]MTMLAddr_m_awlen;
  wire [0:0]MTMLAddr_m_awlock;
  wire [2:0]MTMLAddr_m_awprot;
  wire [3:0]MTMLAddr_m_awqos;
  wire [0:0]MTMLAddr_m_awready;
  wire [2:0]MTMLAddr_m_awsize;
  wire [0:0]MTMLAddr_m_awvalid;
  wire [4:0]MTMLAddr_m_bid;
  wire [0:0]MTMLAddr_m_bready;
  wire [1:0]MTMLAddr_m_bresp;
  wire [0:0]MTMLAddr_m_bvalid;
  wire [63:0]MTMLAddr_m_rdata;
  wire [4:0]MTMLAddr_m_rid;
  wire [0:0]MTMLAddr_m_rlast;
  wire [0:0]MTMLAddr_m_rready;
  wire [1:0]MTMLAddr_m_rresp;
  wire [0:0]MTMLAddr_m_rvalid;
  wire [63:0]MTMLAddr_m_wdata;
  wire [0:0]MTMLAddr_m_wlast;
  wire [0:0]MTMLAddr_m_wready;
  wire [7:0]MTMLAddr_m_wstrb;
  wire [0:0]MTMLAddr_m_wvalid;
  wire [127:64]MTMLAddr_s_araddr;
  wire [3:2]MTMLAddr_s_arburst;
  wire [7:4]MTMLAddr_s_arcache;
  wire [9:5]MTMLAddr_s_arid;
  wire [15:8]MTMLAddr_s_arlen;
  wire [1:1]MTMLAddr_s_arlock;
  wire [5:3]MTMLAddr_s_arprot;
  wire [7:4]MTMLAddr_s_arqos;
  wire [1:1]MTMLAddr_s_arready;
  wire [7:4]MTMLAddr_s_arregion;
  wire [5:3]MTMLAddr_s_arsize;
  wire [1:1]MTMLAddr_s_arvalid;
  wire [127:64]MTMLAddr_s_awaddr;
  wire [3:2]MTMLAddr_s_awburst;
  wire [7:4]MTMLAddr_s_awcache;
  wire [9:5]MTMLAddr_s_awid;
  wire [15:8]MTMLAddr_s_awlen;
  wire [1:1]MTMLAddr_s_awlock;
  wire [5:3]MTMLAddr_s_awprot;
  wire [7:4]MTMLAddr_s_awqos;
  wire [1:1]MTMLAddr_s_awready;
  wire [7:4]MTMLAddr_s_awregion;
  wire [5:3]MTMLAddr_s_awsize;
  wire [1:1]MTMLAddr_s_awvalid;
  wire [9:5]MTMLAddr_s_bid;
  wire [1:1]MTMLAddr_s_bready;
  wire [3:2]MTMLAddr_s_bresp;
  wire [1:1]MTMLAddr_s_bvalid;
  wire [127:64]MTMLAddr_s_rdata;
  wire [9:5]MTMLAddr_s_rid;
  wire [1:1]MTMLAddr_s_rlast;
  wire [1:1]MTMLAddr_s_rready;
  wire [3:2]MTMLAddr_s_rresp;
  wire [1:1]MTMLAddr_s_rvalid;
  wire [127:64]MTMLAddr_s_wdata;
  wire [1:1]MTMLAddr_s_wlast;
  wire [1:1]MTMLAddr_s_wready;
  wire [15:8]MTMLAddr_s_wstrb;
  wire [1:1]MTMLAddr_s_wvalid;
  wire [63:0]S00_AXI_0_araddr;
  wire [1:0]S00_AXI_0_arburst;
  wire [3:0]S00_AXI_0_arcache;
  wire [4:0]S00_AXI_0_arid;
  wire [7:0]S00_AXI_0_arlen;
  wire [0:0]S00_AXI_0_arlock;
  wire [2:0]S00_AXI_0_arprot;
  wire [3:0]S00_AXI_0_arqos;
  wire [0:0]S00_AXI_0_arready;
  wire [2:0]S00_AXI_0_arsize;
  wire [0:0]S00_AXI_0_arvalid;
  wire [63:0]S00_AXI_0_awaddr;
  wire [1:0]S00_AXI_0_awburst;
  wire [3:0]S00_AXI_0_awcache;
  wire [4:0]S00_AXI_0_awid;
  wire [7:0]S00_AXI_0_awlen;
  wire [0:0]S00_AXI_0_awlock;
  wire [2:0]S00_AXI_0_awprot;
  wire [3:0]S00_AXI_0_awqos;
  wire [0:0]S00_AXI_0_awready;
  wire [2:0]S00_AXI_0_awsize;
  wire [0:0]S00_AXI_0_awvalid;
  wire [4:0]S00_AXI_0_bid;
  wire [0:0]S00_AXI_0_bready;
  wire [1:0]S00_AXI_0_bresp;
  wire [0:0]S00_AXI_0_bvalid;
  wire [63:0]S00_AXI_0_rdata;
  wire [4:0]S00_AXI_0_rid;
  wire [0:0]S00_AXI_0_rlast;
  wire [0:0]S00_AXI_0_rready;
  wire [1:0]S00_AXI_0_rresp;
  wire [0:0]S00_AXI_0_rvalid;
  wire [63:0]S00_AXI_0_wdata;
  wire [0:0]S00_AXI_0_wlast;
  wire [0:0]S00_AXI_0_wready;
  wire [7:0]S00_AXI_0_wstrb;
  wire [0:0]S00_AXI_0_wvalid;
  wire [191:128]SMU_s_araddr;
  wire [5:4]SMU_s_arburst;
  wire [11:8]SMU_s_arcache;
  wire [14:10]SMU_s_arid;
  wire [23:16]SMU_s_arlen;
  wire [2:2]SMU_s_arlock;
  wire [8:6]SMU_s_arprot;
  wire [11:8]SMU_s_arqos;
  wire [2:2]SMU_s_arready;
  wire [11:8]SMU_s_arregion;
  wire [8:6]SMU_s_arsize;
  wire [2:2]SMU_s_arvalid;
  wire [191:128]SMU_s_awaddr;
  wire [5:4]SMU_s_awburst;
  wire [11:8]SMU_s_awcache;
  wire [14:10]SMU_s_awid;
  wire [23:16]SMU_s_awlen;
  wire [2:2]SMU_s_awlock;
  wire [8:6]SMU_s_awprot;
  wire [11:8]SMU_s_awqos;
  wire [2:2]SMU_s_awready;
  wire [11:8]SMU_s_awregion;
  wire [8:6]SMU_s_awsize;
  wire [2:2]SMU_s_awvalid;
  wire [14:10]SMU_s_bid;
  wire [2:2]SMU_s_bready;
  wire [5:4]SMU_s_bresp;
  wire [2:2]SMU_s_bvalid;
  wire [191:128]SMU_s_rdata;
  wire [14:10]SMU_s_rid;
  wire [2:2]SMU_s_rlast;
  wire [2:2]SMU_s_rready;
  wire [5:4]SMU_s_rresp;
  wire [2:2]SMU_s_rvalid;
  wire [191:128]SMU_s_wdata;
  wire [2:2]SMU_s_wlast;
  wire [2:2]SMU_s_wready;
  wire [23:16]SMU_s_wstrb;
  wire [2:2]SMU_s_wvalid;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire [255:192]ethernet_s_araddr;
  wire [7:6]ethernet_s_arburst;
  wire [15:12]ethernet_s_arcache;
  wire [19:15]ethernet_s_arid;
  wire [31:24]ethernet_s_arlen;
  wire [3:3]ethernet_s_arlock;
  wire [11:9]ethernet_s_arprot;
  wire [15:12]ethernet_s_arqos;
  wire [3:3]ethernet_s_arready;
  wire [15:12]ethernet_s_arregion;
  wire [11:9]ethernet_s_arsize;
  wire [3:3]ethernet_s_arvalid;
  wire [255:192]ethernet_s_awaddr;
  wire [7:6]ethernet_s_awburst;
  wire [15:12]ethernet_s_awcache;
  wire [19:15]ethernet_s_awid;
  wire [31:24]ethernet_s_awlen;
  wire [3:3]ethernet_s_awlock;
  wire [11:9]ethernet_s_awprot;
  wire [15:12]ethernet_s_awqos;
  wire [3:3]ethernet_s_awready;
  wire [15:12]ethernet_s_awregion;
  wire [11:9]ethernet_s_awsize;
  wire [3:3]ethernet_s_awvalid;
  wire [19:15]ethernet_s_bid;
  wire [3:3]ethernet_s_bready;
  wire [7:6]ethernet_s_bresp;
  wire [3:3]ethernet_s_bvalid;
  wire [255:192]ethernet_s_rdata;
  wire [19:15]ethernet_s_rid;
  wire [3:3]ethernet_s_rlast;
  wire [3:3]ethernet_s_rready;
  wire [7:6]ethernet_s_rresp;
  wire [3:3]ethernet_s_rvalid;
  wire [255:192]ethernet_s_wdata;
  wire [3:3]ethernet_s_wlast;
  wire [3:3]ethernet_s_wready;
  wire [31:24]ethernet_s_wstrb;
  wire [3:3]ethernet_s_wvalid;
  wire [255:192]hydra_S_araddr;
  wire [7:6]hydra_S_arburst;
  wire [15:12]hydra_S_arcache;
  wire [19:15]hydra_S_arid;
  wire [31:24]hydra_S_arlen;
  wire [3:3]hydra_S_arlock;
  wire [11:9]hydra_S_arprot;
  wire [15:12]hydra_S_arqos;
  wire [3:3]hydra_S_arready;
  wire [15:12]hydra_S_arregion;
  wire [11:9]hydra_S_arsize;
  wire [3:3]hydra_S_arvalid;
  wire [255:192]hydra_S_awaddr;
  wire [7:6]hydra_S_awburst;
  wire [15:12]hydra_S_awcache;
  wire [19:15]hydra_S_awid;
  wire [31:24]hydra_S_awlen;
  wire [3:3]hydra_S_awlock;
  wire [11:9]hydra_S_awprot;
  wire [15:12]hydra_S_awqos;
  wire [3:3]hydra_S_awready;
  wire [15:12]hydra_S_awregion;
  wire [11:9]hydra_S_awsize;
  wire [3:3]hydra_S_awvalid;
  wire [19:15]hydra_S_bid;
  wire [3:3]hydra_S_bready;
  wire [7:6]hydra_S_bresp;
  wire [3:3]hydra_S_bvalid;
  wire [255:192]hydra_S_rdata;
  wire [19:15]hydra_S_rid;
  wire [3:3]hydra_S_rlast;
  wire [3:3]hydra_S_rready;
  wire [7:6]hydra_S_rresp;
  wire [3:3]hydra_S_rvalid;
  wire [255:192]hydra_S_wdata;
  wire [3:3]hydra_S_wlast;
  wire [3:3]hydra_S_wready;
  wire [31:24]hydra_S_wstrb;
  wire [3:3]hydra_S_wvalid;
  wire [127:64]hydra_m_araddr;
  wire [3:2]hydra_m_arburst;
  wire [7:4]hydra_m_arcache;
  wire [9:5]hydra_m_arid;
  wire [15:8]hydra_m_arlen;
  wire [1:1]hydra_m_arlock;
  wire [5:3]hydra_m_arprot;
  wire [7:4]hydra_m_arqos;
  wire [1:1]hydra_m_arready;
  wire [5:3]hydra_m_arsize;
  wire [1:1]hydra_m_arvalid;
  wire [127:64]hydra_m_awaddr;
  wire [3:2]hydra_m_awburst;
  wire [7:4]hydra_m_awcache;
  wire [9:5]hydra_m_awid;
  wire [15:8]hydra_m_awlen;
  wire [1:1]hydra_m_awlock;
  wire [5:3]hydra_m_awprot;
  wire [7:4]hydra_m_awqos;
  wire [1:1]hydra_m_awready;
  wire [5:3]hydra_m_awsize;
  wire [1:1]hydra_m_awvalid;
  wire [9:5]hydra_m_bid;
  wire [1:1]hydra_m_bready;
  wire [3:2]hydra_m_bresp;
  wire [1:1]hydra_m_bvalid;
  wire [127:64]hydra_m_rdata;
  wire [9:5]hydra_m_rid;
  wire [1:1]hydra_m_rlast;
  wire [1:1]hydra_m_rready;
  wire [3:2]hydra_m_rresp;
  wire [1:1]hydra_m_rvalid;
  wire [127:64]hydra_m_wdata;
  wire [1:1]hydra_m_wlast;
  wire [1:1]hydra_m_wready;
  wire [15:8]hydra_m_wstrb;
  wire [1:1]hydra_m_wvalid;
  wire interrupt_0;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;
  wire [63:0]xbar0_araddr;
  wire [1:0]xbar0_arburst;
  wire [3:0]xbar0_arcache;
  wire [4:0]xbar0_arid;
  wire [7:0]xbar0_arlen;
  wire [0:0]xbar0_arlock;
  wire [2:0]xbar0_arprot;
  wire [3:0]xbar0_arqos;
  wire [0:0]xbar0_arready;
  wire [2:0]xbar0_arsize;
  wire [0:0]xbar0_arvalid;
  wire [63:0]xbar0_awaddr;
  wire [1:0]xbar0_awburst;
  wire [3:0]xbar0_awcache;
  wire [4:0]xbar0_awid;
  wire [7:0]xbar0_awlen;
  wire [0:0]xbar0_awlock;
  wire [2:0]xbar0_awprot;
  wire [3:0]xbar0_awqos;
  wire [0:0]xbar0_awready;
  wire [2:0]xbar0_awsize;
  wire [0:0]xbar0_awvalid;
  wire [4:0]xbar0_bid;
  wire [0:0]xbar0_bready;
  wire [1:0]xbar0_bresp;
  wire [0:0]xbar0_bvalid;
  wire [63:0]xbar0_rdata;
  wire [4:0]xbar0_rid;
  wire [0:0]xbar0_rlast;
  wire [0:0]xbar0_rready;
  wire [1:0]xbar0_rresp;
  wire [0:0]xbar0_rvalid;
  wire [63:0]xbar0_wdata;
  wire [0:0]xbar0_wlast;
  wire [0:0]xbar0_wready;
  wire [7:0]xbar0_wstrb;
  wire [0:0]xbar0_wvalid;
  wire [63:0]xbar1_araddr;
  wire [1:0]xbar1_arburst;
  wire [3:0]xbar1_arcache;
  wire [4:0]xbar1_arid;
  wire [7:0]xbar1_arlen;
  wire [0:0]xbar1_arlock;
  wire [2:0]xbar1_arprot;
  wire [3:0]xbar1_arqos;
  wire [0:0]xbar1_arready;
  wire [3:0]xbar1_arregion;
  wire [2:0]xbar1_arsize;
  wire [0:0]xbar1_arvalid;
  wire [63:0]xbar1_awaddr;
  wire [1:0]xbar1_awburst;
  wire [3:0]xbar1_awcache;
  wire [4:0]xbar1_awid;
  wire [7:0]xbar1_awlen;
  wire [0:0]xbar1_awlock;
  wire [2:0]xbar1_awprot;
  wire [3:0]xbar1_awqos;
  wire [0:0]xbar1_awready;
  wire [3:0]xbar1_awregion;
  wire [2:0]xbar1_awsize;
  wire [0:0]xbar1_awvalid;
  wire [4:0]xbar1_bid;
  wire [0:0]xbar1_bready;
  wire [1:0]xbar1_bresp;
  wire [0:0]xbar1_bvalid;
  wire [63:0]xbar1_rdata;
  wire [4:0]xbar1_rid;
  wire [0:0]xbar1_rlast;
  wire [0:0]xbar1_rready;
  wire [1:0]xbar1_rresp;
  wire [0:0]xbar1_rvalid;
  wire [63:0]xbar1_wdata;
  wire [0:0]xbar1_wlast;
  wire [0:0]xbar1_wready;
  wire [7:0]xbar1_wstrb;
  wire [0:0]xbar1_wvalid;

  xlx_design_subsystem xlx_design_subsystem_i
       (.DDR_s_araddr(DDR_s_araddr),
        .DDR_s_arburst(DDR_s_arburst),
        .DDR_s_arcache(DDR_s_arcache),
        .DDR_s_arid(DDR_s_arid),
        .DDR_s_arlen(DDR_s_arlen),
        .DDR_s_arlock(DDR_s_arlock),
        .DDR_s_arprot(DDR_s_arprot),
        .DDR_s_arqos(DDR_s_arqos),
        .DDR_s_arready(DDR_s_arready),
        .DDR_s_arregion(DDR_s_arregion),
        .DDR_s_arsize(DDR_s_arsize),
        .DDR_s_arvalid(DDR_s_arvalid),
        .DDR_s_awaddr(DDR_s_awaddr),
        .DDR_s_awburst(DDR_s_awburst),
        .DDR_s_awcache(DDR_s_awcache),
        .DDR_s_awid(DDR_s_awid),
        .DDR_s_awlen(DDR_s_awlen),
        .DDR_s_awlock(DDR_s_awlock),
        .DDR_s_awprot(DDR_s_awprot),
        .DDR_s_awqos(DDR_s_awqos),
        .DDR_s_awready(DDR_s_awready),
        .DDR_s_awregion(DDR_s_awregion),
        .DDR_s_awsize(DDR_s_awsize),
        .DDR_s_awvalid(DDR_s_awvalid),
        .DDR_s_bid(DDR_s_bid),
        .DDR_s_bready(DDR_s_bready),
        .DDR_s_bresp(DDR_s_bresp),
        .DDR_s_bvalid(DDR_s_bvalid),
        .DDR_s_rdata(DDR_s_rdata),
        .DDR_s_rid(DDR_s_rid),
        .DDR_s_rlast(DDR_s_rlast),
        .DDR_s_rready(DDR_s_rready),
        .DDR_s_rresp(DDR_s_rresp),
        .DDR_s_rvalid(DDR_s_rvalid),
        .DDR_s_wdata(DDR_s_wdata),
        .DDR_s_wlast(DDR_s_wlast),
        .DDR_s_wready(DDR_s_wready),
        .DDR_s_wstrb(DDR_s_wstrb),
        .DDR_s_wvalid(DDR_s_wvalid),
        .MTMLAddr_m_araddr(MTMLAddr_m_araddr),
        .MTMLAddr_m_arburst(MTMLAddr_m_arburst),
        .MTMLAddr_m_arcache(MTMLAddr_m_arcache),
        .MTMLAddr_m_arid(MTMLAddr_m_arid),
        .MTMLAddr_m_arlen(MTMLAddr_m_arlen),
        .MTMLAddr_m_arlock(MTMLAddr_m_arlock),
        .MTMLAddr_m_arprot(MTMLAddr_m_arprot),
        .MTMLAddr_m_arqos(MTMLAddr_m_arqos),
        .MTMLAddr_m_arready(MTMLAddr_m_arready),
        .MTMLAddr_m_arsize(MTMLAddr_m_arsize),
        .MTMLAddr_m_arvalid(MTMLAddr_m_arvalid),
        .MTMLAddr_m_awaddr(MTMLAddr_m_awaddr),
        .MTMLAddr_m_awburst(MTMLAddr_m_awburst),
        .MTMLAddr_m_awcache(MTMLAddr_m_awcache),
        .MTMLAddr_m_awid(MTMLAddr_m_awid),
        .MTMLAddr_m_awlen(MTMLAddr_m_awlen),
        .MTMLAddr_m_awlock(MTMLAddr_m_awlock),
        .MTMLAddr_m_awprot(MTMLAddr_m_awprot),
        .MTMLAddr_m_awqos(MTMLAddr_m_awqos),
        .MTMLAddr_m_awready(MTMLAddr_m_awready),
        .MTMLAddr_m_awsize(MTMLAddr_m_awsize),
        .MTMLAddr_m_awvalid(MTMLAddr_m_awvalid),
        .MTMLAddr_m_bid(MTMLAddr_m_bid),
        .MTMLAddr_m_bready(MTMLAddr_m_bready),
        .MTMLAddr_m_bresp(MTMLAddr_m_bresp),
        .MTMLAddr_m_bvalid(MTMLAddr_m_bvalid),
        .MTMLAddr_m_rdata(MTMLAddr_m_rdata),
        .MTMLAddr_m_rid(MTMLAddr_m_rid),
        .MTMLAddr_m_rlast(MTMLAddr_m_rlast),
        .MTMLAddr_m_rready(MTMLAddr_m_rready),
        .MTMLAddr_m_rresp(MTMLAddr_m_rresp),
        .MTMLAddr_m_rvalid(MTMLAddr_m_rvalid),
        .MTMLAddr_m_wdata(MTMLAddr_m_wdata),
        .MTMLAddr_m_wlast(MTMLAddr_m_wlast),
        .MTMLAddr_m_wready(MTMLAddr_m_wready),
        .MTMLAddr_m_wstrb(MTMLAddr_m_wstrb),
        .MTMLAddr_m_wvalid(MTMLAddr_m_wvalid),
        .MTMLAddr_s_araddr(MTMLAddr_s_araddr),
        .MTMLAddr_s_arburst(MTMLAddr_s_arburst),
        .MTMLAddr_s_arcache(MTMLAddr_s_arcache),
        .MTMLAddr_s_arid(MTMLAddr_s_arid),
        .MTMLAddr_s_arlen(MTMLAddr_s_arlen),
        .MTMLAddr_s_arlock(MTMLAddr_s_arlock),
        .MTMLAddr_s_arprot(MTMLAddr_s_arprot),
        .MTMLAddr_s_arqos(MTMLAddr_s_arqos),
        .MTMLAddr_s_arready(MTMLAddr_s_arready),
        .MTMLAddr_s_arregion(MTMLAddr_s_arregion),
        .MTMLAddr_s_arsize(MTMLAddr_s_arsize),
        .MTMLAddr_s_arvalid(MTMLAddr_s_arvalid),
        .MTMLAddr_s_awaddr(MTMLAddr_s_awaddr),
        .MTMLAddr_s_awburst(MTMLAddr_s_awburst),
        .MTMLAddr_s_awcache(MTMLAddr_s_awcache),
        .MTMLAddr_s_awid(MTMLAddr_s_awid),
        .MTMLAddr_s_awlen(MTMLAddr_s_awlen),
        .MTMLAddr_s_awlock(MTMLAddr_s_awlock),
        .MTMLAddr_s_awprot(MTMLAddr_s_awprot),
        .MTMLAddr_s_awqos(MTMLAddr_s_awqos),
        .MTMLAddr_s_awready(MTMLAddr_s_awready),
        .MTMLAddr_s_awregion(MTMLAddr_s_awregion),
        .MTMLAddr_s_awsize(MTMLAddr_s_awsize),
        .MTMLAddr_s_awvalid(MTMLAddr_s_awvalid),
        .MTMLAddr_s_bid(MTMLAddr_s_bid),
        .MTMLAddr_s_bready(MTMLAddr_s_bready),
        .MTMLAddr_s_bresp(MTMLAddr_s_bresp),
        .MTMLAddr_s_bvalid(MTMLAddr_s_bvalid),
        .MTMLAddr_s_rdata(MTMLAddr_s_rdata),
        .MTMLAddr_s_rid(MTMLAddr_s_rid),
        .MTMLAddr_s_rlast(MTMLAddr_s_rlast),
        .MTMLAddr_s_rready(MTMLAddr_s_rready),
        .MTMLAddr_s_rresp(MTMLAddr_s_rresp),
        .MTMLAddr_s_rvalid(MTMLAddr_s_rvalid),
        .MTMLAddr_s_wdata(MTMLAddr_s_wdata),
        .MTMLAddr_s_wlast(MTMLAddr_s_wlast),
        .MTMLAddr_s_wready(MTMLAddr_s_wready),
        .MTMLAddr_s_wstrb(MTMLAddr_s_wstrb),
        .MTMLAddr_s_wvalid(MTMLAddr_s_wvalid),
        .S00_AXI_0_araddr(S00_AXI_0_araddr),
        .S00_AXI_0_arburst(S00_AXI_0_arburst),
        .S00_AXI_0_arcache(S00_AXI_0_arcache),
        .S00_AXI_0_arid(S00_AXI_0_arid),
        .S00_AXI_0_arlen(S00_AXI_0_arlen),
        .S00_AXI_0_arlock(S00_AXI_0_arlock),
        .S00_AXI_0_arprot(S00_AXI_0_arprot),
        .S00_AXI_0_arqos(S00_AXI_0_arqos),
        .S00_AXI_0_arready(S00_AXI_0_arready),
        .S00_AXI_0_arsize(S00_AXI_0_arsize),
        .S00_AXI_0_arvalid(S00_AXI_0_arvalid),
        .S00_AXI_0_awaddr(S00_AXI_0_awaddr),
        .S00_AXI_0_awburst(S00_AXI_0_awburst),
        .S00_AXI_0_awcache(S00_AXI_0_awcache),
        .S00_AXI_0_awid(S00_AXI_0_awid),
        .S00_AXI_0_awlen(S00_AXI_0_awlen),
        .S00_AXI_0_awlock(S00_AXI_0_awlock),
        .S00_AXI_0_awprot(S00_AXI_0_awprot),
        .S00_AXI_0_awqos(S00_AXI_0_awqos),
        .S00_AXI_0_awready(S00_AXI_0_awready),
        .S00_AXI_0_awsize(S00_AXI_0_awsize),
        .S00_AXI_0_awvalid(S00_AXI_0_awvalid),
        .S00_AXI_0_bid(S00_AXI_0_bid),
        .S00_AXI_0_bready(S00_AXI_0_bready),
        .S00_AXI_0_bresp(S00_AXI_0_bresp),
        .S00_AXI_0_bvalid(S00_AXI_0_bvalid),
        .S00_AXI_0_rdata(S00_AXI_0_rdata),
        .S00_AXI_0_rid(S00_AXI_0_rid),
        .S00_AXI_0_rlast(S00_AXI_0_rlast),
        .S00_AXI_0_rready(S00_AXI_0_rready),
        .S00_AXI_0_rresp(S00_AXI_0_rresp),
        .S00_AXI_0_rvalid(S00_AXI_0_rvalid),
        .S00_AXI_0_wdata(S00_AXI_0_wdata),
        .S00_AXI_0_wlast(S00_AXI_0_wlast),
        .S00_AXI_0_wready(S00_AXI_0_wready),
        .S00_AXI_0_wstrb(S00_AXI_0_wstrb),
        .S00_AXI_0_wvalid(S00_AXI_0_wvalid),
        .SMU_s_araddr(SMU_s_araddr),
        .SMU_s_arburst(SMU_s_arburst),
        .SMU_s_arcache(SMU_s_arcache),
        .SMU_s_arid(SMU_s_arid),
        .SMU_s_arlen(SMU_s_arlen),
        .SMU_s_arlock(SMU_s_arlock),
        .SMU_s_arprot(SMU_s_arprot),
        .SMU_s_arqos(SMU_s_arqos),
        .SMU_s_arready(SMU_s_arready),
        .SMU_s_arregion(SMU_s_arregion),
        .SMU_s_arsize(SMU_s_arsize),
        .SMU_s_arvalid(SMU_s_arvalid),
        .SMU_s_awaddr(SMU_s_awaddr),
        .SMU_s_awburst(SMU_s_awburst),
        .SMU_s_awcache(SMU_s_awcache),
        .SMU_s_awid(SMU_s_awid),
        .SMU_s_awlen(SMU_s_awlen),
        .SMU_s_awlock(SMU_s_awlock),
        .SMU_s_awprot(SMU_s_awprot),
        .SMU_s_awqos(SMU_s_awqos),
        .SMU_s_awready(SMU_s_awready),
        .SMU_s_awregion(SMU_s_awregion),
        .SMU_s_awsize(SMU_s_awsize),
        .SMU_s_awvalid(SMU_s_awvalid),
        .SMU_s_bid(SMU_s_bid),
        .SMU_s_bready(SMU_s_bready),
        .SMU_s_bresp(SMU_s_bresp),
        .SMU_s_bvalid(SMU_s_bvalid),
        .SMU_s_rdata(SMU_s_rdata),
        .SMU_s_rid(SMU_s_rid),
        .SMU_s_rlast(SMU_s_rlast),
        .SMU_s_rready(SMU_s_rready),
        .SMU_s_rresp(SMU_s_rresp),
        .SMU_s_rvalid(SMU_s_rvalid),
        .SMU_s_wdata(SMU_s_wdata),
        .SMU_s_wlast(SMU_s_wlast),
        .SMU_s_wready(SMU_s_wready),
        .SMU_s_wstrb(SMU_s_wstrb),
        .SMU_s_wvalid(SMU_s_wvalid),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .ethernet_s_araddr(ethernet_s_araddr),
        .ethernet_s_arburst(ethernet_s_arburst),
        .ethernet_s_arcache(ethernet_s_arcache),
        .ethernet_s_arid(ethernet_s_arid),
        .ethernet_s_arlen(ethernet_s_arlen),
        .ethernet_s_arlock(ethernet_s_arlock),
        .ethernet_s_arprot(ethernet_s_arprot),
        .ethernet_s_arqos(ethernet_s_arqos),
        .ethernet_s_arready(ethernet_s_arready),
        .ethernet_s_arregion(ethernet_s_arregion),
        .ethernet_s_arsize(ethernet_s_arsize),
        .ethernet_s_arvalid(ethernet_s_arvalid),
        .ethernet_s_awaddr(ethernet_s_awaddr),
        .ethernet_s_awburst(ethernet_s_awburst),
        .ethernet_s_awcache(ethernet_s_awcache),
        .ethernet_s_awid(ethernet_s_awid),
        .ethernet_s_awlen(ethernet_s_awlen),
        .ethernet_s_awlock(ethernet_s_awlock),
        .ethernet_s_awprot(ethernet_s_awprot),
        .ethernet_s_awqos(ethernet_s_awqos),
        .ethernet_s_awready(ethernet_s_awready),
        .ethernet_s_awregion(ethernet_s_awregion),
        .ethernet_s_awsize(ethernet_s_awsize),
        .ethernet_s_awvalid(ethernet_s_awvalid),
        .ethernet_s_bid(ethernet_s_bid),
        .ethernet_s_bready(ethernet_s_bready),
        .ethernet_s_bresp(ethernet_s_bresp),
        .ethernet_s_bvalid(ethernet_s_bvalid),
        .ethernet_s_rdata(ethernet_s_rdata),
        .ethernet_s_rid(ethernet_s_rid),
        .ethernet_s_rlast(ethernet_s_rlast),
        .ethernet_s_rready(ethernet_s_rready),
        .ethernet_s_rresp(ethernet_s_rresp),
        .ethernet_s_rvalid(ethernet_s_rvalid),
        .ethernet_s_wdata(ethernet_s_wdata),
        .ethernet_s_wlast(ethernet_s_wlast),
        .ethernet_s_wready(ethernet_s_wready),
        .ethernet_s_wstrb(ethernet_s_wstrb),
        .ethernet_s_wvalid(ethernet_s_wvalid),
        .hydra_S_araddr(hydra_S_araddr),
        .hydra_S_arburst(hydra_S_arburst),
        .hydra_S_arcache(hydra_S_arcache),
        .hydra_S_arid(hydra_S_arid),
        .hydra_S_arlen(hydra_S_arlen),
        .hydra_S_arlock(hydra_S_arlock),
        .hydra_S_arprot(hydra_S_arprot),
        .hydra_S_arqos(hydra_S_arqos),
        .hydra_S_arready(hydra_S_arready),
        .hydra_S_arregion(hydra_S_arregion),
        .hydra_S_arsize(hydra_S_arsize),
        .hydra_S_arvalid(hydra_S_arvalid),
        .hydra_S_awaddr(hydra_S_awaddr),
        .hydra_S_awburst(hydra_S_awburst),
        .hydra_S_awcache(hydra_S_awcache),
        .hydra_S_awid(hydra_S_awid),
        .hydra_S_awlen(hydra_S_awlen),
        .hydra_S_awlock(hydra_S_awlock),
        .hydra_S_awprot(hydra_S_awprot),
        .hydra_S_awqos(hydra_S_awqos),
        .hydra_S_awready(hydra_S_awready),
        .hydra_S_awregion(hydra_S_awregion),
        .hydra_S_awsize(hydra_S_awsize),
        .hydra_S_awvalid(hydra_S_awvalid),
        .hydra_S_bid(hydra_S_bid),
        .hydra_S_bready(hydra_S_bready),
        .hydra_S_bresp(hydra_S_bresp),
        .hydra_S_bvalid(hydra_S_bvalid),
        .hydra_S_rdata(hydra_S_rdata),
        .hydra_S_rid(hydra_S_rid),
        .hydra_S_rlast(hydra_S_rlast),
        .hydra_S_rready(hydra_S_rready),
        .hydra_S_rresp(hydra_S_rresp),
        .hydra_S_rvalid(hydra_S_rvalid),
        .hydra_S_wdata(hydra_S_wdata),
        .hydra_S_wlast(hydra_S_wlast),
        .hydra_S_wready(hydra_S_wready),
        .hydra_S_wstrb(hydra_S_wstrb),
        .hydra_S_wvalid(hydra_S_wvalid),
        .hydra_m_araddr(hydra_m_araddr),
        .hydra_m_arburst(hydra_m_arburst),
        .hydra_m_arcache(hydra_m_arcache),
        .hydra_m_arid(hydra_m_arid),
        .hydra_m_arlen(hydra_m_arlen),
        .hydra_m_arlock(hydra_m_arlock),
        .hydra_m_arprot(hydra_m_arprot),
        .hydra_m_arqos(hydra_m_arqos),
        .hydra_m_arready(hydra_m_arready),
        .hydra_m_arsize(hydra_m_arsize),
        .hydra_m_arvalid(hydra_m_arvalid),
        .hydra_m_awaddr(hydra_m_awaddr),
        .hydra_m_awburst(hydra_m_awburst),
        .hydra_m_awcache(hydra_m_awcache),
        .hydra_m_awid(hydra_m_awid),
        .hydra_m_awlen(hydra_m_awlen),
        .hydra_m_awlock(hydra_m_awlock),
        .hydra_m_awprot(hydra_m_awprot),
        .hydra_m_awqos(hydra_m_awqos),
        .hydra_m_awready(hydra_m_awready),
        .hydra_m_awsize(hydra_m_awsize),
        .hydra_m_awvalid(hydra_m_awvalid),
        .hydra_m_bid(hydra_m_bid),
        .hydra_m_bready(hydra_m_bready),
        .hydra_m_bresp(hydra_m_bresp),
        .hydra_m_bvalid(hydra_m_bvalid),
        .hydra_m_rdata(hydra_m_rdata),
        .hydra_m_rid(hydra_m_rid),
        .hydra_m_rlast(hydra_m_rlast),
        .hydra_m_rready(hydra_m_rready),
        .hydra_m_rresp(hydra_m_rresp),
        .hydra_m_rvalid(hydra_m_rvalid),
        .hydra_m_wdata(hydra_m_wdata),
        .hydra_m_wlast(hydra_m_wlast),
        .hydra_m_wready(hydra_m_wready),
        .hydra_m_wstrb(hydra_m_wstrb),
        .hydra_m_wvalid(hydra_m_wvalid),
        .interrupt_0(interrupt_0),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .xbar0_araddr(xbar0_araddr),
        .xbar0_arburst(xbar0_arburst),
        .xbar0_arcache(xbar0_arcache),
        .xbar0_arid(xbar0_arid),
        .xbar0_arlen(xbar0_arlen),
        .xbar0_arlock(xbar0_arlock),
        .xbar0_arprot(xbar0_arprot),
        .xbar0_arqos(xbar0_arqos),
        .xbar0_arready(xbar0_arready),
        .xbar0_arsize(xbar0_arsize),
        .xbar0_arvalid(xbar0_arvalid),
        .xbar0_awaddr(xbar0_awaddr),
        .xbar0_awburst(xbar0_awburst),
        .xbar0_awcache(xbar0_awcache),
        .xbar0_awid(xbar0_awid),
        .xbar0_awlen(xbar0_awlen),
        .xbar0_awlock(xbar0_awlock),
        .xbar0_awprot(xbar0_awprot),
        .xbar0_awqos(xbar0_awqos),
        .xbar0_awready(xbar0_awready),
        .xbar0_awsize(xbar0_awsize),
        .xbar0_awvalid(xbar0_awvalid),
        .xbar0_bid(xbar0_bid),
        .xbar0_bready(xbar0_bready),
        .xbar0_bresp(xbar0_bresp),
        .xbar0_bvalid(xbar0_bvalid),
        .xbar0_rdata(xbar0_rdata),
        .xbar0_rid(xbar0_rid),
        .xbar0_rlast(xbar0_rlast),
        .xbar0_rready(xbar0_rready),
        .xbar0_rresp(xbar0_rresp),
        .xbar0_rvalid(xbar0_rvalid),
        .xbar0_wdata(xbar0_wdata),
        .xbar0_wlast(xbar0_wlast),
        .xbar0_wready(xbar0_wready),
        .xbar0_wstrb(xbar0_wstrb),
        .xbar0_wvalid(xbar0_wvalid),
        .xbar1_araddr(xbar1_araddr),
        .xbar1_arburst(xbar1_arburst),
        .xbar1_arcache(xbar1_arcache),
        .xbar1_arid(xbar1_arid),
        .xbar1_arlen(xbar1_arlen),
        .xbar1_arlock(xbar1_arlock),
        .xbar1_arprot(xbar1_arprot),
        .xbar1_arqos(xbar1_arqos),
        .xbar1_arready(xbar1_arready),
        .xbar1_arregion(xbar1_arregion),
        .xbar1_arsize(xbar1_arsize),
        .xbar1_arvalid(xbar1_arvalid),
        .xbar1_awaddr(xbar1_awaddr),
        .xbar1_awburst(xbar1_awburst),
        .xbar1_awcache(xbar1_awcache),
        .xbar1_awid(xbar1_awid),
        .xbar1_awlen(xbar1_awlen),
        .xbar1_awlock(xbar1_awlock),
        .xbar1_awprot(xbar1_awprot),
        .xbar1_awqos(xbar1_awqos),
        .xbar1_awready(xbar1_awready),
        .xbar1_awregion(xbar1_awregion),
        .xbar1_awsize(xbar1_awsize),
        .xbar1_awvalid(xbar1_awvalid),
        .xbar1_bid(xbar1_bid),
        .xbar1_bready(xbar1_bready),
        .xbar1_bresp(xbar1_bresp),
        .xbar1_bvalid(xbar1_bvalid),
        .xbar1_rdata(xbar1_rdata),
        .xbar1_rid(xbar1_rid),
        .xbar1_rlast(xbar1_rlast),
        .xbar1_rready(xbar1_rready),
        .xbar1_rresp(xbar1_rresp),
        .xbar1_rvalid(xbar1_rvalid),
        .xbar1_wdata(xbar1_wdata),
        .xbar1_wlast(xbar1_wlast),
        .xbar1_wready(xbar1_wready),
        .xbar1_wstrb(xbar1_wstrb),
        .xbar1_wvalid(xbar1_wvalid));
endmodule
