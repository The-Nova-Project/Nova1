//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Tue Aug 16 19:39:18 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target nova_project.bd
//Design      : nova_project
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "nova_project,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=nova_project,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "nova_project.hwdef" *) 
module nova_project
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI_MTML, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M02_AXI_MTML_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARBURST" *) output [1:0]M02_AXI_MTML_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARCACHE" *) output [3:0]M02_AXI_MTML_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARID" *) output [4:0]M02_AXI_MTML_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARLEN" *) output [7:0]M02_AXI_MTML_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARLOCK" *) output [0:0]M02_AXI_MTML_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARPROT" *) output [2:0]M02_AXI_MTML_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARQOS" *) output [3:0]M02_AXI_MTML_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARREADY" *) input [0:0]M02_AXI_MTML_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARREGION" *) output [3:0]M02_AXI_MTML_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARSIZE" *) output [2:0]M02_AXI_MTML_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML ARVALID" *) output [0:0]M02_AXI_MTML_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWADDR" *) output [63:0]M02_AXI_MTML_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWBURST" *) output [1:0]M02_AXI_MTML_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWCACHE" *) output [3:0]M02_AXI_MTML_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWID" *) output [4:0]M02_AXI_MTML_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWLEN" *) output [7:0]M02_AXI_MTML_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWLOCK" *) output [0:0]M02_AXI_MTML_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWPROT" *) output [2:0]M02_AXI_MTML_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWQOS" *) output [3:0]M02_AXI_MTML_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWREADY" *) input [0:0]M02_AXI_MTML_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWREGION" *) output [3:0]M02_AXI_MTML_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWSIZE" *) output [2:0]M02_AXI_MTML_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML AWVALID" *) output [0:0]M02_AXI_MTML_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML BID" *) input [4:0]M02_AXI_MTML_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML BREADY" *) output [0:0]M02_AXI_MTML_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML BRESP" *) input [1:0]M02_AXI_MTML_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML BVALID" *) input [0:0]M02_AXI_MTML_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML RDATA" *) input [63:0]M02_AXI_MTML_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML RID" *) input [4:0]M02_AXI_MTML_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML RLAST" *) input [0:0]M02_AXI_MTML_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML RREADY" *) output [0:0]M02_AXI_MTML_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML RRESP" *) input [1:0]M02_AXI_MTML_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML RVALID" *) input [0:0]M02_AXI_MTML_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML WDATA" *) output [63:0]M02_AXI_MTML_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML WLAST" *) output [0:0]M02_AXI_MTML_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML WREADY" *) input [0:0]M02_AXI_MTML_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML WSTRB" *) output [7:0]M02_AXI_MTML_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_MTML WVALID" *) output [0:0]M02_AXI_MTML_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_AXI_DDR, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M03_AXI_DDR_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARBURST" *) output [1:0]M03_AXI_DDR_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARCACHE" *) output [3:0]M03_AXI_DDR_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARID" *) output [4:0]M03_AXI_DDR_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARLEN" *) output [7:0]M03_AXI_DDR_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARLOCK" *) output [0:0]M03_AXI_DDR_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARPROT" *) output [2:0]M03_AXI_DDR_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARQOS" *) output [3:0]M03_AXI_DDR_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARREADY" *) input [0:0]M03_AXI_DDR_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARREGION" *) output [3:0]M03_AXI_DDR_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARSIZE" *) output [2:0]M03_AXI_DDR_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR ARVALID" *) output [0:0]M03_AXI_DDR_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWADDR" *) output [63:0]M03_AXI_DDR_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWBURST" *) output [1:0]M03_AXI_DDR_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWCACHE" *) output [3:0]M03_AXI_DDR_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWID" *) output [4:0]M03_AXI_DDR_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWLEN" *) output [7:0]M03_AXI_DDR_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWLOCK" *) output [0:0]M03_AXI_DDR_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWPROT" *) output [2:0]M03_AXI_DDR_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWQOS" *) output [3:0]M03_AXI_DDR_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWREADY" *) input [0:0]M03_AXI_DDR_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWREGION" *) output [3:0]M03_AXI_DDR_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWSIZE" *) output [2:0]M03_AXI_DDR_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR AWVALID" *) output [0:0]M03_AXI_DDR_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR BID" *) input [4:0]M03_AXI_DDR_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR BREADY" *) output [0:0]M03_AXI_DDR_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR BRESP" *) input [1:0]M03_AXI_DDR_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR BVALID" *) input [0:0]M03_AXI_DDR_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR RDATA" *) input [63:0]M03_AXI_DDR_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR RID" *) input [4:0]M03_AXI_DDR_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR RLAST" *) input [0:0]M03_AXI_DDR_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR RREADY" *) output [0:0]M03_AXI_DDR_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR RRESP" *) input [1:0]M03_AXI_DDR_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR RVALID" *) input [0:0]M03_AXI_DDR_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR WDATA" *) output [63:0]M03_AXI_DDR_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR WLAST" *) output [0:0]M03_AXI_DDR_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR WREADY" *) input [0:0]M03_AXI_DDR_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR WSTRB" *) output [7:0]M03_AXI_DDR_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI_DDR WVALID" *) output [0:0]M03_AXI_DDR_wvalid;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI_MTML, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN nova_project_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 5, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S02_AXI_MTML_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARBURST" *) input [1:0]S02_AXI_MTML_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARCACHE" *) input [3:0]S02_AXI_MTML_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARID" *) input [4:0]S02_AXI_MTML_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARLEN" *) input [7:0]S02_AXI_MTML_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARLOCK" *) input [0:0]S02_AXI_MTML_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARPROT" *) input [2:0]S02_AXI_MTML_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARQOS" *) input [3:0]S02_AXI_MTML_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARREADY" *) output [0:0]S02_AXI_MTML_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARSIZE" *) input [2:0]S02_AXI_MTML_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML ARVALID" *) input [0:0]S02_AXI_MTML_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWADDR" *) input [63:0]S02_AXI_MTML_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWBURST" *) input [1:0]S02_AXI_MTML_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWCACHE" *) input [3:0]S02_AXI_MTML_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWID" *) input [4:0]S02_AXI_MTML_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWLEN" *) input [7:0]S02_AXI_MTML_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWLOCK" *) input [0:0]S02_AXI_MTML_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWPROT" *) input [2:0]S02_AXI_MTML_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWQOS" *) input [3:0]S02_AXI_MTML_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWREADY" *) output [0:0]S02_AXI_MTML_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWSIZE" *) input [2:0]S02_AXI_MTML_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML AWVALID" *) input [0:0]S02_AXI_MTML_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML BID" *) output [4:0]S02_AXI_MTML_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML BREADY" *) input [0:0]S02_AXI_MTML_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML BRESP" *) output [1:0]S02_AXI_MTML_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML BVALID" *) output [0:0]S02_AXI_MTML_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML RDATA" *) output [63:0]S02_AXI_MTML_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML RID" *) output [4:0]S02_AXI_MTML_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML RLAST" *) output [0:0]S02_AXI_MTML_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML RREADY" *) input [0:0]S02_AXI_MTML_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML RRESP" *) output [1:0]S02_AXI_MTML_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML RVALID" *) output [0:0]S02_AXI_MTML_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML WDATA" *) input [63:0]S02_AXI_MTML_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML WLAST" *) input [0:0]S02_AXI_MTML_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML WREADY" *) output [0:0]S02_AXI_MTML_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML WSTRB" *) input [7:0]S02_AXI_MTML_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_MTML WVALID" *) input [0:0]S02_AXI_MTML_wvalid;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 RxD" *) input UART_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 TxD" *) output UART_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF S_AXI_0:S01_AXI_0:S02_AXI_MTML:M02_AXI_MTML:M03_AXI_DDR, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN nova_project_s_axi_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
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
  wire [19:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
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
  wire [3:0]axi_crossbar_0_M00_AXI_ARREGION;
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
  wire [3:0]axi_crossbar_0_M00_AXI_AWREGION;
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
  wire [0:0]axi_crossbar_0_M02_AXI_ARREADY;
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
  wire [0:0]axi_crossbar_0_M02_AXI_AWREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_AWREGION;
  wire [8:6]axi_crossbar_0_M02_AXI_AWSIZE;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M02_AXI_BID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M02_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M02_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M02_AXI_RID;
  wire [0:0]axi_crossbar_0_M02_AXI_RLAST;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M02_AXI_RVALID;
  wire [191:128]axi_crossbar_0_M02_AXI_WDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_WLAST;
  wire [0:0]axi_crossbar_0_M02_AXI_WREADY;
  wire [23:16]axi_crossbar_0_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_ARADDR;
  wire [7:6]axi_crossbar_0_M03_AXI_ARBURST;
  wire [15:12]axi_crossbar_0_M03_AXI_ARCACHE;
  wire [19:15]axi_crossbar_0_M03_AXI_ARID;
  wire [31:24]axi_crossbar_0_M03_AXI_ARLEN;
  wire [3:3]axi_crossbar_0_M03_AXI_ARLOCK;
  wire [11:9]axi_crossbar_0_M03_AXI_ARPROT;
  wire axi_crossbar_0_M03_AXI_ARREADY;
  wire [11:9]axi_crossbar_0_M03_AXI_ARSIZE;
  wire [3:3]axi_crossbar_0_M03_AXI_ARVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_AWADDR;
  wire [7:6]axi_crossbar_0_M03_AXI_AWBURST;
  wire [15:12]axi_crossbar_0_M03_AXI_AWCACHE;
  wire [19:15]axi_crossbar_0_M03_AXI_AWID;
  wire [31:24]axi_crossbar_0_M03_AXI_AWLEN;
  wire [3:3]axi_crossbar_0_M03_AXI_AWLOCK;
  wire [11:9]axi_crossbar_0_M03_AXI_AWPROT;
  wire axi_crossbar_0_M03_AXI_AWREADY;
  wire [11:9]axi_crossbar_0_M03_AXI_AWSIZE;
  wire [3:3]axi_crossbar_0_M03_AXI_AWVALID;
  wire [4:0]axi_crossbar_0_M03_AXI_BID;
  wire [3:3]axi_crossbar_0_M03_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M03_AXI_BRESP;
  wire axi_crossbar_0_M03_AXI_BVALID;
  wire [63:0]axi_crossbar_0_M03_AXI_RDATA;
  wire [4:0]axi_crossbar_0_M03_AXI_RID;
  wire axi_crossbar_0_M03_AXI_RLAST;
  wire [3:3]axi_crossbar_0_M03_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M03_AXI_RRESP;
  wire axi_crossbar_0_M03_AXI_RVALID;
  wire [255:192]axi_crossbar_0_M03_AXI_WDATA;
  wire [3:3]axi_crossbar_0_M03_AXI_WLAST;
  wire axi_crossbar_0_M03_AXI_WREADY;
  wire [31:24]axi_crossbar_0_M03_AXI_WSTRB;
  wire [3:3]axi_crossbar_0_M03_AXI_WVALID;
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
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;
  wire [14:0]NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED;
  wire [14:0]NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED;

  assign M02_AXI_MTML_araddr[63:0] = axi_crossbar_0_M02_AXI_ARADDR;
  assign M02_AXI_MTML_arburst[1:0] = axi_crossbar_0_M02_AXI_ARBURST;
  assign M02_AXI_MTML_arcache[3:0] = axi_crossbar_0_M02_AXI_ARCACHE;
  assign M02_AXI_MTML_arid[4:0] = axi_crossbar_0_M02_AXI_ARID;
  assign M02_AXI_MTML_arlen[7:0] = axi_crossbar_0_M02_AXI_ARLEN;
  assign M02_AXI_MTML_arlock[0] = axi_crossbar_0_M02_AXI_ARLOCK;
  assign M02_AXI_MTML_arprot[2:0] = axi_crossbar_0_M02_AXI_ARPROT;
  assign M02_AXI_MTML_arqos[3:0] = axi_crossbar_0_M02_AXI_ARQOS;
  assign M02_AXI_MTML_arregion[3:0] = axi_crossbar_0_M02_AXI_ARREGION;
  assign M02_AXI_MTML_arsize[2:0] = axi_crossbar_0_M02_AXI_ARSIZE;
  assign M02_AXI_MTML_arvalid[0] = axi_crossbar_0_M02_AXI_ARVALID;
  assign M02_AXI_MTML_awaddr[63:0] = axi_crossbar_0_M02_AXI_AWADDR;
  assign M02_AXI_MTML_awburst[1:0] = axi_crossbar_0_M02_AXI_AWBURST;
  assign M02_AXI_MTML_awcache[3:0] = axi_crossbar_0_M02_AXI_AWCACHE;
  assign M02_AXI_MTML_awid[4:0] = axi_crossbar_0_M02_AXI_AWID;
  assign M02_AXI_MTML_awlen[7:0] = axi_crossbar_0_M02_AXI_AWLEN;
  assign M02_AXI_MTML_awlock[0] = axi_crossbar_0_M02_AXI_AWLOCK;
  assign M02_AXI_MTML_awprot[2:0] = axi_crossbar_0_M02_AXI_AWPROT;
  assign M02_AXI_MTML_awqos[3:0] = axi_crossbar_0_M02_AXI_AWQOS;
  assign M02_AXI_MTML_awregion[3:0] = axi_crossbar_0_M02_AXI_AWREGION;
  assign M02_AXI_MTML_awsize[2:0] = axi_crossbar_0_M02_AXI_AWSIZE;
  assign M02_AXI_MTML_awvalid[0] = axi_crossbar_0_M02_AXI_AWVALID;
  assign M02_AXI_MTML_bready[0] = axi_crossbar_0_M02_AXI_BREADY;
  assign M02_AXI_MTML_rready[0] = axi_crossbar_0_M02_AXI_RREADY;
  assign M02_AXI_MTML_wdata[63:0] = axi_crossbar_0_M02_AXI_WDATA;
  assign M02_AXI_MTML_wlast[0] = axi_crossbar_0_M02_AXI_WLAST;
  assign M02_AXI_MTML_wstrb[7:0] = axi_crossbar_0_M02_AXI_WSTRB;
  assign M02_AXI_MTML_wvalid[0] = axi_crossbar_0_M02_AXI_WVALID;
  assign M03_AXI_DDR_araddr[63:0] = axi_crossbar_0_M00_AXI_ARADDR;
  assign M03_AXI_DDR_arburst[1:0] = axi_crossbar_0_M00_AXI_ARBURST;
  assign M03_AXI_DDR_arcache[3:0] = axi_crossbar_0_M00_AXI_ARCACHE;
  assign M03_AXI_DDR_arid[4:0] = axi_crossbar_0_M00_AXI_ARID;
  assign M03_AXI_DDR_arlen[7:0] = axi_crossbar_0_M00_AXI_ARLEN;
  assign M03_AXI_DDR_arlock[0] = axi_crossbar_0_M00_AXI_ARLOCK;
  assign M03_AXI_DDR_arprot[2:0] = axi_crossbar_0_M00_AXI_ARPROT;
  assign M03_AXI_DDR_arqos[3:0] = axi_crossbar_0_M00_AXI_ARQOS;
  assign M03_AXI_DDR_arregion[3:0] = axi_crossbar_0_M00_AXI_ARREGION;
  assign M03_AXI_DDR_arsize[2:0] = axi_crossbar_0_M00_AXI_ARSIZE;
  assign M03_AXI_DDR_arvalid[0] = axi_crossbar_0_M00_AXI_ARVALID;
  assign M03_AXI_DDR_awaddr[63:0] = axi_crossbar_0_M00_AXI_AWADDR;
  assign M03_AXI_DDR_awburst[1:0] = axi_crossbar_0_M00_AXI_AWBURST;
  assign M03_AXI_DDR_awcache[3:0] = axi_crossbar_0_M00_AXI_AWCACHE;
  assign M03_AXI_DDR_awid[4:0] = axi_crossbar_0_M00_AXI_AWID;
  assign M03_AXI_DDR_awlen[7:0] = axi_crossbar_0_M00_AXI_AWLEN;
  assign M03_AXI_DDR_awlock[0] = axi_crossbar_0_M00_AXI_AWLOCK;
  assign M03_AXI_DDR_awprot[2:0] = axi_crossbar_0_M00_AXI_AWPROT;
  assign M03_AXI_DDR_awqos[3:0] = axi_crossbar_0_M00_AXI_AWQOS;
  assign M03_AXI_DDR_awregion[3:0] = axi_crossbar_0_M00_AXI_AWREGION;
  assign M03_AXI_DDR_awsize[2:0] = axi_crossbar_0_M00_AXI_AWSIZE;
  assign M03_AXI_DDR_awvalid[0] = axi_crossbar_0_M00_AXI_AWVALID;
  assign M03_AXI_DDR_bready[0] = axi_crossbar_0_M00_AXI_BREADY;
  assign M03_AXI_DDR_rready[0] = axi_crossbar_0_M00_AXI_RREADY;
  assign M03_AXI_DDR_wdata[63:0] = axi_crossbar_0_M00_AXI_WDATA;
  assign M03_AXI_DDR_wlast[0] = axi_crossbar_0_M00_AXI_WLAST;
  assign M03_AXI_DDR_wstrb[7:0] = axi_crossbar_0_M00_AXI_WSTRB;
  assign M03_AXI_DDR_wvalid[0] = axi_crossbar_0_M00_AXI_WVALID;
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
  assign S02_AXI_0_1_ARADDR = S02_AXI_MTML_araddr[63:0];
  assign S02_AXI_0_1_ARBURST = S02_AXI_MTML_arburst[1:0];
  assign S02_AXI_0_1_ARCACHE = S02_AXI_MTML_arcache[3:0];
  assign S02_AXI_0_1_ARID = S02_AXI_MTML_arid[4:0];
  assign S02_AXI_0_1_ARLEN = S02_AXI_MTML_arlen[7:0];
  assign S02_AXI_0_1_ARLOCK = S02_AXI_MTML_arlock[0];
  assign S02_AXI_0_1_ARPROT = S02_AXI_MTML_arprot[2:0];
  assign S02_AXI_0_1_ARQOS = S02_AXI_MTML_arqos[3:0];
  assign S02_AXI_0_1_ARSIZE = S02_AXI_MTML_arsize[2:0];
  assign S02_AXI_0_1_ARVALID = S02_AXI_MTML_arvalid[0];
  assign S02_AXI_0_1_AWADDR = S02_AXI_MTML_awaddr[63:0];
  assign S02_AXI_0_1_AWBURST = S02_AXI_MTML_awburst[1:0];
  assign S02_AXI_0_1_AWCACHE = S02_AXI_MTML_awcache[3:0];
  assign S02_AXI_0_1_AWID = S02_AXI_MTML_awid[4:0];
  assign S02_AXI_0_1_AWLEN = S02_AXI_MTML_awlen[7:0];
  assign S02_AXI_0_1_AWLOCK = S02_AXI_MTML_awlock[0];
  assign S02_AXI_0_1_AWPROT = S02_AXI_MTML_awprot[2:0];
  assign S02_AXI_0_1_AWQOS = S02_AXI_MTML_awqos[3:0];
  assign S02_AXI_0_1_AWSIZE = S02_AXI_MTML_awsize[2:0];
  assign S02_AXI_0_1_AWVALID = S02_AXI_MTML_awvalid[0];
  assign S02_AXI_0_1_BREADY = S02_AXI_MTML_bready[0];
  assign S02_AXI_0_1_RREADY = S02_AXI_MTML_rready[0];
  assign S02_AXI_0_1_WDATA = S02_AXI_MTML_wdata[63:0];
  assign S02_AXI_0_1_WLAST = S02_AXI_MTML_wlast[0];
  assign S02_AXI_0_1_WSTRB = S02_AXI_MTML_wstrb[7:0];
  assign S02_AXI_0_1_WVALID = S02_AXI_MTML_wvalid[0];
  assign S02_AXI_MTML_arready[0] = S02_AXI_0_1_ARREADY;
  assign S02_AXI_MTML_awready[0] = S02_AXI_0_1_AWREADY;
  assign S02_AXI_MTML_bid[4:0] = S02_AXI_0_1_BID;
  assign S02_AXI_MTML_bresp[1:0] = S02_AXI_0_1_BRESP;
  assign S02_AXI_MTML_bvalid[0] = S02_AXI_0_1_BVALID;
  assign S02_AXI_MTML_rdata[63:0] = S02_AXI_0_1_RDATA;
  assign S02_AXI_MTML_rid[4:0] = S02_AXI_0_1_RID;
  assign S02_AXI_MTML_rlast[0] = S02_AXI_0_1_RLAST;
  assign S02_AXI_MTML_rresp[1:0] = S02_AXI_0_1_RRESP;
  assign S02_AXI_MTML_rvalid[0] = S02_AXI_0_1_RVALID;
  assign S02_AXI_MTML_wready[0] = S02_AXI_0_1_WREADY;
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
  assign UART_0_txd = axi_uartlite_0_UART_TxD;
  assign axi_crossbar_0_M00_AXI_ARREADY = M03_AXI_DDR_arready[0];
  assign axi_crossbar_0_M00_AXI_AWREADY = M03_AXI_DDR_awready[0];
  assign axi_crossbar_0_M00_AXI_BID = M03_AXI_DDR_bid[4:0];
  assign axi_crossbar_0_M00_AXI_BRESP = M03_AXI_DDR_bresp[1:0];
  assign axi_crossbar_0_M00_AXI_BVALID = M03_AXI_DDR_bvalid[0];
  assign axi_crossbar_0_M00_AXI_RDATA = M03_AXI_DDR_rdata[63:0];
  assign axi_crossbar_0_M00_AXI_RID = M03_AXI_DDR_rid[4:0];
  assign axi_crossbar_0_M00_AXI_RLAST = M03_AXI_DDR_rlast[0];
  assign axi_crossbar_0_M00_AXI_RRESP = M03_AXI_DDR_rresp[1:0];
  assign axi_crossbar_0_M00_AXI_RVALID = M03_AXI_DDR_rvalid[0];
  assign axi_crossbar_0_M00_AXI_WREADY = M03_AXI_DDR_wready[0];
  assign axi_crossbar_0_M02_AXI_ARREADY = M02_AXI_MTML_arready[0];
  assign axi_crossbar_0_M02_AXI_AWREADY = M02_AXI_MTML_awready[0];
  assign axi_crossbar_0_M02_AXI_BID = M02_AXI_MTML_bid[4:0];
  assign axi_crossbar_0_M02_AXI_BRESP = M02_AXI_MTML_bresp[1:0];
  assign axi_crossbar_0_M02_AXI_BVALID = M02_AXI_MTML_bvalid[0];
  assign axi_crossbar_0_M02_AXI_RDATA = M02_AXI_MTML_rdata[63:0];
  assign axi_crossbar_0_M02_AXI_RID = M02_AXI_MTML_rid[4:0];
  assign axi_crossbar_0_M02_AXI_RLAST = M02_AXI_MTML_rlast[0];
  assign axi_crossbar_0_M02_AXI_RRESP = M02_AXI_MTML_rresp[1:0];
  assign axi_crossbar_0_M02_AXI_RVALID = M02_AXI_MTML_rvalid[0];
  assign axi_crossbar_0_M02_AXI_WREADY = M02_AXI_MTML_wready[0];
  assign axi_uartlite_0_UART_RxD = UART_0_rxd;
  assign interrupt_0 = axi_uartlite_0_interrupt;
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
        .s_axi_araddr(axi_crossbar_0_M03_AXI_ARADDR[211:192]),
        .s_axi_arburst(axi_crossbar_0_M03_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M03_AXI_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid(axi_crossbar_0_M03_AXI_ARID),
        .s_axi_arlen(axi_crossbar_0_M03_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M03_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M03_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_0_M03_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_0_M03_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M03_AXI_AWADDR[211:192]),
        .s_axi_awburst(axi_crossbar_0_M03_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M03_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_0_M03_AXI_AWID),
        .s_axi_awlen(axi_crossbar_0_M03_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M03_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M03_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_0_M03_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_0_M03_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_0_M03_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_0_M03_AXI_BID),
        .s_axi_bready(axi_crossbar_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M03_AXI_RDATA),
        .s_axi_rid(axi_crossbar_0_M03_AXI_RID),
        .s_axi_rlast(axi_crossbar_0_M03_AXI_RLAST),
        .s_axi_rready(axi_crossbar_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M03_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_0_M03_AXI_WLAST),
        .s_axi_wready(axi_crossbar_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M03_AXI_WVALID));
  nova_project_axi_crossbar_0_2 axi_crossbar_0
       (.aclk(s_axi_aclk_0_1),
        .aresetn(s_axi_aresetn_0_1),
        .m_axi_araddr({axi_crossbar_0_M03_AXI_ARADDR,axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_0_M03_AXI_ARBURST,axi_crossbar_0_M02_AXI_ARBURST,axi_crossbar_0_M01_AXI_ARBURST,axi_crossbar_0_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_0_M03_AXI_ARCACHE,axi_crossbar_0_M02_AXI_ARCACHE,axi_crossbar_0_M01_AXI_ARCACHE,axi_crossbar_0_M00_AXI_ARCACHE}),
        .m_axi_arid({axi_crossbar_0_M03_AXI_ARID,axi_crossbar_0_M02_AXI_ARID,axi_crossbar_0_M01_AXI_ARID,axi_crossbar_0_M00_AXI_ARID}),
        .m_axi_arlen({axi_crossbar_0_M03_AXI_ARLEN,axi_crossbar_0_M02_AXI_ARLEN,axi_crossbar_0_M01_AXI_ARLEN,axi_crossbar_0_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_0_M03_AXI_ARLOCK,axi_crossbar_0_M02_AXI_ARLOCK,axi_crossbar_0_M01_AXI_ARLOCK,axi_crossbar_0_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_0_M03_AXI_ARPROT,axi_crossbar_0_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,axi_crossbar_0_M00_AXI_ARPROT}),
        .m_axi_arqos({axi_crossbar_0_M02_AXI_ARQOS,axi_crossbar_0_M01_AXI_ARQOS,axi_crossbar_0_M00_AXI_ARQOS}),
        .m_axi_arready({axi_crossbar_0_M03_AXI_ARREADY,axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arregion({axi_crossbar_0_M02_AXI_ARREGION,axi_crossbar_0_M01_AXI_ARREGION,axi_crossbar_0_M00_AXI_ARREGION}),
        .m_axi_arsize({axi_crossbar_0_M03_AXI_ARSIZE,axi_crossbar_0_M02_AXI_ARSIZE,axi_crossbar_0_M01_AXI_ARSIZE,axi_crossbar_0_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_0_M03_AXI_ARVALID,axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M03_AXI_AWADDR,axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_0_M03_AXI_AWBURST,axi_crossbar_0_M02_AXI_AWBURST,axi_crossbar_0_M01_AXI_AWBURST,axi_crossbar_0_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_0_M03_AXI_AWCACHE,axi_crossbar_0_M02_AXI_AWCACHE,axi_crossbar_0_M01_AXI_AWCACHE,axi_crossbar_0_M00_AXI_AWCACHE}),
        .m_axi_awid({axi_crossbar_0_M03_AXI_AWID,axi_crossbar_0_M02_AXI_AWID,axi_crossbar_0_M01_AXI_AWID,axi_crossbar_0_M00_AXI_AWID}),
        .m_axi_awlen({axi_crossbar_0_M03_AXI_AWLEN,axi_crossbar_0_M02_AXI_AWLEN,axi_crossbar_0_M01_AXI_AWLEN,axi_crossbar_0_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_0_M03_AXI_AWLOCK,axi_crossbar_0_M02_AXI_AWLOCK,axi_crossbar_0_M01_AXI_AWLOCK,axi_crossbar_0_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_0_M03_AXI_AWPROT,axi_crossbar_0_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,axi_crossbar_0_M00_AXI_AWPROT}),
        .m_axi_awqos({axi_crossbar_0_M02_AXI_AWQOS,axi_crossbar_0_M01_AXI_AWQOS,axi_crossbar_0_M00_AXI_AWQOS}),
        .m_axi_awready({axi_crossbar_0_M03_AXI_AWREADY,axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awregion({axi_crossbar_0_M02_AXI_AWREGION,axi_crossbar_0_M01_AXI_AWREGION,axi_crossbar_0_M00_AXI_AWREGION}),
        .m_axi_awsize({axi_crossbar_0_M03_AXI_AWSIZE,axi_crossbar_0_M02_AXI_AWSIZE,axi_crossbar_0_M01_AXI_AWSIZE,axi_crossbar_0_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_0_M03_AXI_AWVALID,axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bid({axi_crossbar_0_M03_AXI_BID,axi_crossbar_0_M02_AXI_BID,axi_crossbar_0_M01_AXI_BID,axi_crossbar_0_M00_AXI_BID}),
        .m_axi_bready({axi_crossbar_0_M03_AXI_BREADY,axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M03_AXI_BRESP,axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M03_AXI_BVALID,axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M03_AXI_RDATA,axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rid({axi_crossbar_0_M03_AXI_RID,axi_crossbar_0_M02_AXI_RID,axi_crossbar_0_M01_AXI_RID,axi_crossbar_0_M00_AXI_RID}),
        .m_axi_rlast({axi_crossbar_0_M03_AXI_RLAST,axi_crossbar_0_M02_AXI_RLAST,axi_crossbar_0_M01_AXI_RLAST,axi_crossbar_0_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_0_M03_AXI_RREADY,axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M03_AXI_RRESP,axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M03_AXI_RVALID,axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M03_AXI_WDATA,axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_0_M03_AXI_WLAST,axi_crossbar_0_M02_AXI_WLAST,axi_crossbar_0_M01_AXI_WLAST,axi_crossbar_0_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_0_M03_AXI_WREADY,axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M03_AXI_WSTRB,axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M03_AXI_WVALID,axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr({S02_AXI_0_1_ARADDR,S01_AXI_0_1_ARADDR,axi_protocol_convert_0_M_AXI_ARADDR}),
        .s_axi_arburst({S02_AXI_0_1_ARBURST,S01_AXI_0_1_ARBURST,axi_protocol_convert_0_M_AXI_ARBURST}),
        .s_axi_arcache({S02_AXI_0_1_ARCACHE,S01_AXI_0_1_ARCACHE,axi_protocol_convert_0_M_AXI_ARCACHE}),
        .s_axi_arid({S02_AXI_0_1_ARID,S01_AXI_0_1_ARID,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({S02_AXI_0_1_ARLEN,S01_AXI_0_1_ARLEN,axi_protocol_convert_0_M_AXI_ARLEN}),
        .s_axi_arlock({S02_AXI_0_1_ARLOCK,S01_AXI_0_1_ARLOCK,axi_protocol_convert_0_M_AXI_ARLOCK}),
        .s_axi_arprot({S02_AXI_0_1_ARPROT,S01_AXI_0_1_ARPROT,axi_protocol_convert_0_M_AXI_ARPROT}),
        .s_axi_arqos({S02_AXI_0_1_ARQOS,S01_AXI_0_1_ARQOS,axi_protocol_convert_0_M_AXI_ARQOS}),
        .s_axi_arready({S02_AXI_0_1_ARREADY,S01_AXI_0_1_ARREADY,axi_protocol_convert_0_M_AXI_ARREADY}),
        .s_axi_arsize({S02_AXI_0_1_ARSIZE,S01_AXI_0_1_ARSIZE,axi_protocol_convert_0_M_AXI_ARSIZE}),
        .s_axi_arvalid({S02_AXI_0_1_ARVALID,S01_AXI_0_1_ARVALID,axi_protocol_convert_0_M_AXI_ARVALID}),
        .s_axi_awaddr({S02_AXI_0_1_AWADDR,S01_AXI_0_1_AWADDR,axi_protocol_convert_0_M_AXI_AWADDR}),
        .s_axi_awburst({S02_AXI_0_1_AWBURST,S01_AXI_0_1_AWBURST,axi_protocol_convert_0_M_AXI_AWBURST}),
        .s_axi_awcache({S02_AXI_0_1_AWCACHE,S01_AXI_0_1_AWCACHE,axi_protocol_convert_0_M_AXI_AWCACHE}),
        .s_axi_awid({S02_AXI_0_1_AWID,S01_AXI_0_1_AWID,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({S02_AXI_0_1_AWLEN,S01_AXI_0_1_AWLEN,axi_protocol_convert_0_M_AXI_AWLEN}),
        .s_axi_awlock({S02_AXI_0_1_AWLOCK,S01_AXI_0_1_AWLOCK,axi_protocol_convert_0_M_AXI_AWLOCK}),
        .s_axi_awprot({S02_AXI_0_1_AWPROT,S01_AXI_0_1_AWPROT,axi_protocol_convert_0_M_AXI_AWPROT}),
        .s_axi_awqos({S02_AXI_0_1_AWQOS,S01_AXI_0_1_AWQOS,axi_protocol_convert_0_M_AXI_AWQOS}),
        .s_axi_awready({S02_AXI_0_1_AWREADY,S01_AXI_0_1_AWREADY,axi_protocol_convert_0_M_AXI_AWREADY}),
        .s_axi_awsize({S02_AXI_0_1_AWSIZE,S01_AXI_0_1_AWSIZE,axi_protocol_convert_0_M_AXI_AWSIZE}),
        .s_axi_awvalid({S02_AXI_0_1_AWVALID,S01_AXI_0_1_AWVALID,axi_protocol_convert_0_M_AXI_AWVALID}),
        .s_axi_bid({S02_AXI_0_1_BID,S01_AXI_0_1_BID,NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED[4:0]}),
        .s_axi_bready({S02_AXI_0_1_BREADY,S01_AXI_0_1_BREADY,axi_protocol_convert_0_M_AXI_BREADY}),
        .s_axi_bresp({S02_AXI_0_1_BRESP,S01_AXI_0_1_BRESP,axi_protocol_convert_0_M_AXI_BRESP}),
        .s_axi_bvalid({S02_AXI_0_1_BVALID,S01_AXI_0_1_BVALID,axi_protocol_convert_0_M_AXI_BVALID}),
        .s_axi_rdata({S02_AXI_0_1_RDATA,S01_AXI_0_1_RDATA,axi_protocol_convert_0_M_AXI_RDATA}),
        .s_axi_rid({S02_AXI_0_1_RID,S01_AXI_0_1_RID,NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED[4:0]}),
        .s_axi_rlast({S02_AXI_0_1_RLAST,S01_AXI_0_1_RLAST,axi_protocol_convert_0_M_AXI_RLAST}),
        .s_axi_rready({S02_AXI_0_1_RREADY,S01_AXI_0_1_RREADY,axi_protocol_convert_0_M_AXI_RREADY}),
        .s_axi_rresp({S02_AXI_0_1_RRESP,S01_AXI_0_1_RRESP,axi_protocol_convert_0_M_AXI_RRESP}),
        .s_axi_rvalid({S02_AXI_0_1_RVALID,S01_AXI_0_1_RVALID,axi_protocol_convert_0_M_AXI_RVALID}),
        .s_axi_wdata({S02_AXI_0_1_WDATA,S01_AXI_0_1_WDATA,axi_protocol_convert_0_M_AXI_WDATA}),
        .s_axi_wlast({S02_AXI_0_1_WLAST,S01_AXI_0_1_WLAST,axi_protocol_convert_0_M_AXI_WLAST}),
        .s_axi_wready({S02_AXI_0_1_WREADY,S01_AXI_0_1_WREADY,axi_protocol_convert_0_M_AXI_WREADY}),
        .s_axi_wstrb({S02_AXI_0_1_WSTRB,S01_AXI_0_1_WSTRB,axi_protocol_convert_0_M_AXI_WSTRB}),
        .s_axi_wvalid({S02_AXI_0_1_WVALID,S01_AXI_0_1_WVALID,axi_protocol_convert_0_M_AXI_WVALID}));
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
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR),
        .s_axi_arburst(axi_crossbar_0_M01_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M01_AXI_ARCACHE),
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
  nova_project_axi_uartlite_0_0 axi_uartlite_0
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
  nova_project_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
endmodule
