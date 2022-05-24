`timescale 1 ps / 1 ps
module nova_subsystem(
input [63:0] S00_AXI_0_araddr,
input [1:0]  S00_AXI_0_arburst,
input [3:0]  S00_AXI_0_arcache,
input [4:0]  S00_AXI_0_arid,                /////////
input [7:0]  S00_AXI_0_arlen,
input [0:0]  S00_AXI_0_arlock,
input [2:0]  S00_AXI_0_arprot,
input [3:0]  S00_AXI_0_arqos,
output [0:0] S00_AXI_0_arready,
input [2:0]  S00_AXI_0_arsize,
input [0:0]  S00_AXI_0_arvalid,
input [63:0] S00_AXI_0_awaddr,
input [1:0]  S00_AXI_0_awburst,
input [3:0]  S00_AXI_0_awcache,
input [4:0]  S00_AXI_0_awid,
input [7:0]  S00_AXI_0_awlen,
input [0:0]  S00_AXI_0_awlock,
input [2:0]  S00_AXI_0_awprot,
input [3:0]  S00_AXI_0_awqos,
output [0:0] S00_AXI_0_awready,
input [2:0]  S00_AXI_0_awsize,
input [0:0]  S00_AXI_0_awvalid,
output [4:0] S00_AXI_0_bid,
input [0:0]  S00_AXI_0_bready,
output [1:0] S00_AXI_0_bresp,
output [0:0] S00_AXI_0_bvalid,
output [63:0]S00_AXI_0_rdata,
output [4:0] S00_AXI_0_rid,
output [0:0] S00_AXI_0_rlast,
input [0:0]  S00_AXI_0_rready,
output [1:0] S00_AXI_0_rresp,
output [0:0] S00_AXI_0_rvalid,
input [63:0] S00_AXI_0_wdata,
input [0:0]  S00_AXI_0_wlast,
output [0:0] S00_AXI_0_wready,
input [7:0]  S00_AXI_0_wstrb,
input [0:0]  S00_AXI_0_wvalid,
  input        arst_n,
  input        arst_ndm_n,
  output [63:0]DDR_s_araddr,
  output [1:0]DDR_s_arburst,
  output [3:0]DDR_s_arcache,
  output [4:0]DDR_s_arid,
  output [7:0]DDR_s_arlen,
  output [0:0]DDR_s_arlock,
  output [2:0]DDR_s_arprot,
  output [3:0]DDR_s_arqos,
  input [0:0]DDR_s_arready,
  output [3:0]DDR_s_arregion,
  output [2:0]DDR_s_arsize,
  output [0:0]DDR_s_arvalid,
  output [63:0]DDR_s_awaddr,
  output [1:0]DDR_s_awburst,
  output [3:0]DDR_s_awcache,
  output [4:0]DDR_s_awid,
  output [7:0]DDR_s_awlen,
  output [0:0]DDR_s_awlock,
  output [2:0]DDR_s_awprot,
  output [3:0]DDR_s_awqos,
  input [0:0]DDR_s_awready,
  output [3:0]DDR_s_awregion,
  output [2:0]DDR_s_awsize,
  output [0:0]DDR_s_awvalid,
  input [4:0]DDR_s_bid,
  output [0:0]DDR_s_bready,
  input [1:0]DDR_s_bresp,
  input [0:0]DDR_s_bvalid,
  input [63:0]DDR_s_rdata,
  input [4:0]DDR_s_rid,
  input [0:0]DDR_s_rlast,
  output [0:0]DDR_s_rready,
  input [1:0]DDR_s_rresp,
  input [0:0]DDR_s_rvalid,
  output [63:0]DDR_s_wdata,
  output [0:0]DDR_s_wlast,
  input [0:0]DDR_s_wready,
  output [7:0]DDR_s_wstrb,
  output [0:0]DDR_s_wvalid,
  input UART_0_rxd,
  output UART_0_txd,
  input s_axi_aresetn_0,
  input s_axi_aclk_0);

  wire [63:0]hydra_m_araddr;
  wire [1:0]hydra_m_arburst;
  wire [3:0]hydra_m_arcache;
  wire [4:0]hydra_m_arid;
  wire [7:0]hydra_m_arlen;
  wire [0:0]hydra_m_arlock;
  wire [2:0]hydra_m_arprot;
  wire [3:0]hydra_m_arqos;
  wire [0:0]hydra_m_arready;
  wire [2:0]hydra_m_arsize;
  wire [0:0]hydra_m_arvalid;
  wire [63:0]hydra_m_awaddr;
  wire [1:0]hydra_m_awburst;
  wire [3:0]hydra_m_awcache;
  wire [4:0]hydra_m_awid;
  wire [7:0]hydra_m_awlen;
  wire [0:0]hydra_m_awlock;
  wire [2:0]hydra_m_awprot;
  wire [3:0]hydra_m_awqos;
  wire [0:0]hydra_m_awready;
  wire [2:0]hydra_m_awsize;
  wire [0:0]hydra_m_awvalid;
  wire [4:0]hydra_m_bid;
  wire [0:0]hydra_m_bready;
  wire [1:0]hydra_m_bresp;
  wire [0:0]hydra_m_bvalid;
  wire [63:0]hydra_m_rdata;
  wire [4:0]hydra_m_rid;
  wire [0:0]hydra_m_rlast;
  wire [0:0]hydra_m_rready;
  wire [1:0]hydra_m_rresp;
  wire [0:0]hydra_m_rvalid;
  wire [63:0]hydra_m_wdata;
  wire [0:0]hydra_m_wlast;
  wire [0:0]hydra_m_wready;
  wire [7:0]hydra_m_wstrb;
  wire [0:0]hydra_m_wvalid;
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
  wire arst_n;
  wire arst_ndm_n;
  wire [63:0]hydra_m_awaddr_mask;
  wire [63:0]hydra_m_araddr_mask;
  
   assign hydra_m_awaddr_mask = hydra_m_awaddr & 64'h0000_0000_ffff_ffff;
   assign hydra_m_araddr_mask = hydra_m_araddr & 64'h0000_0000_ffff_ffff;
   

   xlx_subsystem xlx_subsys(
         .UART_0_rxd(UART_0_rxd),                                       //   input        
         .UART_0_txd(UART_0_txd),                            //   output       
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
         .s_axi_aclk_0(s_axi_aclk_0),
         .s_axi_aresetn_0(s_axi_aresetn_0),
         .interrupt_0(),                          //   input        
      

      //HYDRA SLAVE
        .hydra_S_araddr(),
        .hydra_S_arburst(),
        .hydra_S_arcache(),
        .hydra_S_arid(),
        .hydra_S_arlen(),
        .hydra_S_arlock(),
        .hydra_S_arprot(),
        .hydra_S_arqos(),
        .hydra_S_arready('b0),
        .hydra_S_arregion(),
        .hydra_S_arsize(),
        .hydra_S_arvalid(),
        .hydra_S_awaddr(),
        .hydra_S_awburst(),
        .hydra_S_awcache(),
        .hydra_S_awid(),
        .hydra_S_awlen(),
        .hydra_S_awlock(),
        .hydra_S_awprot(),
        .hydra_S_awqos(),
        .hydra_S_awready('b0),
        .hydra_S_awregion(),
        .hydra_S_awsize(),
        .hydra_S_awvalid(),
        .hydra_S_bid('b0),
        .hydra_S_bready(),
        .hydra_S_bresp('b0),
        .hydra_S_bvalid('b0),
        .hydra_S_rdata('b0),
        .hydra_S_rid('b0),
        .hydra_S_rlast('b0),
        .hydra_S_rready(),
        .hydra_S_rresp('b0),
        .hydra_S_rvalid('b0),
        .hydra_S_wdata(),
        .hydra_S_wlast(),
        .hydra_S_wready('b0),
        .hydra_S_wstrb(),
        .hydra_S_wvalid(),

//HYDRA MASTER
  .hydra_m_araddr(hydra_m_araddr_mask),
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
  .hydra_m_awaddr(hydra_m_awaddr_mask),
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

//DDR SIGNAL
  .DDR_s_araddr(DDR_s_araddr),
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
  .DDR_s_wvalid(DDR_s_wvalid)

);

hydra_su u_hydra_su 
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
      .maxi_arvalid (hydra_m_arvalid),
      .maxi_arready (hydra_m_arready),
      .maxi_arid    (hydra_m_arid),
      .maxi_araddr  (hydra_m_araddr),
      .maxi_arlen   (hydra_m_arlen),
      .maxi_arsize  (hydra_m_arsize),
      .maxi_arburst (hydra_m_arburst),
      .maxi_arlock  (hydra_m_arlock),
      .maxi_arcache (hydra_m_arcache),
      .maxi_arprot  (hydra_m_arprot),
      
      // Write Address Channel
      .maxi_awvalid (hydra_m_awvalid),
      .maxi_awready (hydra_m_awready),
      .maxi_awid    (hydra_m_awid),
      .maxi_awaddr  (hydra_m_awaddr),
      .maxi_awlen   (hydra_m_awlen),
      .maxi_awsize  (hydra_m_awsize),
      .maxi_awburst (hydra_m_awburst),
      .maxi_awlock  (hydra_m_awlock),
      .maxi_awcache (hydra_m_awcache),
      .maxi_awprot  (hydra_m_awprot),
      
      // Write Data Channel
      .maxi_wvalid  (hydra_m_wvalid),
      .maxi_wready  (hydra_m_wready),
      .maxi_wdata   (hydra_m_wdata),
      .maxi_wstrb   (hydra_m_wstrb),
      .maxi_wlast   (hydra_m_wlast),
      
      // Read Response Channel
      .maxi_rvalid  (hydra_m_rvalid),
      .maxi_rready  (hydra_m_rready),
      .maxi_rid     (hydra_m_rid),
      .maxi_rdata   (hydra_m_rdata),
      .maxi_rresp   (hydra_m_rresp),
      .maxi_rlast   (hydra_m_rlast),
      
      // Write Response Channel
      .maxi_bvalid  (hydra_m_bvalid),
      .maxi_bready  (hydra_m_bready),
      .maxi_bid     (hydra_m_bid),
      .maxi_bresp   (hydra_m_bresp),

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
      .tdo    ()

   ); // hydra_su
endmodule