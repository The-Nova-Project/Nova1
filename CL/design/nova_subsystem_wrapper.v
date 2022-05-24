`timescale 1 ps / 1 ps
module nova_subsystem_wrapper(
  input [63:0] S_AXI_0_araddr,
  input [2:0]  S_AXI_0_arprot,
  output       S_AXI_0_arready,
  input        S_AXI_0_arvalid,
  input [63:0] S_AXI_0_awaddr,
  input [2:0]  S_AXI_0_awprot,
  output       S_AXI_0_awready,
  input        S_AXI_0_awvalid,
  input        S_AXI_0_bready,
  output [1:0] S_AXI_0_bresp,
  output       S_AXI_0_bvalid,
  output [31:0]S_AXI_0_rdata,
  input        S_AXI_0_rready,
  output [1:0] S_AXI_0_rresp,
  output       S_AXI_0_rvalid,
  input [31:0] S_AXI_0_wdata,
  output       S_AXI_0_wready,
  input [3:0]  S_AXI_0_wstrb,
  input        S_AXI_0_wvalid,
  input        s_axi_aclk_0,
  input        s_axi_aresetn_0,
  input        arst_n,
  input        arst_ndm_n);

  
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
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;
  wire arst_n;
  wire arst_ndm_n;

  nova_project nova_project_i                               //bram
       (.S01_AXI_0_araddr(S01_AXI_0_araddr),
        .S01_AXI_0_arburst(S01_AXI_0_arburst),
        .S01_AXI_0_arcache(S01_AXI_0_arcache),
        .S01_AXI_0_arid(S01_AXI_0_arid[1:0]),
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
        .S01_AXI_0_awid(S01_AXI_0_awid[1:0]),
        .S01_AXI_0_awlen(S01_AXI_0_awlen),
        .S01_AXI_0_awlock(S01_AXI_0_awlock),
        .S01_AXI_0_awprot(S01_AXI_0_awprot),
        .S01_AXI_0_awqos(S01_AXI_0_awqos),
        .S01_AXI_0_awready(S01_AXI_0_awready),
        .S01_AXI_0_awsize(S01_AXI_0_awsize),
        .S01_AXI_0_awvalid(S01_AXI_0_awvalid),
        .S01_AXI_0_bid(S01_AXI_0_bid[1:0]),
        .S01_AXI_0_bready(S01_AXI_0_bready),
        .S01_AXI_0_bresp(S01_AXI_0_bresp),
        .S01_AXI_0_bvalid(S01_AXI_0_bvalid),
        .S01_AXI_0_rdata(S01_AXI_0_rdata),
        .S01_AXI_0_rid(S01_AXI_0_rid[1:0]),
        .S01_AXI_0_rlast(S01_AXI_0_rlast),
        .S01_AXI_0_rready(S01_AXI_0_rready),
        .S01_AXI_0_rresp(S01_AXI_0_rresp),
        .S01_AXI_0_rvalid(S01_AXI_0_rvalid),
        .S01_AXI_0_wdata(S01_AXI_0_wdata),
        .S01_AXI_0_wlast(S01_AXI_0_wlast),
        .S01_AXI_0_wready(S01_AXI_0_wready),
        .S01_AXI_0_wstrb(S01_AXI_0_wstrb),
        .S01_AXI_0_wvalid(S01_AXI_0_wvalid),
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
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));

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
      
      // Write Address Channel
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
      
      // Write Data Channel
      .saxi_wvalid  ('b0),
      .saxi_wready  (),
      .saxi_wdata   ('b0),
      .saxi_wstrb   ('b0),
      .saxi_wlast   ('b0),
      
      // Read Response Channel
      .saxi_rvalid  (),
      .saxi_rready  ('b0),
      .saxi_rid     (),
      .saxi_rdata   (),
      .saxi_rresp   (),
      .saxi_rlast   (),
      
      // Write Response Channel
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
