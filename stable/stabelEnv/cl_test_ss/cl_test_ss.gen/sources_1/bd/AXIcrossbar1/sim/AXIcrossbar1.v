//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Apr  4 18:53:49 2022
//Host        : ip-172-32-20-153.ap-southeast-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target AXIcrossbar1.bd
//Design      : AXIcrossbar1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "AXIcrossbar1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXIcrossbar1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "AXIcrossbar1.hwdef" *) 
module AXIcrossbar1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BAR1_AXIL_32, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]BAR1_AXIL_32_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 ARPROT" *) input [2:0]BAR1_AXIL_32_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 ARREADY" *) output BAR1_AXIL_32_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 ARVALID" *) input BAR1_AXIL_32_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 AWADDR" *) input [63:0]BAR1_AXIL_32_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 AWPROT" *) input [2:0]BAR1_AXIL_32_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 AWREADY" *) output BAR1_AXIL_32_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 AWVALID" *) input BAR1_AXIL_32_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 BREADY" *) input BAR1_AXIL_32_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 BRESP" *) output [1:0]BAR1_AXIL_32_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 BVALID" *) output BAR1_AXIL_32_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 RDATA" *) output [31:0]BAR1_AXIL_32_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 RREADY" *) input BAR1_AXIL_32_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 RRESP" *) output [1:0]BAR1_AXIL_32_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 RVALID" *) output BAR1_AXIL_32_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 WDATA" *) input [31:0]BAR1_AXIL_32_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 WREADY" *) output BAR1_AXIL_32_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 WSTRB" *) input [3:0]BAR1_AXIL_32_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BAR1_AXIL_32 WVALID" *) input BAR1_AXIL_32_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_ADDR_512_64, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]DDR_ADDR_512_64_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARBURST" *) input [1:0]DDR_ADDR_512_64_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARCACHE" *) input [3:0]DDR_ADDR_512_64_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARID" *) input [15:0]DDR_ADDR_512_64_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARLEN" *) input [7:0]DDR_ADDR_512_64_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARLOCK" *) input [0:0]DDR_ADDR_512_64_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARPROT" *) input [2:0]DDR_ADDR_512_64_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARQOS" *) input [3:0]DDR_ADDR_512_64_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARREADY" *) output DDR_ADDR_512_64_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARREGION" *) input [3:0]DDR_ADDR_512_64_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARSIZE" *) input [2:0]DDR_ADDR_512_64_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 ARVALID" *) input DDR_ADDR_512_64_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWADDR" *) input [63:0]DDR_ADDR_512_64_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWBURST" *) input [1:0]DDR_ADDR_512_64_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWCACHE" *) input [3:0]DDR_ADDR_512_64_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWID" *) input [15:0]DDR_ADDR_512_64_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWLEN" *) input [7:0]DDR_ADDR_512_64_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWLOCK" *) input [0:0]DDR_ADDR_512_64_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWPROT" *) input [2:0]DDR_ADDR_512_64_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWQOS" *) input [3:0]DDR_ADDR_512_64_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWREADY" *) output DDR_ADDR_512_64_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWREGION" *) input [3:0]DDR_ADDR_512_64_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWSIZE" *) input [2:0]DDR_ADDR_512_64_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 AWVALID" *) input DDR_ADDR_512_64_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 BID" *) output [15:0]DDR_ADDR_512_64_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 BREADY" *) input DDR_ADDR_512_64_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 BRESP" *) output [1:0]DDR_ADDR_512_64_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 BVALID" *) output DDR_ADDR_512_64_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 RDATA" *) output [63:0]DDR_ADDR_512_64_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 RID" *) output [15:0]DDR_ADDR_512_64_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 RLAST" *) output DDR_ADDR_512_64_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 RREADY" *) input DDR_ADDR_512_64_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 RRESP" *) output [1:0]DDR_ADDR_512_64_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 RVALID" *) output DDR_ADDR_512_64_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 WDATA" *) input [63:0]DDR_ADDR_512_64_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 WLAST" *) input DDR_ADDR_512_64_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 WREADY" *) output DDR_ADDR_512_64_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 WSTRB" *) input [7:0]DDR_ADDR_512_64_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_ADDR_512_64 WVALID" *) input DDR_ADDR_512_64_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR_AXI4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_AXI4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 512, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]DDR_AXI4_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DMA_PCIS_AXI4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DMA_PCIS_AXI4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 512, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]DMA_PCIS_AXI4_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M02_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 ARPROT" *) output [2:0]M02_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 ARREADY" *) input [0:0]M02_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 ARVALID" *) output [0:0]M02_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 AWADDR" *) output [31:0]M02_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 AWPROT" *) output [2:0]M02_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 AWREADY" *) input [0:0]M02_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 AWVALID" *) output [0:0]M02_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 BREADY" *) output [0:0]M02_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 BRESP" *) input [1:0]M02_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 BVALID" *) input [0:0]M02_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 RDATA" *) input [31:0]M02_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 RREADY" *) output [0:0]M02_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 RRESP" *) input [1:0]M02_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 RVALID" *) input [0:0]M02_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 WDATA" *) output [31:0]M02_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 WREADY" *) input [0:0]M02_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 WSTRB" *) output [3:0]M02_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI_0 WVALID" *) output [0:0]M02_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARBURST" *) output [1:0]M_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARCACHE" *) output [3:0]M_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARLEN" *) output [7:0]M_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARLOCK" *) output [0:0]M_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARPROT" *) output [2:0]M_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARQOS" *) output [3:0]M_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARREADY" *) input M_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARREGION" *) output [3:0]M_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARSIZE" *) output [2:0]M_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARVALID" *) output M_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWADDR" *) output [63:0]M_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWBURST" *) output [1:0]M_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWCACHE" *) output [3:0]M_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWLEN" *) output [7:0]M_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWLOCK" *) output [0:0]M_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWPROT" *) output [2:0]M_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWQOS" *) output [3:0]M_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWREADY" *) input M_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWREGION" *) output [3:0]M_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWSIZE" *) output [2:0]M_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWVALID" *) output M_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BREADY" *) output M_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BRESP" *) input [1:0]M_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BVALID" *) input M_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RDATA" *) input [63:0]M_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RLAST" *) input M_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RREADY" *) output M_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RRESP" *) input [1:0]M_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RVALID" *) input M_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WDATA" *) output [63:0]M_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WLAST" *) output M_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WREADY" *) input M_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WSTRB" *) output [7:0]M_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WVALID" *) output M_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OCL_AXIL_32, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]OCL_AXIL_32_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 ARPROT" *) input [2:0]OCL_AXIL_32_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 ARREADY" *) output [0:0]OCL_AXIL_32_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 ARVALID" *) input [0:0]OCL_AXIL_32_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 AWADDR" *) input [31:0]OCL_AXIL_32_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 AWPROT" *) input [2:0]OCL_AXIL_32_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 AWREADY" *) output [0:0]OCL_AXIL_32_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 AWVALID" *) input [0:0]OCL_AXIL_32_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 BREADY" *) input [0:0]OCL_AXIL_32_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 BRESP" *) output [1:0]OCL_AXIL_32_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 BVALID" *) output [0:0]OCL_AXIL_32_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 RDATA" *) output [31:0]OCL_AXIL_32_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 RREADY" *) input [0:0]OCL_AXIL_32_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 RRESP" *) output [1:0]OCL_AXIL_32_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 RVALID" *) output [0:0]OCL_AXIL_32_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 WDATA" *) input [31:0]OCL_AXIL_32_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 WREADY" *) output [0:0]OCL_AXIL_32_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 WSTRB" *) input [3:0]OCL_AXIL_32_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 OCL_AXIL_32 WVALID" *) input [0:0]OCL_AXIL_32_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_1 RxD" *) input UART_1_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_1 TxD" *) output UART_1_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF test_status:OCL_AXIL_32:DMA_PCIS_AXI4:DDR_ADDR_512_64:M02_AXI_0:M_AXI_0:BAR1_AXIL_32:DDR_AXI4, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN AXIcrossbar1_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_1, PortWidth 1, SENSITIVITY EDGE_RISING" *) output interrupt_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_status, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN AXIcrossbar1_aclk_0, DATA_WIDTH 32, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]test_status_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status ARPROT" *) output [2:0]test_status_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status ARREADY" *) input [0:0]test_status_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status ARVALID" *) output [0:0]test_status_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status AWADDR" *) output [31:0]test_status_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status AWPROT" *) output [2:0]test_status_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status AWREADY" *) input [0:0]test_status_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status AWVALID" *) output [0:0]test_status_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status BREADY" *) output [0:0]test_status_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status BRESP" *) input [1:0]test_status_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status BVALID" *) input [0:0]test_status_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status RDATA" *) input [31:0]test_status_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status RREADY" *) output [0:0]test_status_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status RRESP" *) input [1:0]test_status_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status RVALID" *) input [0:0]test_status_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status WDATA" *) output [31:0]test_status_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status WREADY" *) input [0:0]test_status_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status WSTRB" *) output [3:0]test_status_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 test_status WVALID" *) output [0:0]test_status_wvalid;

  wire [63:0]DDR_ADDR_512_64_1_ARADDR;
  wire [1:0]DDR_ADDR_512_64_1_ARBURST;
  wire [3:0]DDR_ADDR_512_64_1_ARCACHE;
  wire [15:0]DDR_ADDR_512_64_1_ARID;
  wire [7:0]DDR_ADDR_512_64_1_ARLEN;
  wire [0:0]DDR_ADDR_512_64_1_ARLOCK;
  wire [2:0]DDR_ADDR_512_64_1_ARPROT;
  wire [3:0]DDR_ADDR_512_64_1_ARQOS;
  wire DDR_ADDR_512_64_1_ARREADY;
  wire [3:0]DDR_ADDR_512_64_1_ARREGION;
  wire [2:0]DDR_ADDR_512_64_1_ARSIZE;
  wire DDR_ADDR_512_64_1_ARVALID;
  wire [63:0]DDR_ADDR_512_64_1_AWADDR;
  wire [1:0]DDR_ADDR_512_64_1_AWBURST;
  wire [3:0]DDR_ADDR_512_64_1_AWCACHE;
  wire [15:0]DDR_ADDR_512_64_1_AWID;
  wire [7:0]DDR_ADDR_512_64_1_AWLEN;
  wire [0:0]DDR_ADDR_512_64_1_AWLOCK;
  wire [2:0]DDR_ADDR_512_64_1_AWPROT;
  wire [3:0]DDR_ADDR_512_64_1_AWQOS;
  wire DDR_ADDR_512_64_1_AWREADY;
  wire [3:0]DDR_ADDR_512_64_1_AWREGION;
  wire [2:0]DDR_ADDR_512_64_1_AWSIZE;
  wire DDR_ADDR_512_64_1_AWVALID;
  wire [15:0]DDR_ADDR_512_64_1_BID;
  wire DDR_ADDR_512_64_1_BREADY;
  wire [1:0]DDR_ADDR_512_64_1_BRESP;
  wire DDR_ADDR_512_64_1_BVALID;
  wire [63:0]DDR_ADDR_512_64_1_RDATA;
  wire [15:0]DDR_ADDR_512_64_1_RID;
  wire DDR_ADDR_512_64_1_RLAST;
  wire DDR_ADDR_512_64_1_RREADY;
  wire [1:0]DDR_ADDR_512_64_1_RRESP;
  wire DDR_ADDR_512_64_1_RVALID;
  wire [63:0]DDR_ADDR_512_64_1_WDATA;
  wire DDR_ADDR_512_64_1_WLAST;
  wire DDR_ADDR_512_64_1_WREADY;
  wire [7:0]DDR_ADDR_512_64_1_WSTRB;
  wire DDR_ADDR_512_64_1_WVALID;
  wire [31:0]OCL_AXIL_32_ARADDR;
  wire [2:0]OCL_AXIL_32_ARPROT;
  wire [0:0]OCL_AXIL_32_ARREADY;
  wire [0:0]OCL_AXIL_32_ARVALID;
  wire [31:0]OCL_AXIL_32_AWADDR;
  wire [2:0]OCL_AXIL_32_AWPROT;
  wire [0:0]OCL_AXIL_32_AWREADY;
  wire [0:0]OCL_AXIL_32_AWVALID;
  wire [0:0]OCL_AXIL_32_BREADY;
  wire [1:0]OCL_AXIL_32_BRESP;
  wire [0:0]OCL_AXIL_32_BVALID;
  wire [31:0]OCL_AXIL_32_RDATA;
  wire [0:0]OCL_AXIL_32_RREADY;
  wire [1:0]OCL_AXIL_32_RRESP;
  wire [0:0]OCL_AXIL_32_RVALID;
  wire [31:0]OCL_AXIL_32_WDATA;
  wire [0:0]OCL_AXIL_32_WREADY;
  wire [3:0]OCL_AXIL_32_WSTRB;
  wire [0:0]OCL_AXIL_32_WVALID;
  wire [63:0]S00_AXI_1_1_ARADDR;
  wire [1:0]S00_AXI_1_1_ARBURST;
  wire [3:0]S00_AXI_1_1_ARCACHE;
  wire [15:0]S00_AXI_1_1_ARID;
  wire [7:0]S00_AXI_1_1_ARLEN;
  wire [0:0]S00_AXI_1_1_ARLOCK;
  wire [2:0]S00_AXI_1_1_ARPROT;
  wire [3:0]S00_AXI_1_1_ARQOS;
  wire [0:0]S00_AXI_1_1_ARREADY;
  wire [2:0]S00_AXI_1_1_ARSIZE;
  wire [0:0]S00_AXI_1_1_ARVALID;
  wire [63:0]S00_AXI_1_1_AWADDR;
  wire [1:0]S00_AXI_1_1_AWBURST;
  wire [3:0]S00_AXI_1_1_AWCACHE;
  wire [15:0]S00_AXI_1_1_AWID;
  wire [7:0]S00_AXI_1_1_AWLEN;
  wire [0:0]S00_AXI_1_1_AWLOCK;
  wire [2:0]S00_AXI_1_1_AWPROT;
  wire [3:0]S00_AXI_1_1_AWQOS;
  wire [0:0]S00_AXI_1_1_AWREADY;
  wire [2:0]S00_AXI_1_1_AWSIZE;
  wire [0:0]S00_AXI_1_1_AWVALID;
  wire [15:0]S00_AXI_1_1_BID;
  wire [0:0]S00_AXI_1_1_BREADY;
  wire [1:0]S00_AXI_1_1_BRESP;
  wire [0:0]S00_AXI_1_1_BVALID;
  wire [511:0]S00_AXI_1_1_RDATA;
  wire [15:0]S00_AXI_1_1_RID;
  wire [0:0]S00_AXI_1_1_RLAST;
  wire [0:0]S00_AXI_1_1_RREADY;
  wire [1:0]S00_AXI_1_1_RRESP;
  wire [0:0]S00_AXI_1_1_RVALID;
  wire [511:0]S00_AXI_1_1_WDATA;
  wire [0:0]S00_AXI_1_1_WLAST;
  wire [0:0]S00_AXI_1_1_WREADY;
  wire [63:0]S00_AXI_1_1_WSTRB;
  wire [0:0]S00_AXI_1_1_WVALID;
  wire [63:0]S_AXI_0_2_ARADDR;
  wire [2:0]S_AXI_0_2_ARPROT;
  wire S_AXI_0_2_ARREADY;
  wire S_AXI_0_2_ARVALID;
  wire [63:0]S_AXI_0_2_AWADDR;
  wire [2:0]S_AXI_0_2_AWPROT;
  wire S_AXI_0_2_AWREADY;
  wire S_AXI_0_2_AWVALID;
  wire S_AXI_0_2_BREADY;
  wire [1:0]S_AXI_0_2_BRESP;
  wire S_AXI_0_2_BVALID;
  wire [31:0]S_AXI_0_2_RDATA;
  wire S_AXI_0_2_RREADY;
  wire [1:0]S_AXI_0_2_RRESP;
  wire S_AXI_0_2_RVALID;
  wire [31:0]S_AXI_0_2_WDATA;
  wire S_AXI_0_2_WREADY;
  wire [3:0]S_AXI_0_2_WSTRB;
  wire S_AXI_0_2_WVALID;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [63:32]axi_crossbar_0_M01_AXI_ARADDR;
  wire [5:3]axi_crossbar_0_M01_AXI_ARPROT;
  wire [0:0]axi_crossbar_0_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_AWADDR;
  wire [5:3]axi_crossbar_0_M01_AXI_AWPROT;
  wire [0:0]axi_crossbar_0_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire [0:0]axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [31:0]axi_crossbar_2_M00_AXI_ARADDR;
  wire axi_crossbar_2_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_2_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_2_M00_AXI_AWADDR;
  wire axi_crossbar_2_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_2_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_2_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_2_M00_AXI_BRESP;
  wire axi_crossbar_2_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_2_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_2_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_2_M00_AXI_RRESP;
  wire axi_crossbar_2_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_2_M00_AXI_WDATA;
  wire axi_crossbar_2_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_2_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_2_M00_AXI_WVALID;
  wire [95:64]axi_crossbar_2_M02_AXI_ARADDR;
  wire [8:6]axi_crossbar_2_M02_AXI_ARPROT;
  wire [0:0]axi_crossbar_2_M02_AXI_ARREADY;
  wire [2:2]axi_crossbar_2_M02_AXI_ARVALID;
  wire [95:64]axi_crossbar_2_M02_AXI_AWADDR;
  wire [8:6]axi_crossbar_2_M02_AXI_AWPROT;
  wire [0:0]axi_crossbar_2_M02_AXI_AWREADY;
  wire [2:2]axi_crossbar_2_M02_AXI_AWVALID;
  wire [2:2]axi_crossbar_2_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_2_M02_AXI_BRESP;
  wire [0:0]axi_crossbar_2_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_2_M02_AXI_RDATA;
  wire [2:2]axi_crossbar_2_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_2_M02_AXI_RRESP;
  wire [0:0]axi_crossbar_2_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_2_M02_AXI_WDATA;
  wire [0:0]axi_crossbar_2_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_2_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_2_M02_AXI_WVALID;
  wire [63:0]axi_crossbar_3_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_3_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_3_M00_AXI_ARCACHE;
  wire [15:0]axi_crossbar_3_M00_AXI_ARID;
  wire [7:0]axi_crossbar_3_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_3_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_3_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_3_M00_AXI_ARQOS;
  wire [0:0]axi_crossbar_3_M00_AXI_ARREADY;
  wire [3:0]axi_crossbar_3_M00_AXI_ARREGION;
  wire [2:0]axi_crossbar_3_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_3_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_3_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_3_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_3_M00_AXI_AWCACHE;
  wire [15:0]axi_crossbar_3_M00_AXI_AWID;
  wire [7:0]axi_crossbar_3_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_3_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_3_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_3_M00_AXI_AWQOS;
  wire [0:0]axi_crossbar_3_M00_AXI_AWREADY;
  wire [3:0]axi_crossbar_3_M00_AXI_AWREGION;
  wire [2:0]axi_crossbar_3_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_3_M00_AXI_AWVALID;
  wire [15:0]axi_crossbar_3_M00_AXI_BID;
  wire [0:0]axi_crossbar_3_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_3_M00_AXI_BRESP;
  wire [0:0]axi_crossbar_3_M00_AXI_BVALID;
  wire [511:0]axi_crossbar_3_M00_AXI_RDATA;
  wire [15:0]axi_crossbar_3_M00_AXI_RID;
  wire [0:0]axi_crossbar_3_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_3_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_3_M00_AXI_RRESP;
  wire [0:0]axi_crossbar_3_M00_AXI_RVALID;
  wire [511:0]axi_crossbar_3_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_3_M00_AXI_WLAST;
  wire [0:0]axi_crossbar_3_M00_AXI_WREADY;
  wire [63:0]axi_crossbar_3_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_3_M00_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARQOS;
  wire [1:1]axi_dwidth_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARSIZE;
  wire axi_dwidth_converter_0_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWQOS;
  wire [1:1]axi_dwidth_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWSIZE;
  wire axi_dwidth_converter_0_M_AXI_AWVALID;
  wire axi_dwidth_converter_0_M_AXI_BREADY;
  wire [3:2]axi_dwidth_converter_0_M_AXI_BRESP;
  wire [1:1]axi_dwidth_converter_0_M_AXI_BVALID;
  wire [1023:512]axi_dwidth_converter_0_M_AXI_RDATA;
  wire [1:1]axi_dwidth_converter_0_M_AXI_RLAST;
  wire axi_dwidth_converter_0_M_AXI_RREADY;
  wire [3:2]axi_dwidth_converter_0_M_AXI_RRESP;
  wire [1:1]axi_dwidth_converter_0_M_AXI_RVALID;
  wire [511:0]axi_dwidth_converter_0_M_AXI_WDATA;
  wire axi_dwidth_converter_0_M_AXI_WLAST;
  wire [1:1]axi_dwidth_converter_0_M_AXI_WREADY;
  wire [63:0]axi_dwidth_converter_0_M_AXI_WSTRB;
  wire axi_dwidth_converter_0_M_AXI_WVALID;
  wire [63:0]axi_dwidth_converter_1_M_AXI_ARADDR;
  wire [2:0]axi_dwidth_converter_1_M_AXI_ARPROT;
  wire axi_dwidth_converter_1_M_AXI_ARREADY;
  wire axi_dwidth_converter_1_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_1_M_AXI_AWADDR;
  wire [2:0]axi_dwidth_converter_1_M_AXI_AWPROT;
  wire axi_dwidth_converter_1_M_AXI_AWREADY;
  wire axi_dwidth_converter_1_M_AXI_AWVALID;
  wire axi_dwidth_converter_1_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_1_M_AXI_BRESP;
  wire axi_dwidth_converter_1_M_AXI_BVALID;
  wire [63:0]axi_dwidth_converter_1_M_AXI_RDATA;
  wire axi_dwidth_converter_1_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_1_M_AXI_RRESP;
  wire axi_dwidth_converter_1_M_AXI_RVALID;
  wire [63:0]axi_dwidth_converter_1_M_AXI_WDATA;
  wire axi_dwidth_converter_1_M_AXI_WREADY;
  wire [7:0]axi_dwidth_converter_1_M_AXI_WSTRB;
  wire axi_dwidth_converter_1_M_AXI_WVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_ARBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_ARLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_ARLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARQOS;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARREGION;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARSIZE;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_AWBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_AWLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_AWLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWQOS;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWREGION;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWSIZE;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RLAST;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WLAST;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [7:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_1_UART_RxD;
  wire axi_uartlite_1_UART_TxD;
  wire [8:0]NLW_axi_crossbar_2_m_axi_arprot_UNCONNECTED;
  wire [8:0]NLW_axi_crossbar_2_m_axi_awprot_UNCONNECTED;

  assign BAR1_AXIL_32_arready = S_AXI_0_2_ARREADY;
  assign BAR1_AXIL_32_awready = S_AXI_0_2_AWREADY;
  assign BAR1_AXIL_32_bresp[1:0] = S_AXI_0_2_BRESP;
  assign BAR1_AXIL_32_bvalid = S_AXI_0_2_BVALID;
  assign BAR1_AXIL_32_rdata[31:0] = S_AXI_0_2_RDATA;
  assign BAR1_AXIL_32_rresp[1:0] = S_AXI_0_2_RRESP;
  assign BAR1_AXIL_32_rvalid = S_AXI_0_2_RVALID;
  assign BAR1_AXIL_32_wready = S_AXI_0_2_WREADY;
  assign DDR_ADDR_512_64_1_ARADDR = DDR_ADDR_512_64_araddr[63:0];
  assign DDR_ADDR_512_64_1_ARBURST = DDR_ADDR_512_64_arburst[1:0];
  assign DDR_ADDR_512_64_1_ARCACHE = DDR_ADDR_512_64_arcache[3:0];
  assign DDR_ADDR_512_64_1_ARID = DDR_ADDR_512_64_arid[15:0];
  assign DDR_ADDR_512_64_1_ARLEN = DDR_ADDR_512_64_arlen[7:0];
  assign DDR_ADDR_512_64_1_ARLOCK = DDR_ADDR_512_64_arlock[0];
  assign DDR_ADDR_512_64_1_ARPROT = DDR_ADDR_512_64_arprot[2:0];
  assign DDR_ADDR_512_64_1_ARQOS = DDR_ADDR_512_64_arqos[3:0];
  assign DDR_ADDR_512_64_1_ARREGION = DDR_ADDR_512_64_arregion[3:0];
  assign DDR_ADDR_512_64_1_ARSIZE = DDR_ADDR_512_64_arsize[2:0];
  assign DDR_ADDR_512_64_1_ARVALID = DDR_ADDR_512_64_arvalid;
  assign DDR_ADDR_512_64_1_AWADDR = DDR_ADDR_512_64_awaddr[63:0];
  assign DDR_ADDR_512_64_1_AWBURST = DDR_ADDR_512_64_awburst[1:0];
  assign DDR_ADDR_512_64_1_AWCACHE = DDR_ADDR_512_64_awcache[3:0];
  assign DDR_ADDR_512_64_1_AWID = DDR_ADDR_512_64_awid[15:0];
  assign DDR_ADDR_512_64_1_AWLEN = DDR_ADDR_512_64_awlen[7:0];
  assign DDR_ADDR_512_64_1_AWLOCK = DDR_ADDR_512_64_awlock[0];
  assign DDR_ADDR_512_64_1_AWPROT = DDR_ADDR_512_64_awprot[2:0];
  assign DDR_ADDR_512_64_1_AWQOS = DDR_ADDR_512_64_awqos[3:0];
  assign DDR_ADDR_512_64_1_AWREGION = DDR_ADDR_512_64_awregion[3:0];
  assign DDR_ADDR_512_64_1_AWSIZE = DDR_ADDR_512_64_awsize[2:0];
  assign DDR_ADDR_512_64_1_AWVALID = DDR_ADDR_512_64_awvalid;
  assign DDR_ADDR_512_64_1_BREADY = DDR_ADDR_512_64_bready;
  assign DDR_ADDR_512_64_1_RREADY = DDR_ADDR_512_64_rready;
  assign DDR_ADDR_512_64_1_WDATA = DDR_ADDR_512_64_wdata[63:0];
  assign DDR_ADDR_512_64_1_WLAST = DDR_ADDR_512_64_wlast;
  assign DDR_ADDR_512_64_1_WSTRB = DDR_ADDR_512_64_wstrb[7:0];
  assign DDR_ADDR_512_64_1_WVALID = DDR_ADDR_512_64_wvalid;
  assign DDR_ADDR_512_64_arready = DDR_ADDR_512_64_1_ARREADY;
  assign DDR_ADDR_512_64_awready = DDR_ADDR_512_64_1_AWREADY;
  assign DDR_ADDR_512_64_bid[15:0] = DDR_ADDR_512_64_1_BID;
  assign DDR_ADDR_512_64_bresp[1:0] = DDR_ADDR_512_64_1_BRESP;
  assign DDR_ADDR_512_64_bvalid = DDR_ADDR_512_64_1_BVALID;
  assign DDR_ADDR_512_64_rdata[63:0] = DDR_ADDR_512_64_1_RDATA;
  assign DDR_ADDR_512_64_rid[15:0] = DDR_ADDR_512_64_1_RID;
  assign DDR_ADDR_512_64_rlast = DDR_ADDR_512_64_1_RLAST;
  assign DDR_ADDR_512_64_rresp[1:0] = DDR_ADDR_512_64_1_RRESP;
  assign DDR_ADDR_512_64_rvalid = DDR_ADDR_512_64_1_RVALID;
  assign DDR_ADDR_512_64_wready = DDR_ADDR_512_64_1_WREADY;
  assign DDR_AXI4_araddr[63:0] = axi_crossbar_3_M00_AXI_ARADDR;
  assign DDR_AXI4_arburst[1:0] = axi_crossbar_3_M00_AXI_ARBURST;
  assign DDR_AXI4_arcache[3:0] = axi_crossbar_3_M00_AXI_ARCACHE;
  assign DDR_AXI4_arid[15:0] = axi_crossbar_3_M00_AXI_ARID;
  assign DDR_AXI4_arlen[7:0] = axi_crossbar_3_M00_AXI_ARLEN;
  assign DDR_AXI4_arlock[0] = axi_crossbar_3_M00_AXI_ARLOCK;
  assign DDR_AXI4_arprot[2:0] = axi_crossbar_3_M00_AXI_ARPROT;
  assign DDR_AXI4_arqos[3:0] = axi_crossbar_3_M00_AXI_ARQOS;
  assign DDR_AXI4_arregion[3:0] = axi_crossbar_3_M00_AXI_ARREGION;
  assign DDR_AXI4_arsize[2:0] = axi_crossbar_3_M00_AXI_ARSIZE;
  assign DDR_AXI4_arvalid[0] = axi_crossbar_3_M00_AXI_ARVALID;
  assign DDR_AXI4_awaddr[63:0] = axi_crossbar_3_M00_AXI_AWADDR;
  assign DDR_AXI4_awburst[1:0] = axi_crossbar_3_M00_AXI_AWBURST;
  assign DDR_AXI4_awcache[3:0] = axi_crossbar_3_M00_AXI_AWCACHE;
  assign DDR_AXI4_awid[15:0] = axi_crossbar_3_M00_AXI_AWID;
  assign DDR_AXI4_awlen[7:0] = axi_crossbar_3_M00_AXI_AWLEN;
  assign DDR_AXI4_awlock[0] = axi_crossbar_3_M00_AXI_AWLOCK;
  assign DDR_AXI4_awprot[2:0] = axi_crossbar_3_M00_AXI_AWPROT;
  assign DDR_AXI4_awqos[3:0] = axi_crossbar_3_M00_AXI_AWQOS;
  assign DDR_AXI4_awregion[3:0] = axi_crossbar_3_M00_AXI_AWREGION;
  assign DDR_AXI4_awsize[2:0] = axi_crossbar_3_M00_AXI_AWSIZE;
  assign DDR_AXI4_awvalid[0] = axi_crossbar_3_M00_AXI_AWVALID;
  assign DDR_AXI4_bready[0] = axi_crossbar_3_M00_AXI_BREADY;
  assign DDR_AXI4_rready[0] = axi_crossbar_3_M00_AXI_RREADY;
  assign DDR_AXI4_wdata[511:0] = axi_crossbar_3_M00_AXI_WDATA;
  assign DDR_AXI4_wlast[0] = axi_crossbar_3_M00_AXI_WLAST;
  assign DDR_AXI4_wstrb[63:0] = axi_crossbar_3_M00_AXI_WSTRB;
  assign DDR_AXI4_wvalid[0] = axi_crossbar_3_M00_AXI_WVALID;
  assign DMA_PCIS_AXI4_arready[0] = S00_AXI_1_1_ARREADY;
  assign DMA_PCIS_AXI4_awready[0] = S00_AXI_1_1_AWREADY;
  assign DMA_PCIS_AXI4_bid[15:0] = S00_AXI_1_1_BID;
  assign DMA_PCIS_AXI4_bresp[1:0] = S00_AXI_1_1_BRESP;
  assign DMA_PCIS_AXI4_bvalid[0] = S00_AXI_1_1_BVALID;
  assign DMA_PCIS_AXI4_rdata[511:0] = S00_AXI_1_1_RDATA;
  assign DMA_PCIS_AXI4_rid[15:0] = S00_AXI_1_1_RID;
  assign DMA_PCIS_AXI4_rlast[0] = S00_AXI_1_1_RLAST;
  assign DMA_PCIS_AXI4_rresp[1:0] = S00_AXI_1_1_RRESP;
  assign DMA_PCIS_AXI4_rvalid[0] = S00_AXI_1_1_RVALID;
  assign DMA_PCIS_AXI4_wready[0] = S00_AXI_1_1_WREADY;
  assign M02_AXI_0_araddr[31:0] = axi_crossbar_2_M02_AXI_ARADDR;
  assign M02_AXI_0_arprot[2:0] = axi_crossbar_2_M02_AXI_ARPROT;
  assign M02_AXI_0_arvalid[0] = axi_crossbar_2_M02_AXI_ARVALID;
  assign M02_AXI_0_awaddr[31:0] = axi_crossbar_2_M02_AXI_AWADDR;
  assign M02_AXI_0_awprot[2:0] = axi_crossbar_2_M02_AXI_AWPROT;
  assign M02_AXI_0_awvalid[0] = axi_crossbar_2_M02_AXI_AWVALID;
  assign M02_AXI_0_bready[0] = axi_crossbar_2_M02_AXI_BREADY;
  assign M02_AXI_0_rready[0] = axi_crossbar_2_M02_AXI_RREADY;
  assign M02_AXI_0_wdata[31:0] = axi_crossbar_2_M02_AXI_WDATA;
  assign M02_AXI_0_wstrb[3:0] = axi_crossbar_2_M02_AXI_WSTRB;
  assign M02_AXI_0_wvalid[0] = axi_crossbar_2_M02_AXI_WVALID;
  assign M_AXI_0_araddr[63:0] = axi_protocol_convert_0_M_AXI_ARADDR;
  assign M_AXI_0_arburst[1:0] = axi_protocol_convert_0_M_AXI_ARBURST;
  assign M_AXI_0_arcache[3:0] = axi_protocol_convert_0_M_AXI_ARCACHE;
  assign M_AXI_0_arlen[7:0] = axi_protocol_convert_0_M_AXI_ARLEN;
  assign M_AXI_0_arlock[0] = axi_protocol_convert_0_M_AXI_ARLOCK;
  assign M_AXI_0_arprot[2:0] = axi_protocol_convert_0_M_AXI_ARPROT;
  assign M_AXI_0_arqos[3:0] = axi_protocol_convert_0_M_AXI_ARQOS;
  assign M_AXI_0_arregion[3:0] = axi_protocol_convert_0_M_AXI_ARREGION;
  assign M_AXI_0_arsize[2:0] = axi_protocol_convert_0_M_AXI_ARSIZE;
  assign M_AXI_0_arvalid = axi_protocol_convert_0_M_AXI_ARVALID;
  assign M_AXI_0_awaddr[63:0] = axi_protocol_convert_0_M_AXI_AWADDR;
  assign M_AXI_0_awburst[1:0] = axi_protocol_convert_0_M_AXI_AWBURST;
  assign M_AXI_0_awcache[3:0] = axi_protocol_convert_0_M_AXI_AWCACHE;
  assign M_AXI_0_awlen[7:0] = axi_protocol_convert_0_M_AXI_AWLEN;
  assign M_AXI_0_awlock[0] = axi_protocol_convert_0_M_AXI_AWLOCK;
  assign M_AXI_0_awprot[2:0] = axi_protocol_convert_0_M_AXI_AWPROT;
  assign M_AXI_0_awqos[3:0] = axi_protocol_convert_0_M_AXI_AWQOS;
  assign M_AXI_0_awregion[3:0] = axi_protocol_convert_0_M_AXI_AWREGION;
  assign M_AXI_0_awsize[2:0] = axi_protocol_convert_0_M_AXI_AWSIZE;
  assign M_AXI_0_awvalid = axi_protocol_convert_0_M_AXI_AWVALID;
  assign M_AXI_0_bready = axi_protocol_convert_0_M_AXI_BREADY;
  assign M_AXI_0_rready = axi_protocol_convert_0_M_AXI_RREADY;
  assign M_AXI_0_wdata[63:0] = axi_protocol_convert_0_M_AXI_WDATA;
  assign M_AXI_0_wlast = axi_protocol_convert_0_M_AXI_WLAST;
  assign M_AXI_0_wstrb[7:0] = axi_protocol_convert_0_M_AXI_WSTRB;
  assign M_AXI_0_wvalid = axi_protocol_convert_0_M_AXI_WVALID;
  assign OCL_AXIL_32_ARADDR = OCL_AXIL_32_araddr[31:0];
  assign OCL_AXIL_32_ARPROT = OCL_AXIL_32_arprot[2:0];
  assign OCL_AXIL_32_ARVALID = OCL_AXIL_32_arvalid[0];
  assign OCL_AXIL_32_AWADDR = OCL_AXIL_32_awaddr[31:0];
  assign OCL_AXIL_32_AWPROT = OCL_AXIL_32_awprot[2:0];
  assign OCL_AXIL_32_AWVALID = OCL_AXIL_32_awvalid[0];
  assign OCL_AXIL_32_BREADY = OCL_AXIL_32_bready[0];
  assign OCL_AXIL_32_RREADY = OCL_AXIL_32_rready[0];
  assign OCL_AXIL_32_WDATA = OCL_AXIL_32_wdata[31:0];
  assign OCL_AXIL_32_WSTRB = OCL_AXIL_32_wstrb[3:0];
  assign OCL_AXIL_32_WVALID = OCL_AXIL_32_wvalid[0];
  assign OCL_AXIL_32_arready[0] = OCL_AXIL_32_ARREADY;
  assign OCL_AXIL_32_awready[0] = OCL_AXIL_32_AWREADY;
  assign OCL_AXIL_32_bresp[1:0] = OCL_AXIL_32_BRESP;
  assign OCL_AXIL_32_bvalid[0] = OCL_AXIL_32_BVALID;
  assign OCL_AXIL_32_rdata[31:0] = OCL_AXIL_32_RDATA;
  assign OCL_AXIL_32_rresp[1:0] = OCL_AXIL_32_RRESP;
  assign OCL_AXIL_32_rvalid[0] = OCL_AXIL_32_RVALID;
  assign OCL_AXIL_32_wready[0] = OCL_AXIL_32_WREADY;
  assign S00_AXI_1_1_ARADDR = DMA_PCIS_AXI4_araddr[63:0];
  assign S00_AXI_1_1_ARBURST = DMA_PCIS_AXI4_arburst[1:0];
  assign S00_AXI_1_1_ARCACHE = DMA_PCIS_AXI4_arcache[3:0];
  assign S00_AXI_1_1_ARID = DMA_PCIS_AXI4_arid[15:0];
  assign S00_AXI_1_1_ARLEN = DMA_PCIS_AXI4_arlen[7:0];
  assign S00_AXI_1_1_ARLOCK = DMA_PCIS_AXI4_arlock[0];
  assign S00_AXI_1_1_ARPROT = DMA_PCIS_AXI4_arprot[2:0];
  assign S00_AXI_1_1_ARQOS = DMA_PCIS_AXI4_arqos[3:0];
  assign S00_AXI_1_1_ARSIZE = DMA_PCIS_AXI4_arsize[2:0];
  assign S00_AXI_1_1_ARVALID = DMA_PCIS_AXI4_arvalid[0];
  assign S00_AXI_1_1_AWADDR = DMA_PCIS_AXI4_awaddr[63:0];
  assign S00_AXI_1_1_AWBURST = DMA_PCIS_AXI4_awburst[1:0];
  assign S00_AXI_1_1_AWCACHE = DMA_PCIS_AXI4_awcache[3:0];
  assign S00_AXI_1_1_AWID = DMA_PCIS_AXI4_awid[15:0];
  assign S00_AXI_1_1_AWLEN = DMA_PCIS_AXI4_awlen[7:0];
  assign S00_AXI_1_1_AWLOCK = DMA_PCIS_AXI4_awlock[0];
  assign S00_AXI_1_1_AWPROT = DMA_PCIS_AXI4_awprot[2:0];
  assign S00_AXI_1_1_AWQOS = DMA_PCIS_AXI4_awqos[3:0];
  assign S00_AXI_1_1_AWSIZE = DMA_PCIS_AXI4_awsize[2:0];
  assign S00_AXI_1_1_AWVALID = DMA_PCIS_AXI4_awvalid[0];
  assign S00_AXI_1_1_BREADY = DMA_PCIS_AXI4_bready[0];
  assign S00_AXI_1_1_RREADY = DMA_PCIS_AXI4_rready[0];
  assign S00_AXI_1_1_WDATA = DMA_PCIS_AXI4_wdata[511:0];
  assign S00_AXI_1_1_WLAST = DMA_PCIS_AXI4_wlast[0];
  assign S00_AXI_1_1_WSTRB = DMA_PCIS_AXI4_wstrb[63:0];
  assign S00_AXI_1_1_WVALID = DMA_PCIS_AXI4_wvalid[0];
  assign S_AXI_0_2_ARADDR = BAR1_AXIL_32_araddr[63:0];
  assign S_AXI_0_2_ARPROT = BAR1_AXIL_32_arprot[2:0];
  assign S_AXI_0_2_ARVALID = BAR1_AXIL_32_arvalid;
  assign S_AXI_0_2_AWADDR = BAR1_AXIL_32_awaddr[63:0];
  assign S_AXI_0_2_AWPROT = BAR1_AXIL_32_awprot[2:0];
  assign S_AXI_0_2_AWVALID = BAR1_AXIL_32_awvalid;
  assign S_AXI_0_2_BREADY = BAR1_AXIL_32_bready;
  assign S_AXI_0_2_RREADY = BAR1_AXIL_32_rready;
  assign S_AXI_0_2_WDATA = BAR1_AXIL_32_wdata[31:0];
  assign S_AXI_0_2_WSTRB = BAR1_AXIL_32_wstrb[3:0];
  assign S_AXI_0_2_WVALID = BAR1_AXIL_32_wvalid;
  assign UART_1_txd = axi_uartlite_1_UART_TxD;
  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  assign axi_crossbar_0_M01_AXI_ARREADY = test_status_arready[0];
  assign axi_crossbar_0_M01_AXI_AWREADY = test_status_awready[0];
  assign axi_crossbar_0_M01_AXI_BRESP = test_status_bresp[1:0];
  assign axi_crossbar_0_M01_AXI_BVALID = test_status_bvalid[0];
  assign axi_crossbar_0_M01_AXI_RDATA = test_status_rdata[31:0];
  assign axi_crossbar_0_M01_AXI_RRESP = test_status_rresp[1:0];
  assign axi_crossbar_0_M01_AXI_RVALID = test_status_rvalid[0];
  assign axi_crossbar_0_M01_AXI_WREADY = test_status_wready[0];
  assign axi_crossbar_2_M02_AXI_ARREADY = M02_AXI_0_arready[0];
  assign axi_crossbar_2_M02_AXI_AWREADY = M02_AXI_0_awready[0];
  assign axi_crossbar_2_M02_AXI_BRESP = M02_AXI_0_bresp[1:0];
  assign axi_crossbar_2_M02_AXI_BVALID = M02_AXI_0_bvalid[0];
  assign axi_crossbar_2_M02_AXI_RDATA = M02_AXI_0_rdata[31:0];
  assign axi_crossbar_2_M02_AXI_RRESP = M02_AXI_0_rresp[1:0];
  assign axi_crossbar_2_M02_AXI_RVALID = M02_AXI_0_rvalid[0];
  assign axi_crossbar_2_M02_AXI_WREADY = M02_AXI_0_wready[0];
  assign axi_crossbar_3_M00_AXI_ARREADY = DDR_AXI4_arready[0];
  assign axi_crossbar_3_M00_AXI_AWREADY = DDR_AXI4_awready[0];
  assign axi_crossbar_3_M00_AXI_BID = DDR_AXI4_bid[15:0];
  assign axi_crossbar_3_M00_AXI_BRESP = DDR_AXI4_bresp[1:0];
  assign axi_crossbar_3_M00_AXI_BVALID = DDR_AXI4_bvalid[0];
  assign axi_crossbar_3_M00_AXI_RDATA = DDR_AXI4_rdata[511:0];
  assign axi_crossbar_3_M00_AXI_RID = DDR_AXI4_rid[15:0];
  assign axi_crossbar_3_M00_AXI_RLAST = DDR_AXI4_rlast[0];
  assign axi_crossbar_3_M00_AXI_RRESP = DDR_AXI4_rresp[1:0];
  assign axi_crossbar_3_M00_AXI_RVALID = DDR_AXI4_rvalid[0];
  assign axi_crossbar_3_M00_AXI_WREADY = DDR_AXI4_wready[0];
  assign axi_protocol_convert_0_M_AXI_ARREADY = M_AXI_0_arready;
  assign axi_protocol_convert_0_M_AXI_AWREADY = M_AXI_0_awready;
  assign axi_protocol_convert_0_M_AXI_BRESP = M_AXI_0_bresp[1:0];
  assign axi_protocol_convert_0_M_AXI_BVALID = M_AXI_0_bvalid;
  assign axi_protocol_convert_0_M_AXI_RDATA = M_AXI_0_rdata[63:0];
  assign axi_protocol_convert_0_M_AXI_RLAST = M_AXI_0_rlast;
  assign axi_protocol_convert_0_M_AXI_RRESP = M_AXI_0_rresp[1:0];
  assign axi_protocol_convert_0_M_AXI_RVALID = M_AXI_0_rvalid;
  assign axi_protocol_convert_0_M_AXI_WREADY = M_AXI_0_wready;
  assign axi_uartlite_1_UART_RxD = UART_1_rxd;
  assign interrupt_1 = axi_uartlite_0_interrupt;
  assign test_status_araddr[31:0] = axi_crossbar_0_M01_AXI_ARADDR;
  assign test_status_arprot[2:0] = axi_crossbar_0_M01_AXI_ARPROT;
  assign test_status_arvalid[0] = axi_crossbar_0_M01_AXI_ARVALID;
  assign test_status_awaddr[31:0] = axi_crossbar_0_M01_AXI_AWADDR;
  assign test_status_awprot[2:0] = axi_crossbar_0_M01_AXI_AWPROT;
  assign test_status_awvalid[0] = axi_crossbar_0_M01_AXI_AWVALID;
  assign test_status_bready[0] = axi_crossbar_0_M01_AXI_BREADY;
  assign test_status_rready[0] = axi_crossbar_0_M01_AXI_RREADY;
  assign test_status_wdata[31:0] = axi_crossbar_0_M01_AXI_WDATA;
  assign test_status_wstrb[3:0] = axi_crossbar_0_M01_AXI_WSTRB;
  assign test_status_wvalid[0] = axi_crossbar_0_M01_AXI_WVALID;
  AXIcrossbar1_axi_crossbar_0_0 axi_crossbar_2
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr({axi_crossbar_2_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_2_M00_AXI_ARADDR}),
        .m_axi_arprot({axi_crossbar_2_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,NLW_axi_crossbar_2_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({axi_crossbar_2_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_2_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_2_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_2_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_2_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_2_M00_AXI_AWADDR}),
        .m_axi_awprot({axi_crossbar_2_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,NLW_axi_crossbar_2_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({axi_crossbar_2_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_2_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_2_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_2_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_2_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_2_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_2_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_2_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_2_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_2_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_2_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_2_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_2_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_2_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_2_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_2_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_2_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_2_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_2_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_2_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_2_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_2_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_2_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_2_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_2_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_2_M00_AXI_WVALID}),
        .s_axi_araddr(OCL_AXIL_32_ARADDR),
        .s_axi_arprot(OCL_AXIL_32_ARPROT),
        .s_axi_arready(OCL_AXIL_32_ARREADY),
        .s_axi_arvalid(OCL_AXIL_32_ARVALID),
        .s_axi_awaddr(OCL_AXIL_32_AWADDR),
        .s_axi_awprot(OCL_AXIL_32_AWPROT),
        .s_axi_awready(OCL_AXIL_32_AWREADY),
        .s_axi_awvalid(OCL_AXIL_32_AWVALID),
        .s_axi_bready(OCL_AXIL_32_BREADY),
        .s_axi_bresp(OCL_AXIL_32_BRESP),
        .s_axi_bvalid(OCL_AXIL_32_BVALID),
        .s_axi_rdata(OCL_AXIL_32_RDATA),
        .s_axi_rready(OCL_AXIL_32_RREADY),
        .s_axi_rresp(OCL_AXIL_32_RRESP),
        .s_axi_rvalid(OCL_AXIL_32_RVALID),
        .s_axi_wdata(OCL_AXIL_32_WDATA),
        .s_axi_wready(OCL_AXIL_32_WREADY),
        .s_axi_wstrb(OCL_AXIL_32_WSTRB),
        .s_axi_wvalid(OCL_AXIL_32_WVALID));
  AXIcrossbar1_axi_crossbar_1_0 axi_crossbar_3
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_crossbar_3_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_3_M00_AXI_ARBURST),
        .m_axi_arcache(axi_crossbar_3_M00_AXI_ARCACHE),
        .m_axi_arid(axi_crossbar_3_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_3_M00_AXI_ARLEN),
        .m_axi_arlock(axi_crossbar_3_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_crossbar_3_M00_AXI_ARPROT),
        .m_axi_arqos(axi_crossbar_3_M00_AXI_ARQOS),
        .m_axi_arready(axi_crossbar_3_M00_AXI_ARREADY),
        .m_axi_arregion(axi_crossbar_3_M00_AXI_ARREGION),
        .m_axi_arsize(axi_crossbar_3_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_3_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_3_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_3_M00_AXI_AWBURST),
        .m_axi_awcache(axi_crossbar_3_M00_AXI_AWCACHE),
        .m_axi_awid(axi_crossbar_3_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_3_M00_AXI_AWLEN),
        .m_axi_awlock(axi_crossbar_3_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_crossbar_3_M00_AXI_AWPROT),
        .m_axi_awqos(axi_crossbar_3_M00_AXI_AWQOS),
        .m_axi_awready(axi_crossbar_3_M00_AXI_AWREADY),
        .m_axi_awregion(axi_crossbar_3_M00_AXI_AWREGION),
        .m_axi_awsize(axi_crossbar_3_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_3_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_3_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_3_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_3_M00_AXI_BRESP),
        .m_axi_bvalid(axi_crossbar_3_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_3_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_3_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_3_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_3_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_3_M00_AXI_RRESP),
        .m_axi_rvalid(axi_crossbar_3_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_3_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_3_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_3_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_3_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_3_M00_AXI_WVALID),
        .s_axi_araddr({axi_dwidth_converter_0_M_AXI_ARADDR,S00_AXI_1_1_ARADDR}),
        .s_axi_arburst({axi_dwidth_converter_0_M_AXI_ARBURST,S00_AXI_1_1_ARBURST}),
        .s_axi_arcache({axi_dwidth_converter_0_M_AXI_ARCACHE,S00_AXI_1_1_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S00_AXI_1_1_ARID}),
        .s_axi_arlen({axi_dwidth_converter_0_M_AXI_ARLEN,S00_AXI_1_1_ARLEN}),
        .s_axi_arlock({axi_dwidth_converter_0_M_AXI_ARLOCK,S00_AXI_1_1_ARLOCK}),
        .s_axi_arprot({axi_dwidth_converter_0_M_AXI_ARPROT,S00_AXI_1_1_ARPROT}),
        .s_axi_arqos({axi_dwidth_converter_0_M_AXI_ARQOS,S00_AXI_1_1_ARQOS}),
        .s_axi_arready({axi_dwidth_converter_0_M_AXI_ARREADY,S00_AXI_1_1_ARREADY}),
        .s_axi_arsize({axi_dwidth_converter_0_M_AXI_ARSIZE,S00_AXI_1_1_ARSIZE}),
        .s_axi_arvalid({axi_dwidth_converter_0_M_AXI_ARVALID,S00_AXI_1_1_ARVALID}),
        .s_axi_awaddr({axi_dwidth_converter_0_M_AXI_AWADDR,S00_AXI_1_1_AWADDR}),
        .s_axi_awburst({axi_dwidth_converter_0_M_AXI_AWBURST,S00_AXI_1_1_AWBURST}),
        .s_axi_awcache({axi_dwidth_converter_0_M_AXI_AWCACHE,S00_AXI_1_1_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S00_AXI_1_1_AWID}),
        .s_axi_awlen({axi_dwidth_converter_0_M_AXI_AWLEN,S00_AXI_1_1_AWLEN}),
        .s_axi_awlock({axi_dwidth_converter_0_M_AXI_AWLOCK,S00_AXI_1_1_AWLOCK}),
        .s_axi_awprot({axi_dwidth_converter_0_M_AXI_AWPROT,S00_AXI_1_1_AWPROT}),
        .s_axi_awqos({axi_dwidth_converter_0_M_AXI_AWQOS,S00_AXI_1_1_AWQOS}),
        .s_axi_awready({axi_dwidth_converter_0_M_AXI_AWREADY,S00_AXI_1_1_AWREADY}),
        .s_axi_awsize({axi_dwidth_converter_0_M_AXI_AWSIZE,S00_AXI_1_1_AWSIZE}),
        .s_axi_awvalid({axi_dwidth_converter_0_M_AXI_AWVALID,S00_AXI_1_1_AWVALID}),
        .s_axi_bid(S00_AXI_1_1_BID),
        .s_axi_bready({axi_dwidth_converter_0_M_AXI_BREADY,S00_AXI_1_1_BREADY}),
        .s_axi_bresp({axi_dwidth_converter_0_M_AXI_BRESP,S00_AXI_1_1_BRESP}),
        .s_axi_bvalid({axi_dwidth_converter_0_M_AXI_BVALID,S00_AXI_1_1_BVALID}),
        .s_axi_rdata({axi_dwidth_converter_0_M_AXI_RDATA,S00_AXI_1_1_RDATA}),
        .s_axi_rid(S00_AXI_1_1_RID),
        .s_axi_rlast({axi_dwidth_converter_0_M_AXI_RLAST,S00_AXI_1_1_RLAST}),
        .s_axi_rready({axi_dwidth_converter_0_M_AXI_RREADY,S00_AXI_1_1_RREADY}),
        .s_axi_rresp({axi_dwidth_converter_0_M_AXI_RRESP,S00_AXI_1_1_RRESP}),
        .s_axi_rvalid({axi_dwidth_converter_0_M_AXI_RVALID,S00_AXI_1_1_RVALID}),
        .s_axi_wdata({axi_dwidth_converter_0_M_AXI_WDATA,S00_AXI_1_1_WDATA}),
        .s_axi_wlast({axi_dwidth_converter_0_M_AXI_WLAST,S00_AXI_1_1_WLAST}),
        .s_axi_wready({axi_dwidth_converter_0_M_AXI_WREADY,S00_AXI_1_1_WREADY}),
        .s_axi_wstrb({axi_dwidth_converter_0_M_AXI_WSTRB,S00_AXI_1_1_WSTRB}),
        .s_axi_wvalid({axi_dwidth_converter_0_M_AXI_WVALID,S00_AXI_1_1_WVALID}));
  AXIcrossbar1_axi_dwidth_converter_0_0 axi_dwidth_converter_0
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
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(DDR_ADDR_512_64_1_ARADDR),
        .s_axi_arburst(DDR_ADDR_512_64_1_ARBURST),
        .s_axi_arcache(DDR_ADDR_512_64_1_ARCACHE),
        .s_axi_aresetn(aresetn_0_1),
        .s_axi_arid(DDR_ADDR_512_64_1_ARID),
        .s_axi_arlen(DDR_ADDR_512_64_1_ARLEN),
        .s_axi_arlock(DDR_ADDR_512_64_1_ARLOCK),
        .s_axi_arprot(DDR_ADDR_512_64_1_ARPROT),
        .s_axi_arqos(DDR_ADDR_512_64_1_ARQOS),
        .s_axi_arready(DDR_ADDR_512_64_1_ARREADY),
        .s_axi_arregion(DDR_ADDR_512_64_1_ARREGION),
        .s_axi_arsize(DDR_ADDR_512_64_1_ARSIZE),
        .s_axi_arvalid(DDR_ADDR_512_64_1_ARVALID),
        .s_axi_awaddr(DDR_ADDR_512_64_1_AWADDR),
        .s_axi_awburst(DDR_ADDR_512_64_1_AWBURST),
        .s_axi_awcache(DDR_ADDR_512_64_1_AWCACHE),
        .s_axi_awid(DDR_ADDR_512_64_1_AWID),
        .s_axi_awlen(DDR_ADDR_512_64_1_AWLEN),
        .s_axi_awlock(DDR_ADDR_512_64_1_AWLOCK),
        .s_axi_awprot(DDR_ADDR_512_64_1_AWPROT),
        .s_axi_awqos(DDR_ADDR_512_64_1_AWQOS),
        .s_axi_awready(DDR_ADDR_512_64_1_AWREADY),
        .s_axi_awregion(DDR_ADDR_512_64_1_AWREGION),
        .s_axi_awsize(DDR_ADDR_512_64_1_AWSIZE),
        .s_axi_awvalid(DDR_ADDR_512_64_1_AWVALID),
        .s_axi_bid(DDR_ADDR_512_64_1_BID),
        .s_axi_bready(DDR_ADDR_512_64_1_BREADY),
        .s_axi_bresp(DDR_ADDR_512_64_1_BRESP),
        .s_axi_bvalid(DDR_ADDR_512_64_1_BVALID),
        .s_axi_rdata(DDR_ADDR_512_64_1_RDATA),
        .s_axi_rid(DDR_ADDR_512_64_1_RID),
        .s_axi_rlast(DDR_ADDR_512_64_1_RLAST),
        .s_axi_rready(DDR_ADDR_512_64_1_RREADY),
        .s_axi_rresp(DDR_ADDR_512_64_1_RRESP),
        .s_axi_rvalid(DDR_ADDR_512_64_1_RVALID),
        .s_axi_wdata(DDR_ADDR_512_64_1_WDATA),
        .s_axi_wlast(DDR_ADDR_512_64_1_WLAST),
        .s_axi_wready(DDR_ADDR_512_64_1_WREADY),
        .s_axi_wstrb(DDR_ADDR_512_64_1_WSTRB),
        .s_axi_wvalid(DDR_ADDR_512_64_1_WVALID));
  AXIcrossbar1_axi_dwidth_converter_1_0 axi_dwidth_converter_1
       (.m_axi_araddr(axi_dwidth_converter_1_M_AXI_ARADDR),
        .m_axi_arprot(axi_dwidth_converter_1_M_AXI_ARPROT),
        .m_axi_arready(axi_dwidth_converter_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_dwidth_converter_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_dwidth_converter_1_M_AXI_AWADDR),
        .m_axi_awprot(axi_dwidth_converter_1_M_AXI_AWPROT),
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
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(S_AXI_0_2_ARADDR),
        .s_axi_aresetn(aresetn_0_1),
        .s_axi_arprot(S_AXI_0_2_ARPROT),
        .s_axi_arready(S_AXI_0_2_ARREADY),
        .s_axi_arvalid(S_AXI_0_2_ARVALID),
        .s_axi_awaddr(S_AXI_0_2_AWADDR),
        .s_axi_awprot(S_AXI_0_2_AWPROT),
        .s_axi_awready(S_AXI_0_2_AWREADY),
        .s_axi_awvalid(S_AXI_0_2_AWVALID),
        .s_axi_bready(S_AXI_0_2_BREADY),
        .s_axi_bresp(S_AXI_0_2_BRESP),
        .s_axi_bvalid(S_AXI_0_2_BVALID),
        .s_axi_rdata(S_AXI_0_2_RDATA),
        .s_axi_rready(S_AXI_0_2_RREADY),
        .s_axi_rresp(S_AXI_0_2_RRESP),
        .s_axi_rvalid(S_AXI_0_2_RVALID),
        .s_axi_wdata(S_AXI_0_2_WDATA),
        .s_axi_wready(S_AXI_0_2_WREADY),
        .s_axi_wstrb(S_AXI_0_2_WSTRB),
        .s_axi_wvalid(S_AXI_0_2_WVALID));
  AXIcrossbar1_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_protocol_convert_0_M_AXI_ARQOS),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_protocol_convert_0_M_AXI_ARREGION),
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
        .m_axi_awregion(axi_protocol_convert_0_M_AXI_AWREGION),
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
        .s_axi_araddr(axi_dwidth_converter_1_M_AXI_ARADDR),
        .s_axi_arprot(axi_dwidth_converter_1_M_AXI_ARPROT),
        .s_axi_arready(axi_dwidth_converter_1_M_AXI_ARREADY),
        .s_axi_arvalid(axi_dwidth_converter_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_dwidth_converter_1_M_AXI_AWADDR),
        .s_axi_awprot(axi_dwidth_converter_1_M_AXI_AWPROT),
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
        .s_axi_wvalid(axi_dwidth_converter_1_M_AXI_WVALID));
  AXIcrossbar1_axi_uartlite_0_0 axi_uartlite_1
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_1_UART_RxD),
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(axi_crossbar_2_M00_AXI_ARADDR[3:0]),
        .s_axi_aresetn(aresetn_0_1),
        .s_axi_arready(axi_crossbar_2_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_2_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_2_M00_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_crossbar_2_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_2_M00_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_2_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_2_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_2_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_2_M00_AXI_RDATA),
        .s_axi_rready(axi_crossbar_2_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_2_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_2_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_2_M00_AXI_WDATA),
        .s_axi_wready(axi_crossbar_2_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_2_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_2_M00_AXI_WVALID),
        .tx(axi_uartlite_1_UART_TxD));
endmodule
