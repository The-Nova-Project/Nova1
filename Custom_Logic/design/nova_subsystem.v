`timescale 1 ps / 1 ps
module nova_subsystem(
  input [63:0] AXI_0_araddr,
  input [2:0]  AXI_0_arprot,
  output       AXI_0_arready,
  input        AXI_0_arvalid,
  input [63:0] AXI_0_awaddr,
  input [2:0]  AXI_0_awprot,
  output       AXI_0_awready,
  input        AXI_0_awvalid,
  input        AXI_0_bready,
  output [1:0] AXI_0_bresp,
  output       AXI_0_bvalid,
  output [31:0]AXI_0_rdata,
  input        AXI_0_rready,
  output [1:0] AXI_0_rresp,
  output       AXI_0_rvalid,
  input [31:0] AXI_0_wdata,
  output       AXI_0_wready,
  input [3:0]  AXI_0_wstrb,
  input        AXI_0_wvalid,
  input   [63:0] DMA_PCIS_AXI4_araddr,
  input   [1:0] DMA_PCIS_AXI4_arburst,
  input   [3:0] DMA_PCIS_AXI4_arcache,
  input   [15:0] DMA_PCIS_AXI4_arid,
  input   [7:0] DMA_PCIS_AXI4_arlen,
  input   [0:0] DMA_PCIS_AXI4_arlock,
  input   [2:0] DMA_PCIS_AXI4_arprot,
  input   [3:0] DMA_PCIS_AXI4_arqos,
  output   [0:0] DMA_PCIS_AXI4_arready,
  input   [2:0] DMA_PCIS_AXI4_arsize,
  input   [0:0] DMA_PCIS_AXI4_arvalid,
  input   [63:0] DMA_PCIS_AXI4_awaddr,
  input   [1:0] DMA_PCIS_AXI4_awburst,
  input   [3:0] DMA_PCIS_AXI4_awcache,
  input   [15:0] DMA_PCIS_AXI4_awid,
  input   [7:0] DMA_PCIS_AXI4_awlen,
  input   [0:0] DMA_PCIS_AXI4_awlock,
  input   [2:0] DMA_PCIS_AXI4_awprot,
  input   [3:0] DMA_PCIS_AXI4_awqos,
  output   [0:0] DMA_PCIS_AXI4_awready,
  input   [2:0] DMA_PCIS_AXI4_awsize,
  input   [0:0] DMA_PCIS_AXI4_awvalid,
  output   [15:0] DMA_PCIS_AXI4_bid,
  input   [0:0] DMA_PCIS_AXI4_bready,
  output   [1:0] DMA_PCIS_AXI4_bresp,
  output   [0:0] DMA_PCIS_AXI4_bvalid,
  output   [511:0] DMA_PCIS_AXI4_rdata,
  output   [15:0] DMA_PCIS_AXI4_rid,
  output   [0:0] DMA_PCIS_AXI4_rlast,
  input   [0:0] DMA_PCIS_AXI4_rready,
  output   [1:0] DMA_PCIS_AXI4_rresp,
  output   [0:0] DMA_PCIS_AXI4_rvalid,
  input   [511:0] DMA_PCIS_AXI4_wdata,
  input   [0:0] DMA_PCIS_AXI4_wlast,
  output   [0:0] DMA_PCIS_AXI4_wready,
  input   [63:0] DMA_PCIS_AXI4_wstrb,
  input   [0:0] DMA_PCIS_AXI4_wvalid,
  output [63:0]DDR_AXI4_araddr,
  output [1:0]DDR_AXI4_arburst,
  output [3:0]DDR_AXI4_arcache,
  output [15:0]DDR_AXI4_arid,
  output [7:0]DDR_AXI4_arlen,
  output [0:0]DDR_AXI4_arlock,
  output [2:0]DDR_AXI4_arprot,
  output [3:0]DDR_AXI4_arqos,
  input [0:0]DDR_AXI4_arready,
  output [3:0]DDR_AXI4_arregion,
  output [2:0]DDR_AXI4_arsize,
  output [0:0]DDR_AXI4_arvalid,
  output [63:0]DDR_AXI4_awaddr,
  output [1:0]DDR_AXI4_awburst,
  output [3:0]DDR_AXI4_awcache,
  output [15:0]DDR_AXI4_awid,
  output [7:0]DDR_AXI4_awlen,
  output [0:0]DDR_AXI4_awlock,
  output [2:0]DDR_AXI4_awprot,
  output [3:0]DDR_AXI4_awqos,
  input [0:0]DDR_AXI4_awready,
  output [3:0]DDR_AXI4_awregion,
  output [2:0]DDR_AXI4_awsize,
  output [0:0]DDR_AXI4_awvalid,
  input [15:0]DDR_AXI4_bid,
  output [0:0]DDR_AXI4_bready,
  input [1:0]DDR_AXI4_bresp,
  input [0:0]DDR_AXI4_bvalid,
  input [511:0]DDR_AXI4_rdata,
  input [15:0]DDR_AXI4_rid,
  input [0:0]DDR_AXI4_rlast,
  output [0:0]DDR_AXI4_rready,
  input [1:0]DDR_AXI4_rresp,
  input [0:0]DDR_AXI4_rvalid,
  output [511:0]DDR_AXI4_wdata,
  output [0:0]DDR_AXI4_wlast,
  input [0:0]DDR_AXI4_wready,
  output [63:0]DDR_AXI4_wstrb,
  output [0:0]DDR_AXI4_wvalid,
  input        s_axi_aclk_0,
  input        s_axi_aresetn_0,
  input        arst_n,
  input        [31:0]OCL_AXI4L_araddr,
  input        [2:0]OCL_AXI4L_arprot,
  output       [0:0]OCL_AXI4L_arready,
  input        [0:0]OCL_AXI4L_arvalid,
  input        [31:0]OCL_AXI4L_awaddr,
  input        [2:0]OCL_AXI4L_awprot,
  output       [0:0]OCL_AXI4L_awready,
  input        [0:0]OCL_AXI4L_awvalid,
  input        [0:0]OCL_AXI4L_bready,
  output       [1:0]OCL_AXI4L_bresp,
  output       [0:0]OCL_AXI4L_bvalid,
  output       [31:0]OCL_AXI4L_rdata,
  input        [0:0]OCL_AXI4L_rready,
  output       [1:0]OCL_AXI4L_rresp,
  output       [0:0]OCL_AXI4L_rvalid,
  input        [31:0]OCL_AXI4L_wdata,
  output       [0:0]OCL_AXI4L_wready,
  input        [3:0]OCL_AXI4L_wstrb,
  input        [0:0]OCL_AXI4L_wvalid,
  output       interrupt_1,

  input        trst_n,
  input        p_rst_n);

  wire       tx;
  wire       rx;
  wire        tck;
  wire       arst_ndm;
  wire        tms;
  wire        tdi;
  wire       tdo;
  wire       interrupt_0;
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
  wire [15:0]M03_AXI_DDR_bid;
  wire [0:0]M03_AXI_DDR_bready;
  wire [1:0]M03_AXI_DDR_bresp;
  wire [0:0]M03_AXI_DDR_bvalid;
  wire [63:0]M03_AXI_DDR_rdata;
  wire [15:0]M03_AXI_DDR_rid;
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
  wire rst_ndm_n;
  wire rst_ndm;


  nova_project nova_project_i                               //bram
   (     
        .M02_AXI_MTML_araddr(),
        .M02_AXI_MTML_arburst(),
        .M02_AXI_MTML_arcache(),
        .M02_AXI_MTML_arid(),
        .M02_AXI_MTML_arlen(),
        .M02_AXI_MTML_arlock(),
        .M02_AXI_MTML_arprot(),
        .M02_AXI_MTML_arqos(),
        .M02_AXI_MTML_arready('0),
        .M02_AXI_MTML_arregion(),
        .M02_AXI_MTML_arsize(),
        .M02_AXI_MTML_arvalid(),
        .M02_AXI_MTML_awaddr(),
        .M02_AXI_MTML_awburst(),
        .M02_AXI_MTML_awcache(),
        .M02_AXI_MTML_awid(),
        .M02_AXI_MTML_awlen(),
        .M02_AXI_MTML_awlock(),
        .M02_AXI_MTML_awprot(),
        .M02_AXI_MTML_awqos(),
        .M02_AXI_MTML_awready('0),
        .M02_AXI_MTML_awregion(),
        .M02_AXI_MTML_awsize(),
        .M02_AXI_MTML_awvalid(),
        .M02_AXI_MTML_bid(),
        .M02_AXI_MTML_bready(),
        .M02_AXI_MTML_bresp('0),
        .M02_AXI_MTML_bvalid('0),
        .M02_AXI_MTML_rdata('0),
        .M02_AXI_MTML_rid('0),
        .M02_AXI_MTML_rlast('0),
        .M02_AXI_MTML_rready(),
        .M02_AXI_MTML_rresp('0),
        .M02_AXI_MTML_rvalid('0),
        .M02_AXI_MTML_wdata(),
        .M02_AXI_MTML_wlast(),
        .M02_AXI_MTML_wready('0),
        .M02_AXI_MTML_wstrb(),
        .M02_AXI_MTML_wvalid(),
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
        .M03_AXI_DDR_bid(M03_AXI_DDR_bid[4:0]),
        .M03_AXI_DDR_bready(M03_AXI_DDR_bready),
        .M03_AXI_DDR_bresp(M03_AXI_DDR_bresp),
        .M03_AXI_DDR_bvalid(M03_AXI_DDR_bvalid),
        .M03_AXI_DDR_rdata(M03_AXI_DDR_rdata),
        .M03_AXI_DDR_rid(M03_AXI_DDR_rid[4:0]),
        .M03_AXI_DDR_rlast(M03_AXI_DDR_rlast),
        .M03_AXI_DDR_rready(M03_AXI_DDR_rready),
        .M03_AXI_DDR_rresp(M03_AXI_DDR_rresp),
        .M03_AXI_DDR_rvalid(M03_AXI_DDR_rvalid),
        .M03_AXI_DDR_wdata(M03_AXI_DDR_wdata),
        .M03_AXI_DDR_wlast(M03_AXI_DDR_wlast),
        .M03_AXI_DDR_wready(M03_AXI_DDR_wready),
        .M03_AXI_DDR_wstrb(M03_AXI_DDR_wstrb),
        .M03_AXI_DDR_wvalid(M03_AXI_DDR_wvalid),
        .S02_AXI_MTML_araddr('0),
        .S02_AXI_MTML_arburst('0),
        .S02_AXI_MTML_arcache('0),
        .S02_AXI_MTML_arid('0),
        .S02_AXI_MTML_arlen('0),
        .S02_AXI_MTML_arlock('0),
        .S02_AXI_MTML_arprot('0),
        .S02_AXI_MTML_arqos(),
        .S02_AXI_MTML_arready(),
        .S02_AXI_MTML_arsize('0),
        .S02_AXI_MTML_arvalid('0),
        .S02_AXI_MTML_awaddr('0),
        .S02_AXI_MTML_awburst('0),
        .S02_AXI_MTML_awcache('0),
        .S02_AXI_MTML_awid('0),
        .S02_AXI_MTML_awlen('0),
        .S02_AXI_MTML_awlock('0),
        .S02_AXI_MTML_awprot('0),
        .S02_AXI_MTML_awqos('0),
        .S02_AXI_MTML_awready(),
        .S02_AXI_MTML_awsize('0),
        .S02_AXI_MTML_awvalid('0),
        .S02_AXI_MTML_bid(),
        .S02_AXI_MTML_bready('0),
        .S02_AXI_MTML_bresp(),
        .S02_AXI_MTML_bvalid(),
        .S02_AXI_MTML_rdata(),
        .S02_AXI_MTML_rid(),
        .S02_AXI_MTML_rlast(),
        .S02_AXI_MTML_rready('0),
        .S02_AXI_MTML_rresp(),
        .S02_AXI_MTML_rvalid(),
        .S02_AXI_MTML_wdata('0),
        .S02_AXI_MTML_wlast('0),
        .S02_AXI_MTML_wready(),
        .S02_AXI_MTML_wstrb('0),
        .S02_AXI_MTML_wvalid('0),
        .S01_AXI_0_araddr({32'b0,S01_AXI_0_araddr[31:0]}),
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
        .S01_AXI_0_awaddr({32'b0,S01_AXI_0_awaddr[31:0]}),
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
        .S_AXI_0_araddr(AXI_0_araddr),
        .S_AXI_0_arprot(AXI_0_arprot),
        .S_AXI_0_arready(AXI_0_arready),
        .S_AXI_0_arvalid(AXI_0_arvalid),
        .S_AXI_0_awaddr(AXI_0_awaddr),
        .S_AXI_0_awprot(AXI_0_awprot),
        .S_AXI_0_awready(AXI_0_awready),
        .S_AXI_0_awvalid(AXI_0_awvalid),
        .S_AXI_0_bready(AXI_0_bready),
        .S_AXI_0_bresp(AXI_0_bresp),
        .S_AXI_0_bvalid(AXI_0_bvalid),
        .S_AXI_0_rdata(AXI_0_rdata),
        .S_AXI_0_rready(AXI_0_rready),
        .S_AXI_0_rresp(AXI_0_rresp),
        .S_AXI_0_rvalid(AXI_0_rvalid),
        .S_AXI_0_wdata(AXI_0_wdata),
        .S_AXI_0_wready(AXI_0_wready),
        .S_AXI_0_wstrb(AXI_0_wstrb),
        .S_AXI_0_wvalid(AXI_0_wvalid),
	    .UART_0_rxd(rx),
    	.UART_0_txd(tx),
    	.interrupt_0(interrupt_0),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));
/*
rstgen u_rstgen(
    .clk_i	(s_axi_aclk_0),
    .rst_ni	(arst_n & (~rst_ndm)),
    .test_mode_i('0),
    .rst_no	(rst_ndm_n),
    .init_no	()
);*/

hydra_su u_hydra_su 
   (
      .clk        (s_axi_aclk_0),
      .arst_n     (arst_n),
      .arst_ndm_n (arst_n & (~arst_ndm)),

      // ---------
      // CP Interface
      // ---------

      // CP Decode Interface
      .cp2core_dec_val      ('0),
      .cp2core_dec_src_val  ({'0,'0}),
      .cp2core_dec_src_xidx ({'0,'0}),

      .cp2core_dec_dst_val  ('0),
      .cp2core_dec_dst_xidx ('0), 

      .cp2core_dec_csr_val  ('0),
      .cp2core_dec_ld_val   ('0),
      .cp2core_dec_st_val   ('0),

      // CP Dispatch Interface (Instruction & Operand)
      .core2cp_disp_rdy (),

      // CP Early Result Interface
      .cp2core_early_res_val  ('0),
      .cp2core_early_res_rd   ('0),
      .cp2core_early_res      ('0),

      // CP Result Interface
      .cp2core_res_val        ('0),
      .cp2core_res_rd         ('0),
      .cp2core_res            ('0),

      // CP Instruction Complete Interface
      .cp2core_cmpl_instr_val ('0),
      .cp2core_cmpl_ld_val    ('0),
      .cp2core_cmpl_st_val    ('0),

      // ---------
      // AXI Master Interface
      // ---------
      
      // Read Address Channel
      .maxi_arvalid (S01_AXI_0_arvalid),
      .maxi_arready (S01_AXI_0_arready),
      .maxi_arid    (S01_AXI_0_arid),
      .maxi_araddr  (S01_AXI_0_araddr),
      .maxi_arlen   (S01_AXI_0_arlen),
      .maxi_arsize  (S01_AXI_0_arsize),
      .maxi_arburst (S01_AXI_0_arburst),
      .maxi_arlock  (S01_AXI_0_arlock),
      .maxi_arcache (S01_AXI_0_arcache),
      .maxi_arprot  (S01_AXI_0_arprot),
      
      // Write Address Channel
      .maxi_awvalid (S01_AXI_0_awvalid),
      .maxi_awready (S01_AXI_0_awready),
      .maxi_awid    (S01_AXI_0_awid),
      .maxi_awaddr  (S01_AXI_0_awaddr),
      .maxi_awlen   (S01_AXI_0_awlen),
      .maxi_awsize  (S01_AXI_0_awsize),
      .maxi_awburst (S01_AXI_0_awburst),
      .maxi_awlock  (S01_AXI_0_awlock),
      .maxi_awcache (S01_AXI_0_awcache),
      .maxi_awprot  (S01_AXI_0_awprot),
      
      // Write Data Channel
      .maxi_wvalid  (S01_AXI_0_wvalid),
      .maxi_wready  (S01_AXI_0_wready),
      .maxi_wdata   (S01_AXI_0_wdata),
      .maxi_wstrb   (S01_AXI_0_wstrb),
      .maxi_wlast   (S01_AXI_0_wlast),
      
      // Read Response Channel
      .maxi_rvalid  (S01_AXI_0_rvalid),
      .maxi_rready  (S01_AXI_0_rready),
      .maxi_rid     (S01_AXI_0_rid),
      .maxi_rdata   (S01_AXI_0_rdata),
      .maxi_rresp   (S01_AXI_0_rresp),
      .maxi_rlast   (S01_AXI_0_rlast),
      
      // Write Response Channel
      .maxi_bvalid  (S01_AXI_0_bvalid),
      .maxi_bready  (S01_AXI_0_bready),
      .maxi_bid     (S01_AXI_0_bid),
      .maxi_bresp   (S01_AXI_0_bresp),

      // ---------
      // AXI Slave Interface
      // ---------
      
      // Read Address Channel
      .saxi_arvalid ('0),
      .saxi_arready (),
      .saxi_arid    ('0),
      .saxi_araddr  ('0),
      .saxi_arlen   ('0),
      .saxi_arsize  ('0),
      .saxi_arburst ('0),
      .saxi_arlock  ('0),
      .saxi_arcache ('0),
      .saxi_arprot  ('0),
      
      // Write Address Channel
      .saxi_awvalid ('0),
      .saxi_awready (),
      .saxi_awid    ('0),
      .saxi_awaddr  ('0),
      .saxi_awlen   ('0),
      .saxi_awsize  ('0),
      .saxi_awburst ('0),
      .saxi_awlock  ('0),
      .saxi_awcache ('0),
      .saxi_awprot  ('0),
      
      // Write Data Channel
      .saxi_wvalid  ('0),
      .saxi_wready  (),
      .saxi_wdata   ('0),
      .saxi_wstrb   ('0),
      .saxi_wlast   ('0),
      
      // Read Response Channel
      .saxi_rvalid  (),
      .saxi_rready  ('0),
      .saxi_rid     (),
      .saxi_rdata   (),
      .saxi_rresp   (),
      .saxi_rlast   (),
      
      // Write Response Channel
      .saxi_bvalid  (),
      .saxi_bready  ('0),
      .saxi_bid     (),
      .saxi_bresp   (),

      // ---------
      // System Management Unit (SMU) Interface
      // ---------

      .hartid        ('0),
      .nmi_trap_addr ('0),

      // Boot Control
      // auto_boot: 0: wait for boot_val, 1: boot imm after res
      .auto_boot     ('1),
      .boot_val      ('0),
      .boot_addr     (64'h0000_0000_8000_0000),

      // ---------
      // Interrupt Interface
      // ---------
      .irq_in  ({7'b0,interrupt_0}),

      // ---------
      // Debug TAP Port (IEEE 1149 JTAG Test Access Port)
      .ndmreset (arst_ndm),
      // ---------
      // TBC: debug-module must be resetable by power-on-reset & test-reset
      .tck    (tck),
      .trst_n (trst_n),
      .tms    (tms),
      .tdi    (tdi),
      .tdo    (tdo)
   );
   

   test_subsystem test_subsystem_i(
       .s_axi_aclk_0(s_axi_aclk_0),
       .s_axi_aresetn_0(s_axi_aresetn_0),
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
       .S_DDR_araddr({36'b0,M03_AXI_DDR_araddr[27:0]}),
       .S_DDR_arburst(M03_AXI_DDR_arburst),
       .S_DDR_arcache(M03_AXI_DDR_arcache),
       .S_DDR_arid({11'b0,M03_AXI_DDR_arid}),
       .S_DDR_arlen(M03_AXI_DDR_arlen),
       .S_DDR_arlock(M03_AXI_DDR_arlock),
       .S_DDR_arprot(M03_AXI_DDR_arprot),
       .S_DDR_arqos(M03_AXI_DDR_arqos),
       .S_DDR_arready(M03_AXI_DDR_arready),
       .S_DDR_arregion(M03_AXI_DDR_arregion),
       .S_DDR_arsize(M03_AXI_DDR_arsize),
       .S_DDR_arvalid(M03_AXI_DDR_arvalid),
       .S_DDR_awaddr({36'h0,M03_AXI_DDR_awaddr[27:0]}),
       .S_DDR_awburst(M03_AXI_DDR_awburst),
       .S_DDR_awcache(M03_AXI_DDR_awcache),
       .S_DDR_awid({11'b0,M03_AXI_DDR_awid}),
       .S_DDR_awlen(M03_AXI_DDR_awlen),
       .S_DDR_awlock(M03_AXI_DDR_awlock),
       .S_DDR_awprot(M03_AXI_DDR_awprot),
       .S_DDR_awqos(M03_AXI_DDR_awqos),
       .S_DDR_awready(M03_AXI_DDR_awready),
       .S_DDR_awregion(M03_AXI_DDR_awregion),
       .S_DDR_awsize(M03_AXI_DDR_awsize),
       .S_DDR_awvalid(M03_AXI_DDR_awvalid),
       .S_DDR_bid({M03_AXI_DDR_bid}),
       .S_DDR_bready(M03_AXI_DDR_bready),
       .S_DDR_bresp(M03_AXI_DDR_bresp),
       .S_DDR_bvalid(M03_AXI_DDR_bvalid),
       .S_DDR_rdata(M03_AXI_DDR_rdata),
       .S_DDR_rid({M03_AXI_DDR_rid}),
       .S_DDR_rlast(M03_AXI_DDR_rlast),
       .S_DDR_rready(M03_AXI_DDR_rready),
       .S_DDR_rresp(M03_AXI_DDR_rresp),
       .S_DDR_rvalid(M03_AXI_DDR_rvalid),
       .S_DDR_wdata(M03_AXI_DDR_wdata),
       .S_DDR_wlast(M03_AXI_DDR_wlast),
       .S_DDR_wready(M03_AXI_DDR_wready),
       .S_DDR_wstrb(M03_AXI_DDR_wstrb),
       .S_DDR_wvalid(M03_AXI_DDR_wvalid),
       .DDR_AXI4_araddr  (DDR_AXI4_araddr),
    .DDR_AXI4_arburst (DDR_AXI4_arburst),
    //.DDR_AXI4_arcache(),
    .DDR_AXI4_arid    (DDR_AXI4_arid),
    .DDR_AXI4_arlen   (DDR_AXI4_arlen),
    //.DDR_AXI4_arlock(),
    //.DDR_AXI4_arprot(),
    //.DDR_AXI4_arqos(),
    .DDR_AXI4_arready (DDR_AXI4_arready),
    //.DDR_AXI4_arregion(),
    .DDR_AXI4_arsize  (DDR_AXI4_arsize),     //not 
    .DDR_AXI4_arvalid (DDR_AXI4_arvalid),
    .DDR_AXI4_awaddr  (DDR_AXI4_awaddr),
    .DDR_AXI4_awburst (DDR_AXI4_awburst),
    //.DDR_AXI4_awcache(),
    .DDR_AXI4_awid    (DDR_AXI4_awid),
    .DDR_AXI4_awlen   (DDR_AXI4_awlen),
    //.DDR_AXI4_awlock(),
    //.DDR_AXI4_awprot(),
    //.DDR_AXI4_awqos(),
    .DDR_AXI4_awready (DDR_AXI4_awready),
    //.DDR_AXI4_awregion(),
    .DDR_AXI4_awsize  (DDR_AXI4_awsize),    //not
    .DDR_AXI4_awvalid (DDR_AXI4_awvalid),
    .DDR_AXI4_bid     (DDR_AXI4_bid),
    .DDR_AXI4_bready  (DDR_AXI4_bready),
    .DDR_AXI4_bresp   (DDR_AXI4_bresp),
    .DDR_AXI4_bvalid  (DDR_AXI4_bvalid),
    .DDR_AXI4_rdata   (DDR_AXI4_rdata),
    .DDR_AXI4_rid     (DDR_AXI4_rid),
    .DDR_AXI4_rlast   (DDR_AXI4_rlast),
    .DDR_AXI4_rready  (DDR_AXI4_rready),
    .DDR_AXI4_rresp   (DDR_AXI4_rresp),
    .DDR_AXI4_rvalid  (DDR_AXI4_rvalid),
    .DDR_AXI4_wdata   (DDR_AXI4_wdata),
    .DDR_AXI4_wlast   (DDR_AXI4_wlast),
    .DDR_AXI4_wready  (DDR_AXI4_wready),
    .DDR_AXI4_wstrb   (DDR_AXI4_wstrb),
    .DDR_AXI4_wvalid  (DDR_AXI4_wvalid),
    .OCL_AXI4L_araddr (OCL_AXI4L_araddr),
    .OCL_AXI4L_arprot (OCL_AXI4L_arprot),
    .OCL_AXI4L_arready(OCL_AXI4L_arready),
    .OCL_AXI4L_arvalid(OCL_AXI4L_arvalid),
    .OCL_AXI4L_awaddr (OCL_AXI4L_awaddr),
    .OCL_AXI4L_awprot (OCL_AXI4L_awprot),
    .OCL_AXI4L_awready(OCL_AXI4L_awready),
    .OCL_AXI4L_awvalid(OCL_AXI4L_awvalid),
    .OCL_AXI4L_bready (OCL_AXI4L_bready),
    .OCL_AXI4L_bresp  (OCL_AXI4L_bresp),
    .OCL_AXI4L_bvalid (OCL_AXI4L_bvalid),
    .OCL_AXI4L_rdata  (OCL_AXI4L_rdata),
    .OCL_AXI4L_rready (OCL_AXI4L_rready),
    .OCL_AXI4L_rresp  (OCL_AXI4L_rresp),
    .OCL_AXI4L_rvalid (OCL_AXI4L_rvalid),
    .OCL_AXI4L_wdata  (OCL_AXI4L_wdata),
    .OCL_AXI4L_wready (OCL_AXI4L_wready),
    .OCL_AXI4L_wstrb  (OCL_AXI4L_wstrb),
    .OCL_AXI4L_wvalid (OCL_AXI4L_wvalid),
    .interrupt_0      (interrupt_1),
    .UART_0_rxd       (tx),
    .UART_0_txd       (rx),
    .tap_tck_0        (tck),
    .tap_tdi_0        (tdi),
    .tap_tdo_0        (tdo),
    .tap_tms_0        (tms)
);
endmodule
