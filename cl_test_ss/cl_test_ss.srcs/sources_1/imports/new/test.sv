`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: xcelerium
// Engineer: Khadija
// 
// Create Date: 02/12/2022
// Design Name:cl_test_subsytem test 
// Module Name: test
// Project Name: NOVA
// Target Devices: AWS FPGA 
// Tool Versions: 
// Description: this testbench is written for testing cl test subsytem for hydra in nova project  
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test;
  logic aclk_0;
  logic aresetn_0;
  logic [63:0]BAR1_AXIL_araddr;
  logic [2:0]BAR1_AXIL_32_arprot;
  logic BAR1_AXIL_32_arvalid;
  logic [63:0]BAR1_AXIL_32_awaddr;
  logic [2:0]BAR1_AXIL_32_awprot;
  logic BAR1_AXIL_32_awvalid;
  logic BAR1_AXIL_32_bready;
  logic BAR1_AXIL_32_rready;
  logic [31:0]BAR1_AXIL_32_wdata;
  logic [3:0]BAR1_AXIL_32_wstrb;
  logic BAR1_AXIL_32_wvalid;
/*  logic [63:0]DDR_ADDR_512_64_araddr;
  logic [1:0]DDR_ADDR_512_64_arburst;
  logic [3:0]DDR_ADDR_512_64_arcache;
  logic [1:0]DDR_ADDR_512_64_arid;
  logic [7:0]DDR_ADDR_512_64_arlen;
  logic [0:0]DDR_ADDR_512_64_arlock;
  logic [2:0]DDR_ADDR_512_64_arprot;
  logic [3:0]DDR_ADDR_512_64_arqos;
  logic [3:0]DDR_ADDR_512_64_arregion;
  logic [2:0]DDR_ADDR_512_64_arsize;
  logic DDR_ADDR_512_64_arvalid;
  logic [63:0]DDR_ADDR_512_64_awaddr;
  logic [1:0]DDR_ADDR_512_64_awburst;
  logic [3:0]DDR_ADDR_512_64_awcache;
  logic [1:0]DDR_ADDR_512_64_awid;
  logic [7:0]DDR_ADDR_512_64_awlen;
  logic [0:0]DDR_ADDR_512_64_awlock;
  logic [2:0]DDR_ADDR_512_64_awprot;
  logic [3:0]DDR_ADDR_512_64_awqos;
  logic [3:0]DDR_ADDR_512_64_awregion;
  logic [2:0]DDR_ADDR_512_64_awsize;
  logic DDR_ADDR_512_64_awvalid;
  logic DDR_ADDR_512_64_bready;
  logic DDR_ADDR_512_64_rready;
  logic [63:0]DDR_ADDR_512_64_wdata;
  logic DDR_ADDR_512_64_wlast;
  logic [7:0]DDR_ADDR_512_64_wstrb;
  logic DDR_ADDR_512_64_wvalid;
  logic [0:0]DDR_AXI4_arready;
  logic [0:0]DDR_AXI4_awready;
  logic [1:0]DDR_AXI4_bid;
  logic [1:0]DDR_AXI4_bresp;
  logic [0:0]DDR_AXI4_bvalid;
  logic [511:0]DDR_AXI4_rdata;
  logic [1:0]DDR_AXI4_rid;
  logic [0:0]DDR_AXI4_rlast;
  logic [1:0]DDR_AXI4_rresp;
  logic [0:0]DDR_AXI4_rvalid;
  logic [0:0]DDR_AXI4_wready;
  logic [63:0]DMA_PCIS_AXI4_araddr;
  logic [1:0]DMA_PCIS_AXI4_arburst;
  logic [3:0]DMA_PCIS_AXI4_arcache;
  logic [1:0]DMA_PCIS_AXI4_arid;
  logic [7:0]DMA_PCIS_AXI4_arlen;
  logic [0:0]DMA_PCIS_AXI4_arlock;
  logic [2:0]DMA_PCIS_AXI4_arprot;
  logic [3:0]DMA_PCIS_AXI4_arqos;
  logic [2:0]DMA_PCIS_AXI4_arsize;
  logic [0:0]DMA_PCIS_AXI4_arvalid;
  logic [63:0]DMA_PCIS_AXI4_awaddr;
  logic [1:0]DMA_PCIS_AXI4_awburst;
  logic [3:0]DMA_PCIS_AXI4_awcache;
  logic [1:0]DMA_PCIS_AXI4_awid;
  logic [7:0]DMA_PCIS_AXI4_awlen;
  logic [0:0]DMA_PCIS_AXI4_awlock;
  logic [2:0]DMA_PCIS_AXI4_awprot;
  logic [3:0]DMA_PCIS_AXI4_awqos;
  logic [2:0]DMA_PCIS_AXI4_awsize;
  logic [0:0]DMA_PCIS_AXI4_awvalid;
  logic [0:0]DMA_PCIS_AXI4_bready;
  logic [0:0]DMA_PCIS_AXI4_rready;
  logic [511:0]DMA_PCIS_AXI4_wdata;
  logic [0:0]DMA_PCIS_AXI4_wlast;
  logic [63:0]DMA_PCIS_AXI4_wstrb;
  logic [0:0]DMA_PCIS_AXI4_wvalid;
  logic [0:0]M02_AXI_0_arready;
  logic [0:0]M02_AXI_0_awready;
  logic [1:0]M02_AXI_0_bresp;
  logic [0:0]M02_AXI_0_bvalid;
  logic [31:0]M02_AXI_0_rdata;
  logic [1:0]M02_AXI_0_rresp;
  logic [0:0]M02_AXI_0_rvalid;
  logic [0:0]M02_AXI_0_wready;
  logic M_AXI_0_arready;
  logic M_AXI_0_awready;
  logic [1:0]M_AXI_0_bresp;
  logic M_AXI_0_bvalid;
  logic [63:0]M_AXI_0_rdata;
  logic M_AXI_0_rlast;
  logic [1:0]M_AXI_0_rresp;
  logic M_AXI_0_rvalid;
  logic M_AXI_0_wready;
  logic [31:0]OCL_AXIL_32_araddr;
  logic [2:0]OCL_AXIL_32_arprot;
  logic [0:0]OCL_AXIL_32_arvalid;
  logic [31:0]OCL_AXIL_32_awaddr;
  logic [2:0]OCL_AXIL_32_awprot;
  logic [0:0]OCL_AXIL_32_awvalid;
  logic [0:0]OCL_AXIL_32_bready;
  logic [0:0]OCL_AXIL_32_rready;
  logic [31:0]OCL_AXIL_32_wdata;
  logic [3:0]OCL_AXIL_32_wstrb;
  logic [0:0]OCL_AXIL_32_wvalid;
  logic UART_1_rxd;
  logic [0:0]test_status_arready;
  logic [0:0]test_status_awready;
  logic [1:0]test_status_bresp;
  logic [0:0]test_status_bvalid;
  logic [31:0]test_status_rdata;
  logic [1:0]test_status_rresp;
  logic [0:0]test_status_rvalid;
  logic [0:0]test_status_wready;
  */
  AXIcrossbar1 test(
    .BAR1_AXIL_32_araddr(BAR1_AXIL_araddr),
    .BAR1_AXIL_32_arprot(BAR1_AXIL_32_arprot),
    .BAR1_AXIL_32_arready(),
    .BAR1_AXIL_32_arvalid(BAR1_AXIL_32_arvalid),
    .BAR1_AXIL_32_awaddr(BAR1_AXIL_32_awaddr),
    .BAR1_AXIL_32_awprot(BAR1_AXIL_32_awprot),
    .BAR1_AXIL_32_awready(),
    .BAR1_AXIL_32_awvalid(BAR1_AXIL_32_awvalid),
    .BAR1_AXIL_32_bready(BAR1_AXIL_32_bready),
    .BAR1_AXIL_32_bresp(),
    .BAR1_AXIL_32_bvalid(),
    .BAR1_AXIL_32_rdata(),
    .BAR1_AXIL_32_rready(BAR1_AXIL_32_rready),
    .BAR1_AXIL_32_rresp(),
    .BAR1_AXIL_32_rvalid(),
    .BAR1_AXIL_32_wdata(BAR1_AXIL_32_wdata),
    .BAR1_AXIL_32_wready(),
    .BAR1_AXIL_32_wstrb(BAR1_AXIL_32_wstrb),
    .BAR1_AXIL_32_wvalid(BAR1_AXIL_32_wvalid),
    .DDR_ADDR_512_64_araddr('0),
    .DDR_ADDR_512_64_arburst('0),
    .DDR_ADDR_512_64_arcache('0),
    .DDR_ADDR_512_64_arid('0),
    .DDR_ADDR_512_64_arlen('0),
    .DDR_ADDR_512_64_arlock('0),
    .DDR_ADDR_512_64_arprot('0),
    .DDR_ADDR_512_64_arqos('0),
    .DDR_ADDR_512_64_arready(),
    .DDR_ADDR_512_64_arregion('0),
    .DDR_ADDR_512_64_arsize('0),
    .DDR_ADDR_512_64_arvalid('0),
    .DDR_ADDR_512_64_awaddr('0),
    .DDR_ADDR_512_64_awburst('0),
    .DDR_ADDR_512_64_awcache('0),
    .DDR_ADDR_512_64_awid('0),
    .DDR_ADDR_512_64_awlen('0),
    .DDR_ADDR_512_64_awlock('0),
    .DDR_ADDR_512_64_awprot('0),
    .DDR_ADDR_512_64_awqos('0),
    .DDR_ADDR_512_64_awready(),
    .DDR_ADDR_512_64_awregion('0),
    .DDR_ADDR_512_64_awsize('0),
    .DDR_ADDR_512_64_awvalid('0),
    .DDR_ADDR_512_64_bid(),
    .DDR_ADDR_512_64_bready('0),
    .DDR_ADDR_512_64_bresp(),
    .DDR_ADDR_512_64_bvalid(),
    .DDR_ADDR_512_64_rdata(),
    .DDR_ADDR_512_64_rid(),
    .DDR_ADDR_512_64_rlast(),
    .DDR_ADDR_512_64_rready('0),
    .DDR_ADDR_512_64_rresp(),
    .DDR_ADDR_512_64_rvalid(),
    .DDR_ADDR_512_64_wdata('0),
    .DDR_ADDR_512_64_wlast('0),
    .DDR_ADDR_512_64_wready(),
    .DDR_ADDR_512_64_wstrb('0),
    .DDR_ADDR_512_64_wvalid('0),
    .DDR_AXI4_araddr(),
    .DDR_AXI4_arburst(),
    .DDR_AXI4_arcache(),
    .DDR_AXI4_arid(),
    .DDR_AXI4_arlen(),
    .DDR_AXI4_arlock(),
    .DDR_AXI4_arprot(),
    .DDR_AXI4_arqos(),
    .DDR_AXI4_arready('0),
    .DDR_AXI4_arregion(),
    .DDR_AXI4_arsize(),
    .DDR_AXI4_arvalid(),
    .DDR_AXI4_awaddr(),
    .DDR_AXI4_awburst(),
    .DDR_AXI4_awcache(),
    .DDR_AXI4_awid(),
    .DDR_AXI4_awlen(),
    .DDR_AXI4_awlock(),
    .DDR_AXI4_awprot(),
    .DDR_AXI4_awqos(),
    .DDR_AXI4_awready('0),
    .DDR_AXI4_awregion(),
    .DDR_AXI4_awsize(),
    .DDR_AXI4_awvalid(),
    .DDR_AXI4_bid('0),
    .DDR_AXI4_bready(),
    .DDR_AXI4_bresp('0),
    .DDR_AXI4_bvalid('0),
    .DDR_AXI4_rdata('0),
    .DDR_AXI4_rid('0),
    .DDR_AXI4_rlast('0),
    .DDR_AXI4_rready(),
    .DDR_AXI4_rresp('0),
    .DDR_AXI4_rvalid('0),
    .DDR_AXI4_wdata(),
    .DDR_AXI4_wlast(),
    .DDR_AXI4_wready('0),
    .DDR_AXI4_wstrb(),
    .DDR_AXI4_wvalid(),
    .DMA_PCIS_AXI4_araddr('0),
    .DMA_PCIS_AXI4_arburst('0),
    .DMA_PCIS_AXI4_arcache('0),
    .DMA_PCIS_AXI4_arid('0),
    .DMA_PCIS_AXI4_arlen('0),
    .DMA_PCIS_AXI4_arlock('0),
    .DMA_PCIS_AXI4_arprot('0),
    .DMA_PCIS_AXI4_arqos('0),
    .DMA_PCIS_AXI4_arready(),
    .DMA_PCIS_AXI4_arsize('0),
    .DMA_PCIS_AXI4_arvalid('0),
    .DMA_PCIS_AXI4_awaddr('0),
    .DMA_PCIS_AXI4_awburst('0),
    .DMA_PCIS_AXI4_awcache('0),
    .DMA_PCIS_AXI4_awid('0),
    .DMA_PCIS_AXI4_awlen('0),
    .DMA_PCIS_AXI4_awlock('0),
    .DMA_PCIS_AXI4_awprot('0),
    .DMA_PCIS_AXI4_awqos('0),
    .DMA_PCIS_AXI4_awready(),
    .DMA_PCIS_AXI4_awsize('0),
    .DMA_PCIS_AXI4_awvalid('0),
    .DMA_PCIS_AXI4_bid(),
    .DMA_PCIS_AXI4_bready('0),
    .DMA_PCIS_AXI4_bresp(),
    .DMA_PCIS_AXI4_bvalid(),
    .DMA_PCIS_AXI4_rdata(),
    .DMA_PCIS_AXI4_rid(),
    .DMA_PCIS_AXI4_rlast(),
    .DMA_PCIS_AXI4_rready('0),
    .DMA_PCIS_AXI4_rresp(),
    .DMA_PCIS_AXI4_rvalid(),
    .DMA_PCIS_AXI4_wdata('0),
    .DMA_PCIS_AXI4_wlast('0),
    .DMA_PCIS_AXI4_wready(),
    .DMA_PCIS_AXI4_wstrb('0),
    .DMA_PCIS_AXI4_wvalid('0),
    .M02_AXI_0_araddr(),
    .M02_AXI_0_arprot(),
    .M02_AXI_0_arready('0),
    .M02_AXI_0_arvalid(),
    .M02_AXI_0_awaddr(),
    .M02_AXI_0_awprot(),
    .M02_AXI_0_awready('0),
    .M02_AXI_0_awvalid(),
    .M02_AXI_0_bready(),
    .M02_AXI_0_bresp('0),
    .M02_AXI_0_bvalid('0),
    .M02_AXI_0_rdata('0),
    .M02_AXI_0_rready(),
    .M02_AXI_0_rresp('0),
    .M02_AXI_0_rvalid('0),
    .M02_AXI_0_wdata(),
    .M02_AXI_0_wready('0),
    .M02_AXI_0_wstrb(),
    .M02_AXI_0_wvalid(),
    .M_AXI_0_araddr(),
    .M_AXI_0_arburst(),
    .M_AXI_0_arcache(),
    .M_AXI_0_arlen(),
    .M_AXI_0_arlock(),
    .M_AXI_0_arprot(),
    .M_AXI_0_arqos(),
    .M_AXI_0_arready('b1),
    .M_AXI_0_arregion(),
    .M_AXI_0_arsize(),
    .M_AXI_0_arvalid(),
    .M_AXI_0_awaddr(),
    .M_AXI_0_awburst(),
    .M_AXI_0_awcache(),
    .M_AXI_0_awlen(),
    .M_AXI_0_awlock(),
    .M_AXI_0_awprot(),
    .M_AXI_0_awqos(),
    .M_AXI_0_awready('b1),
    .M_AXI_0_awregion(),
    .M_AXI_0_awsize(),
    .M_AXI_0_awvalid(),
    .M_AXI_0_bready(),
    .M_AXI_0_bresp(),
    .M_AXI_0_bvalid(),
    .M_AXI_0_rdata(),
    .M_AXI_0_rlast(),
    .M_AXI_0_rready(),
    .M_AXI_0_rresp(),
    .M_AXI_0_rvalid('b1),
    .M_AXI_0_wdata(),
    .M_AXI_0_wlast(),
    .M_AXI_0_wready('b1),
    .M_AXI_0_wstrb(),
    .M_AXI_0_wvalid(),
    .OCL_AXIL_32_araddr('0),
    .OCL_AXIL_32_arprot('0),
    .OCL_AXIL_32_arready(),
    .OCL_AXIL_32_arvalid('0),
    .OCL_AXIL_32_awaddr('0),
    .OCL_AXIL_32_awprot('0),
    .OCL_AXIL_32_awready(),
    .OCL_AXIL_32_awvalid('0),
    .OCL_AXIL_32_bready('0),
    .OCL_AXIL_32_bresp(),
    .OCL_AXIL_32_bvalid(),
    .OCL_AXIL_32_rdata(),
    .OCL_AXIL_32_rready('0),
    .OCL_AXIL_32_rresp(),
    .OCL_AXIL_32_rvalid(),
    .OCL_AXIL_32_wdata('0),
    .OCL_AXIL_32_wready(),
    .OCL_AXIL_32_wstrb('0),
    .OCL_AXIL_32_wvalid('0),
    .UART_1_rxd('0),
    .UART_1_txd(),
    .aclk_0(aclk_0),
    .aresetn_0(aresetn_0),
    .interrupt_1(),
    .test_status_araddr(),
    .test_status_arprot(),
    .test_status_arready('0),
    .test_status_arvalid(),
    .test_status_awaddr(),
    .test_status_awprot(),
    .test_status_awready('0),
    .test_status_awvalid(),
    .test_status_bready(),
    .test_status_bresp('0),
    .test_status_bvalid('0),
    .test_status_rdata('0),
    .test_status_rready(),
    .test_status_rresp('0),
    .test_status_rvalid('0),
    .test_status_wdata(),
    .test_status_wready('0),
    .test_status_wstrb(),
    .test_status_wvalid()

/*   full test
    .DDR_ADDR_512_64_araddr(DDR_ADDR_512_64_araddr),
    .DDR_ADDR_512_64_arburst(DDR_ADDR_512_64_arburst),
    .DDR_ADDR_512_64_arcache(DDR_ADDR_512_64_arcache),
    .DDR_ADDR_512_64_arid(DDR_ADDR_512_64_arid),
    .DDR_ADDR_512_64_arlen(DDR_ADDR_512_64_arlen),
    .DDR_ADDR_512_64_arlock(DDR_ADDR_512_64_arlock),
    .DDR_ADDR_512_64_arprot(DDR_ADDR_512_64_arprot),
    .DDR_ADDR_512_64_arqos(DDR_ADDR_512_64_arqos),
    .DDR_ADDR_512_64_arready(),
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
    .DDR_ADDR_512_64_awready(),
    .DDR_ADDR_512_64_awregion(DDR_ADDR_512_64_awregion),
    .DDR_ADDR_512_64_awsize(DDR_ADDR_512_64_awsize),
    .DDR_ADDR_512_64_awvalid(DDR_ADDR_512_64_awvalid),
    .DDR_ADDR_512_64_bid(),
    .DDR_ADDR_512_64_bready(DDR_ADDR_512_64_bready),
    .DDR_ADDR_512_64_bresp(),
    .DDR_ADDR_512_64_bvalid(),
    .DDR_ADDR_512_64_rdata(),
    .DDR_ADDR_512_64_rid(),
    .DDR_ADDR_512_64_rlast(),
    .DDR_ADDR_512_64_rready(DDR_ADDR_512_64_rready),
    .DDR_ADDR_512_64_rresp(),
    .DDR_ADDR_512_64_rvalid(),
    .DDR_ADDR_512_64_wdata(DDR_ADDR_512_64_wdata),
    .DDR_ADDR_512_64_wlast(DDR_ADDR_512_64_wlast),
    .DDR_ADDR_512_64_wready(),
    .DDR_ADDR_512_64_wstrb(DDR_ADDR_512_64_wstrb),
    .DDR_ADDR_512_64_wvalid(DDR_ADDR_512_64_wvalid),
    .DDR_AXI4_araddr(),
    .DDR_AXI4_arburst(),
    .DDR_AXI4_arcache(),
    .DDR_AXI4_arid(),
    .DDR_AXI4_arlen(),
    .DDR_AXI4_arlock(),
    .DDR_AXI4_arprot(),
    .DDR_AXI4_arqos(),
    .DDR_AXI4_arready(DDR_AXI4_arready),
    .DDR_AXI4_arregion(),
    .DDR_AXI4_arsize(),
    .DDR_AXI4_arvalid(),
    .DDR_AXI4_awaddr(),
    .DDR_AXI4_awburst(),
    .DDR_AXI4_awcache(),
    .DDR_AXI4_awid(),
    .DDR_AXI4_awlen(),
    .DDR_AXI4_awlock(),
    .DDR_AXI4_awprot(),
    .DDR_AXI4_awqos(),
    .DDR_AXI4_awready(DDR_AXI4_awready),
    .DDR_AXI4_awregion(),
    .DDR_AXI4_awsize(),
    .DDR_AXI4_awvalid(),
    .DDR_AXI4_bid(DDR_AXI4_bid),
    .DDR_AXI4_bready(),
    .DDR_AXI4_bresp(DDR_AXI4_bresp),
    .DDR_AXI4_bvalid(DDR_AXI4_bvalid),
    .DDR_AXI4_rdata(DDR_AXI4_rdata),
    .DDR_AXI4_rid(DDR_AXI4_rid),
    .DDR_AXI4_rlast(DDR_AXI4_rlast),
    .DDR_AXI4_rready(),
    .DDR_AXI4_rresp(DDR_AXI4_rresp),
    .DDR_AXI4_rvalid(DDR_AXI4_rvalid),
    .DDR_AXI4_wdata(),
    .DDR_AXI4_wlast(),
    .DDR_AXI4_wready(DDR_AXI4_wready),
    .DDR_AXI4_wstrb(),
    .DDR_AXI4_wvalid(),
    .DMA_PCIS_AXI4_araddr(DMA_PCIS_AXI4_araddr),
    .DMA_PCIS_AXI4_arburst(DMA_PCIS_AXI4_arburst),
    .DMA_PCIS_AXI4_arcache(DMA_PCIS_AXI4_arcache),
    .DMA_PCIS_AXI4_arid(DMA_PCIS_AXI4_arid),
    .DMA_PCIS_AXI4_arlen(DMA_PCIS_AXI4_arlen),
    .DMA_PCIS_AXI4_arlock(DMA_PCIS_AXI4_arlock),
    .DMA_PCIS_AXI4_arprot(DMA_PCIS_AXI4_arprot),
    .DMA_PCIS_AXI4_arqos(DMA_PCIS_AXI4_arqos),
    .DMA_PCIS_AXI4_arready(),
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
    .DMA_PCIS_AXI4_awready(),
    .DMA_PCIS_AXI4_awsize(DMA_PCIS_AXI4_awsize),
    .DMA_PCIS_AXI4_awvalid(DMA_PCIS_AXI4_awvalid),
    .DMA_PCIS_AXI4_bid(),
    .DMA_PCIS_AXI4_bready(DMA_PCIS_AXI4_bready),
    .DMA_PCIS_AXI4_bresp(),
    .DMA_PCIS_AXI4_bvalid(),
    .DMA_PCIS_AXI4_rdata(),
    .DMA_PCIS_AXI4_rid(),
    .DMA_PCIS_AXI4_rlast(),
    .DMA_PCIS_AXI4_rready(DMA_PCIS_AXI4_rready),
    .DMA_PCIS_AXI4_rresp(),
    .DMA_PCIS_AXI4_rvalid(),
    .DMA_PCIS_AXI4_wdata(DMA_PCIS_AXI4_wdata),
    .DMA_PCIS_AXI4_wlast(DMA_PCIS_AXI4_wlast),
    .DMA_PCIS_AXI4_wready(),
    .DMA_PCIS_AXI4_wstrb(DMA_PCIS_AXI4_wstrb),
    .DMA_PCIS_AXI4_wvalid(DMA_PCIS_AXI4_wvalid),
    .M02_AXI_0_araddr(),
    .M02_AXI_0_arprot(),
    .M02_AXI_0_arready(M02_AXI_0_arready),
    .M02_AXI_0_arvalid(),
    .M02_AXI_0_awaddr(),
    .M02_AXI_0_awprot(),
    .M02_AXI_0_awready(M02_AXI_0_awready),
    .M02_AXI_0_awvalid(),
    .M02_AXI_0_bready(),
    .M02_AXI_0_bresp(M02_AXI_0_bresp),
    .M02_AXI_0_bvalid(M02_AXI_0_bvalid),
    .M02_AXI_0_rdata(M02_AXI_0_rdata),
    .M02_AXI_0_rready(),
    .M02_AXI_0_rresp(M02_AXI_0_rresp),
    .M02_AXI_0_rvalid(M02_AXI_0_rvalid),
    .M02_AXI_0_wdata(),
    .M02_AXI_0_wready(M02_AXI_0_wready),
    .M02_AXI_0_wstrb(),
    .M02_AXI_0_wvalid(),
    .M_AXI_0_araddr(),
    .M_AXI_0_arburst(),
    .M_AXI_0_arcache(),
    .M_AXI_0_arlen(),
    .M_AXI_0_arlock(),
    .M_AXI_0_arprot(),
    .M_AXI_0_arqos(),
    .M_AXI_0_arready(M_AXI_0_arready),
    .M_AXI_0_arregion(),
    .M_AXI_0_arsize(),
    .M_AXI_0_arvalid(),
    .M_AXI_0_awaddr(),
    .M_AXI_0_awburst(),
    .M_AXI_0_awcache(),
    .M_AXI_0_awlen(),
    .M_AXI_0_awlock(),
    .M_AXI_0_awprot(),
    .M_AXI_0_awqos(),
    .M_AXI_0_awready(M_AXI_0_awready),
    .M_AXI_0_awregion(),
    .M_AXI_0_awsize(),
    .M_AXI_0_awvalid(),
    .M_AXI_0_bready(),
    .M_AXI_0_bresp(M_AXI_0_bresp),
    .M_AXI_0_bvalid(M_AXI_0_bvalid),
    .M_AXI_0_rdata(M_AXI_0_rdata),
    .M_AXI_0_rlast(M_AXI_0_rlast),
    .M_AXI_0_rready(),
    .M_AXI_0_rresp(M_AXI_0_rresp),
    .M_AXI_0_rvalid(M_AXI_0_rvalid),
    .M_AXI_0_wdata(),
    .M_AXI_0_wlast(),
    .M_AXI_0_wready(M_AXI_0_wready),
    .M_AXI_0_wstrb(),
    .M_AXI_0_wvalid(),
    .OCL_AXIL_32_araddr(OCL_AXIL_32_araddr),
    .OCL_AXIL_32_arprot(OCL_AXIL_32_arprot),
    .OCL_AXIL_32_arready(),
    .OCL_AXIL_32_arvalid(OCL_AXIL_32_arvalid),
    .OCL_AXIL_32_awaddr(OCL_AXIL_32_awaddr),
    .OCL_AXIL_32_awprot(OCL_AXIL_32_awprot),
    .OCL_AXIL_32_awready(),
    .OCL_AXIL_32_awvalid(OCL_AXIL_32_awvalid),
    .OCL_AXIL_32_bready(OCL_AXIL_32_bready),
    .OCL_AXIL_32_bresp(),
    .OCL_AXIL_32_bvalid(),
    .OCL_AXIL_32_rdata(),
    .OCL_AXIL_32_rready(OCL_AXIL_32_rready),
    .OCL_AXIL_32_rresp(),
    .OCL_AXIL_32_rvalid(),
    .OCL_AXIL_32_wdata(OCL_AXIL_32_wdata),
    .OCL_AXIL_32_wready(),
    .OCL_AXIL_32_wstrb(OCL_AXIL_32_wstrb),
    .OCL_AXIL_32_wvalid(OCL_AXIL_32_wvalid),
    .UART_1_rxd(UART_1_rxd),
    .UART_1_txd(),
    .aclk_0(aclk_0),
    .aresetn_0(aresetn_0),
    .interrupt_1(),
    .test_status_araddr(),
    .test_status_arprot(),
    .test_status_arready(test_status_arready),
    .test_status_arvalid(),
    .test_status_awaddr(),
    .test_status_awprot(),
    .test_status_awready(test_status_awready),
    .test_status_awvalid(),
    .test_status_bready(),
    .test_status_bresp(test_status_bresp),
    .test_status_bvalid(test_status_bvalid),
    .test_status_rdata(test_status_rdata),
    .test_status_rready(),
    .test_status_rresp(test_status_rresp),
    .test_status_rvalid(test_status_rvalid),
    .test_status_wdata(),
    .test_status_wready(test_status_wready),
    .test_status_wstrb(),
    .test_status_wvalid()*/
  );
  initial begin
    aclk_0 = 0;
    aresetn_0 = 0;
//    forever begin @ (posedge aclk_0)
      BAR1_AXIL_32_awaddr  = 64'b010;
      BAR1_AXIL_32_awprot   = 3'b100;
      BAR1_AXIL_32_awvalid  = 1'b1;
      
      #2
      BAR1_AXIL_32_wdata   = 32'b100000;
      BAR1_AXIL_32_wstrb   = 4'b1;
      BAR1_AXIL_32_wvalid  = 1'b1;
      
      #2
      BAR1_AXIL_araddr     = 64'b010;
      BAR1_AXIL_32_arprot  = 3'b111;
      BAR1_AXIL_32_arvalid = 1;
   
      BAR1_AXIL_32_rready  = 1;
  /*    DDR_ADDR_512_64_araddr=64'b10;
      DDR_ADDR_512_64_arburst= 2'b11;
      DDR_ADDR_512_64_arcache=4'b1000;
      DDR_ADDR_512_64_arid=2'b00;
      DDR_ADDR_512_64_arlen=8'b0;
      DDR_ADDR_512_64_arlock=1;
      DDR_ADDR_512_64_arprot=3'b111;
      DDR_ADDR_512_64_arqos=4'b0;
      DDR_ADDR_512_64_arregion=4'b1;
      DDR_ADDR_512_64_arsize=3'b0;
      DDR_ADDR_512_64_arvalid=1;
      DDR_ADDR_512_64_awaddr=64'b10;
      DDR_ADDR_512_64_awburst=2'b00;
      DDR_ADDR_512_64_awcache=4'b0000;
      DDR_ADDR_512_64_awid=2'b11;
      DDR_ADDR_512_64_awlen=8'b0;
      DDR_ADDR_512_64_awlock=1;
      DDR_ADDR_512_64_awprot=3'b000;
      DDR_ADDR_512_64_awqos=4'b0100;
      DDR_ADDR_512_64_awregion=4'b1000;
      DDR_ADDR_512_64_awsize=3'b000;
      DDR_ADDR_512_64_awvalid=1;
      DDR_ADDR_512_64_bready=1;
      DDR_ADDR_512_64_rready=1;
      DDR_ADDR_512_64_wdata=64'b0;
      DDR_ADDR_512_64_wlast=1;
      DDR_ADDR_512_64_wstrb=8'b0;
      DDR_ADDR_512_64_wvalid=1;
      
      DDR_AXI4_arready=1;
      DDR_AXI4_awready=1;
      DDR_AXI4_bid=2'b0;
      DDR_AXI4_bresp=2'b10;
      DDR_AXI4_bvalid=1;
      DDR_AXI4_rdat=512'b0;
      DDR_AXI4_rid='b00;
      DDR_AXI4_rlast=1;
      DDR_AXI4_rresp=2'b10;
      DDR_AXI4_rvalid=1;
      DDR_AXI4_wready=1;
      DMA_PCIS_AXI4_araddr=64'b0;
      DMA_PCIS_AXI4_arburst=2'b10;
      DMA_PCIS_AXI4_arcache=4'b1;
      DMA_PCIS_AXI4_arid=2'b00;
      DMA_PCIS_AXI4_arlen=8'b1;
      DMA_PCIS_AXI4_arlock=1;
      DMA_PCIS_AXI4_arprot=3'b0;
      DMA_PCIS_AXI4_arqos=4'b1000;
      DMA_PCIS_AXI4_arsize=3'b101;
      DMA_PCIS_AXI4_arvalid=1;
      DMA_PCIS_AXI4_awaddr=64'b0;
      DMA_PCIS_AXI4_awburst=2'b00;
      DMA_PCIS_AXI4_awcache=4'b1;
      DMA_PCIS_AXI4_awid=2'b0;
      DMA_PCIS_AXI4_awlen=8'b10;
      DMA_PCIS_AXI4_awlock=0;
      DMA_PCIS_AXI4_awprot=3'b10;
      DMA_PCIS_AXI4_awqos=4'b1;
      DMA_PCIS_AXI4_awsize=3'b1;
      DMA_PCIS_AXI4_awvalid=1;
      DMA_PCIS_AXI4_bready=0;
      DMA_PCIS_AXI4_rready=1;
      DMA_PCIS_AXI4_wdata=512'b1111;
      DMA_PCIS_AXI4_wlast=0;
      DMA_PCIS_AXI4_wstrb=64'b1;
      DMA_PCIS_AXI4_wvalid=1;
      
      M02_AXI_0_arready=1;
      M02_AXI_0_awready=1;
      M02_AXI_0_bresp=2'b1;
      M02_AXI_0_bvalid=1;
      M02_AXI_0_rdata=32'b100;
      M02_AXI_0_rresp=2'b00;
      M02_AXI_0_rvalid=0;
      M02_AXI_0_wready=0;
      
      M_AXI_0_arready=1;
      M_AXI_0_awready=1;
      M_AXI_0_bresp=2'b00;
      M_AXI_0_bvalid=1'b0;
      M_AXI_0_rdata=64'b0111;
      M_AXI_0_rlast=1;
      M_AXI_0_rresp=2'b0;
      M_AXI_0_rvalid=1;
      M_AXI_0_wready=1;
      
      OCL_AXIL_32_araddr=32'b1001;
      OCL_AXIL_32_arprot=3'b100;
      OCL_AXIL_32_arvalid=1;
      OCL_AXIL_32_awaddr=32'b10;
      OCL_AXIL_32_awprot=3'b100;
      OCL_AXIL_32_awvalid=1;
      OCL_AXIL_32_bready=1;
      OCL_AXIL_32_rready=1;
      OCL_AXIL_32_wdata=2'b100111;
      OCL_AXIL_32_wstrb=4'b111;
      OCL_AXIL_32_wvalid=1;
      
      UART_1_rxd=1'b0;
      
      test_status_arready=1;
      test_status_awready=0;
      test_status_bresp=2'b10;
      test_status_bvalid=1;
      test_status_rdata=32'b0;
      test_status_rresp=2'b0;
      test_status_rvalid=1;
      test_status_wready=1;
*/
     
      #200
    $stop();
  end
always #2 aclk_0=~aclk_0;  
endmodule


