`timescale 1 ps / 1 ps
module nova_subsystem
    import riscv::XLEN;
    import matmul_pkg::*;
    import matmul_axi_pkg::*;
    (
input [63:0] BAR1_araddr,
input [1:0]  BAR1_arburst,
input [3:0]  BAR1_arcache,
input [4:0]  BAR1_arid,                /////////
input [7:0]  BAR1_arlen,
input [0:0]  BAR1_arlock,
input [2:0]  BAR1_arprot,
input [3:0]  BAR1_arqos,
output [0:0] BAR1_arready,
input [2:0]  BAR1_arsize,
input [0:0]  BAR1_arvalid,
input [63:0] BAR1_awaddr,
input [1:0]  BAR1_awburst,
input [3:0]  BAR1_awcache,
input [4:0]  BAR1_awid,
input [7:0]  BAR1_awlen,
input [0:0]  BAR1_awlock,
input [2:0]  BAR1_awprot,
input [3:0]  BAR1_awqos,
output [0:0] BAR1_awready,
input [2:0]  BAR1_awsize,
input [0:0]  BAR1_awvalid,
output [4:0] BAR1_bid,
input [0:0]  BAR1_bready,
output [1:0] BAR1_bresp,
output [0:0] BAR1_bvalid,
output [63:0]BAR1_rdata,
output [4:0] BAR1_rid,
output [0:0] BAR1_rlast,
input [0:0]  BAR1_rready,
output [1:0] BAR1_rresp,
output [0:0] BAR1_rvalid,
input [63:0] BAR1_wdata,
input [0:0]  BAR1_wlast,
output [0:0] BAR1_wready,
input [7:0]  BAR1_wstrb,
input [0:0]  BAR1_wvalid,
  input        arst_n,
  input        arst_ndm_n,
  output [63:0]DDR_m_araddr,
  output [1:0]DDR_m_arburst,
  output [3:0]DDR_m_arcache,
  output [4:0]DDR_m_arid,
  output [7:0]DDR_m_arlen,
  output [0:0]DDR_m_arlock,
  output [2:0]DDR_m_arprot,
  output [3:0]DDR_m_arqos,
  input [0:0]DDR_m_arready,
  output [3:0]DDR_m_arregion,
  output [2:0]DDR_m_arsize,
  output [0:0]DDR_m_arvalid,
  output [63:0]DDR_m_awaddr,
  output [1:0]DDR_m_awburst,
  output [3:0]DDR_m_awcache,
  output [4:0]DDR_m_awid,
  output [7:0]DDR_m_awlen,
  output [0:0]DDR_m_awlock,
  output [2:0]DDR_m_awprot,
  output [3:0]DDR_m_awqos,
  input [0:0]DDR_m_awready,
  output [3:0]DDR_m_awregion,
  output [2:0]DDR_m_awsize,
  output [0:0]DDR_m_awvalid,
  input [4:0]DDR_m_bid,
  output [0:0]DDR_m_bready,
  input [1:0]DDR_m_bresp,
  input [0:0]DDR_m_bvalid,
  input [63:0]DDR_m_rdata,
  input [4:0]DDR_m_rid,
  input [0:0]DDR_m_rlast,
  output [0:0]DDR_m_rready,
  input [1:0]DDR_m_rresp,
  input [0:0]DDR_m_rvalid,
  output [63:0]DDR_m_wdata,
  output [0:0]DDR_m_wlast,
  input [0:0]DDR_m_wready,
  output [7:0]DDR_m_wstrb,
  output [0:0]DDR_m_wvalid,
  input UART_0_rxd,
  output UART_0_txd,
  output interrupt_0,
  input s_axi_aresetn_0,
  input s_axi_aclk_0);

  logic [63:0]MTML_m_araddr;
  logic [1:0]MTML_m_arburst;
  logic [3:0]MTML_m_arcache;
  logic [4:0]MTML_m_arid;
  logic [7:0]MTML_m_arlen;
  logic [0:0]MTML_m_arlock;
  logic [2:0]MTML_m_arprot;
  logic [3:0]MTML_m_arqos;
  logic [0:0]MTML_m_arready;
  logic [3:0]MTML_m_arregion;
  logic [2:0]MTML_m_arsize;
  logic [0:0]MTML_m_arvalid;
  logic [63:0]MTML_m_awaddr;
  logic [1:0]MTML_m_awburst;
  logic [3:0]MTML_m_awcache;
  logic [4:0]MTML_m_awid;
  logic [7:0]MTML_m_awlen;
  logic [0:0]MTML_m_awlock;
  logic [2:0]MTML_m_awprot;
  logic [3:0]MTML_m_awqos;
  logic [0:0]MTML_m_awready;
  logic [3:0]MTML_m_awregion;
  logic [2:0]MTML_m_awsize;
  logic [0:0]MTML_m_awvalid;
  logic [4:0]MTML_m_bid;
  logic [0:0]MTML_m_bready;
  logic [1:0]MTML_m_bresp;
  logic [0:0]MTML_m_bvalid;
  logic [63:0]MTML_m_rdata;
  logic [4:0]MTML_m_rid;
  logic [0:0]MTML_m_rlast;
  logic [0:0]MTML_m_rready;
  logic [1:0]MTML_m_rresp;
  logic [0:0]MTML_m_rvalid;
  logic [63:0]MTML_m_wdata;
  logic [0:0]MTML_m_wlast;
  logic [0:0]MTML_m_wready;
  logic [7:0]MTML_m_wstrb;
  logic [0:0]MTML_m_wvalid;
  logic [63:0]MTML_s_araddr;
  logic [1:0]MTML_s_arburst;
  logic [3:0]MTML_s_arcache;
  logic [4:0]MTML_s_arid;
  logic [7:0]MTML_s_arlen;
  logic [0:0]MTML_s_arlock;
  logic [2:0]MTML_s_arprot;
  logic [3:0]MTML_s_arqos;
  logic [0:0]MTML_s_arready;
  logic [2:0]MTML_s_arsize;
  logic [0:0]MTML_s_arvalid;
  logic [63:0]MTML_s_awaddr;
  logic [1:0]MTML_s_awburst;
  logic [3:0]MTML_s_awcache;
  logic [4:0]MTML_s_awid;
  logic [7:0]MTML_s_awlen;
  logic [0:0]MTML_s_awlock;
  logic [2:0]MTML_s_awprot;
  logic [3:0]MTML_s_awqos;
  logic [0:0]MTML_s_awready;
  logic [2:0]MTML_s_awsize;
  logic [0:0]MTML_s_awvalid;
  logic [4:0]MTML_s_bid;
  logic [0:0]MTML_s_bready;
  logic [1:0]MTML_s_bresp;
  logic [0:0]MTML_s_bvalid;
  logic [63:0]MTML_s_rdata;
  logic [4:0]MTML_s_rid;
  logic [0:0]MTML_s_rlast;
  logic [0:0]MTML_s_rready;
  logic [1:0]MTML_s_rresp;
  logic [0:0]MTML_s_rvalid;
  logic [63:0]MTML_s_wdata;
  logic [0:0]MTML_s_wlast;
  logic [0:0]MTML_s_wready;
  logic [7:0]MTML_s_wstrb;
  logic [0:0]MTML_s_wvalid;
  
  logic  [63:0]hydra_s_araddr;
  logic [1:0]hydra_s_arburst;
  logic [3:0]hydra_s_arcache;
  logic [4:0]hydra_s_arid;
  logic [7:0]hydra_s_arlen;
  logic [0:0]hydra_s_arlock;
  logic [2:0]hydra_s_arprot;
  logic [3:0]hydra_s_arqos;
  logic [0:0]hydra_s_arready;
  logic [2:0]hydra_s_arsize;
  logic [0:0]hydra_s_arvalid;
  logic [63:0]hydra_s_awaddr;
  logic [1:0]hydra_s_awburst;
  logic [3:0]hydra_s_awcache;
  logic [4:0]hydra_s_awid;
  logic [7:0]hydra_s_awlen;
  logic [0:0]hydra_s_awlock;
  logic [2:0]hydra_s_awprot;
  logic [3:0]hydra_s_awqos;
  logic [0:0]hydra_s_awready;
  logic [2:0]hydra_s_awsize;
  logic [0:0]hydra_s_awvalid;
  logic [4:0]hydra_s_bid;
  logic [0:0]hydra_s_bready;
  logic [1:0]hydra_s_bresp;
  logic [0:0]hydra_s_bvalid;
  logic [63:0]hydra_s_rdata;
  logic [4:0]hydra_s_rid;
  logic [0:0]hydra_s_rlast;
  logic [0:0]hydra_s_rready;
  logic [1:0]hydra_s_rresp;
  logic [0:0]hydra_s_rvalid;
  logic [63:0]hydra_s_wdata;
  logic [0:0]hydra_s_wlast;
  logic [0:0]hydra_s_wready;
  logic [7:0]hydra_s_wstrb;
  logic [0:0]hydra_s_wvalid;
  logic arst_n;
  logic arst_ndm_n;
  logic [63:0]hydra_s_awaddr_mask;
  logic [63:0]hydra_s_araddr_mask;
  
   assign hydra_s_awaddr_mask = hydra_s_awaddr & 64'h0000_0000_ffff_ffff;
   assign hydra_s_araddr_mask = hydra_s_araddr & 64'h0000_0000_ffff_ffff;
   

   xlx_design_subsystem xlx_subsys(
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

    .UART_0_rxd(UART_0_rxd),                                       //   input        
    .UART_0_txd(UART_0_txd),                            //   output       
    .BAR1_araddr(BAR1_araddr),
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
    .s_axi_aclk_0(s_axi_aclk_0),
    .s_axi_aresetn_0(s_axi_aresetn_0),
    .interrupt_0(interrupt_0),                          //   input        
    .SMU_m_araddr(),
    .SMU_m_arburst(),
    .SMU_m_arcache(),
    .SMU_m_arid(),
    .SMU_m_arlen(),
    .SMU_m_arlock(),
    .SMU_m_arprot(),
    .SMU_m_arqos(),
    .SMU_m_arready('b0),
    .SMU_m_arregion(),
    .SMU_m_arsize(),
    .SMU_m_arvalid(),
    .SMU_m_awaddr(),
    .SMU_m_awburst(),
    .SMU_m_awcache(),
    .SMU_m_awid(),
    .SMU_m_awlen(),
    .SMU_m_awlock(),
    .SMU_m_awprot(),
    .SMU_m_awqos(),
    .SMU_m_awready('b0),
    .SMU_m_awregion(),
    .SMU_m_awsize(),
    .SMU_m_awvalid(),
    .SMU_m_bid('b0),
    .SMU_m_bready(),
    .SMU_m_bresp('b0),
    .SMU_m_bvalid('b0),
    .SMU_m_rdata('b0),
    .SMU_m_rid('b0),
    .SMU_m_rlast('b0),
    .SMU_m_rready(),
    .SMU_m_rresp('b0),
    .SMU_m_rvalid('b0),
    .SMU_m_wdata(),
    .SMU_m_wlast(),
    .SMU_m_wready('b0),
    .SMU_m_wstrb(),
    .SMU_m_wvalid(),
    .ethernet_m_araddr(),
    .ethernet_m_arburst(),
    .ethernet_m_arcache(),
    .ethernet_m_arid(),
    .ethernet_m_arlen(),
    .ethernet_m_arlock(),
    .ethernet_m_arprot(),
    .ethernet_m_arqos(),
    .ethernet_m_arready('b0),
    .ethernet_m_arregion(),
    .ethernet_m_arsize(),
    .ethernet_m_arvalid(),
    .ethernet_m_awaddr(),
    .ethernet_m_awburst(),
    .ethernet_m_awcache(),
    .ethernet_m_awid(),
    .ethernet_m_awlen(),
    .ethernet_m_awlock(),
    .ethernet_m_awprot(),
    .ethernet_m_awqos(),
    .ethernet_m_awready('b0),
    .ethernet_m_awregion(),
    .ethernet_m_awsize(),
    .ethernet_m_awvalid(),
    .ethernet_m_bid('b0),
    .ethernet_m_bready(),
    .ethernet_m_bresp('b0),
    .ethernet_m_bvalid('b0),
    .ethernet_m_rdata('b0),
    .ethernet_m_rid('b0),
    .ethernet_m_rlast('b0),
    .ethernet_m_rready(),
    .ethernet_m_rresp('b0),
    .ethernet_m_rvalid('b0),
    .ethernet_m_wdata(),
    .ethernet_m_wlast(),
    .ethernet_m_wready('b0),
    .ethernet_m_wstrb(),
    .ethernet_m_wvalid(),
  .hydra_s_araddr(hydra_s_araddr_mask),
  .hydra_s_arburst(hydra_s_arburst),
  .hydra_s_arcache(hydra_s_arcache),
  .hydra_s_arid(hydra_s_arid),
  .hydra_s_arlen(hydra_s_arlen),
  .hydra_s_arlock(hydra_s_arlock),
  .hydra_s_arprot(hydra_s_arprot),
  .hydra_s_arqos('b0),
  .hydra_s_arready(hydra_s_arready),
  .hydra_s_arsize(hydra_s_arsize),
  .hydra_s_arvalid(hydra_s_arvalid),
  .hydra_s_awaddr(hydra_s_awaddr_mask),
  .hydra_s_awburst(hydra_s_awburst),
  .hydra_s_awcache(hydra_s_awcache),
  .hydra_s_awid(hydra_s_awid),
  .hydra_s_awlen(hydra_s_awlen),
  .hydra_s_awlock(hydra_s_awlock),
  .hydra_s_awprot(hydra_s_awprot),
  .hydra_s_awqos('b0),
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

//DDR SIGNAL
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
  .DDR_m_wvalid(DDR_m_wvalid)

);
    
hydra_subsystem hydra_subsystem_wrapper 
   (
      .clk        (s_axi_aclk_0),
      .arst_n     (arst_n),
      .arst_ndm_n (arst_ndm_n),

      // ---------
      // CP Interface
      // ---------

      // CP Decode Interface
      .cp2core_dec_val      ('b0),
      .cp2core_dec_src_val  ({'0,'0}),
      .cp2core_dec_src_xidx ({'0,'0}),

      .cp2core_dec_dst_val  ('b0),
      .cp2core_dec_dst_xidx ('b0), 

      .cp2core_dec_csr_val  ('b0),
      .cp2core_dec_ld_val   ('b0),
      .cp2core_dec_st_val   ('b0),

      // CP Dispatch Interface (Instruction & Operand)
      .core2cp_disp_rdy (),

      // CP Early Result Interface
      .cp2core_early_res_val  ('b0),
      .cp2core_early_res_rd   ('b0),
      .cp2core_early_res      ('b0),

      // CP Result Interface
      .cp2core_res_val        ('b0),
      .cp2core_res_rd         ('b0),
      .cp2core_res            ('b0),

      // CP Instruction Complete Interface
      .cp2core_cmpl_instr_val ('b0),
      .cp2core_cmpl_ld_val    ('b0),
      .cp2core_cmpl_st_val    ('b0),

      // ---------
      // AXI Master Interface
      // ---------
      
      // Read Address Channel
      .maxi_arvalid (hydra_s_arvalid),
      .maxi_arready (hydra_s_arready),
      .maxi_arid    (hydra_s_arid),
      .maxi_araddr  (hydra_s_araddr),
      .maxi_arlen   (hydra_s_arlen),
      .maxi_arsize  (hydra_s_arsize),
      .maxi_arburst (hydra_s_arburst),
      .maxi_arlock  (hydra_s_arlock),
      .maxi_arcache (hydra_s_arcache),
      .maxi_arprot  (hydra_s_arprot),
      
      // Write Address Channel
      .maxi_awvalid (hydra_s_awvalid),
      .maxi_awready (hydra_s_awready),
      .maxi_awid    (hydra_s_awid),
      .maxi_awaddr  (hydra_s_awaddr),
      .maxi_awlen   (hydra_s_awlen),
      .maxi_awsize  (hydra_s_awsize),
      .maxi_awburst (hydra_s_awburst),
      .maxi_awlock  (hydra_s_awlock),
      .maxi_awcache (hydra_s_awcache),
      .maxi_awprot  (hydra_s_awprot),
      
      // Write Data Channel
      .maxi_wvalid  (hydra_s_wvalid),
      .maxi_wready  (hydra_s_wready),
      .maxi_wdata   (hydra_s_wdata),
      .maxi_wstrb   (hydra_s_wstrb),
      .maxi_wlast   (hydra_s_wlast),
      
      // Read Response Channel
      .maxi_rvalid  (hydra_s_rvalid),
      .maxi_rready  (hydra_s_rready),
      .maxi_rid     (hydra_s_rid),
      .maxi_rdata   (hydra_s_rdata),
      .maxi_rresp   (hydra_s_rresp),
      .maxi_rlast   (hydra_s_rlast),
      
      // Write Response Channel
      .maxi_bvalid  (hydra_s_bvalid),
      .maxi_bready  (hydra_s_bready),
      .maxi_bid     (hydra_s_bid),
      .maxi_bresp   (hydra_s_bresp),

      // ---------
      // AXI Slave Interface
      // ---------
      
      // Read Address Channel
      .saxi_arvalid ('b0),
      .saxi_arready (),
      .saxi_arid    ('b0),
      .saxi_araddr  ('b0),
      .saxi_arlen   ('b0),
      .saxi_arsize  ('b0),
      .saxi_arburst ('b0),
      .saxi_arlock  ('b0),
      .saxi_arcache ('b0),
      .saxi_arprot  ('b0),
      .saxi_awvalid ('b0),
      .saxi_awready (),
      .saxi_awid    ('b0),
      .saxi_awaddr  ('b0),
      .saxi_awlen   ('b0),
      .saxi_awsize  ('b0),
      .saxi_awburst ('b0),
      .saxi_awlock  ('b0),
      .saxi_awcache ('b0),
      .saxi_awprot  ('b0),
      .saxi_wvalid  ('b0),
      .saxi_wready  (),
      .saxi_wdata   ('b0),
      .saxi_wstrb   ('b0),
      .saxi_wlast   ('b0),
      .saxi_rvalid  (),
      .saxi_rready  ('b0),
      .saxi_rid     (),
      .saxi_rdata   (),
      .saxi_rresp   (),
      .saxi_rlast   (),
      .saxi_bvalid  (),
      .saxi_bready  ('b0),
      .saxi_bid     (),
      .saxi_bresp   (),

      // ---------
      // System Management Unit (SMU) Interface
      // ---------

      .hartid        ('b0),
      .nmi_trap_addr ('b0),

      // Boot Control
      // auto_boot: 0: wait for boot_val, 1: boot imm after res
      .auto_boot     ('b1),
      .boot_val      ('b0),
      .boot_addr     ('h0000_0000_8000_0000),

      // ---------
      // Interrupt Interface
      // ---------
      .irq_in  ({7'b0, interrupt_0}),

      // ---------
      // Debug TAP Port (IEEE 1149 JTAG Test Access Port)
      // ---------
      // TBC: debug-module must be resetable by power-on-reset & test-reset
      .tck    ('b0),
      .tms    ('b0),
      .tdi    ('b0),
      .tdo    (),
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
      .MTML_s_wvalid(MTML_s_wvalid)
   ); 
endmodule