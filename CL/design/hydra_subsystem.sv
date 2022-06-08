module hydra_subsystem
    import riscv::XLEN;
    import matmul_pkg::*;
    import matmul_axi_pkg::*;
#(
   // Interconnect
   // TBD: merge/reconcile/integrate with related params below
   localparam IC_SAXI_NPORT = 3,   // IC Inputs
   localparam IC_MAXI_NPORT = 5,   // IC Outputs

   localparam IC_SAXI_IDW   = 4,   // max(input idw)
   localparam IC_MAXI_IDW   = IC_SAXI_IDW + $clog2(IC_SAXI_NPORT),

   // AXI non-mutable widths
   localparam AXLENW   = 8,
   localparam AXSIZEW  = 3,
   localparam AXBURSTW = 2,
   localparam AXCACHEW = 4,
   localparam AXPROTW  = 3,
   localparam XRESPW   = 2,
   
   localparam AXREGIONW = 4,
   localparam AXQOSW    = 4,
   localparam AWATOPW   = 6,

   // AXI mutable widths
   // TBD: set AW param to sys AW ( SYS_AW <= XLEN for non VM )
   localparam MAXI_AW    = XLEN,
   localparam MAXI_DW    = 64,
   localparam MAXI_STRBW = MAXI_DW / 8,

   // TBD: param for HSU mem-space size
   localparam SAXI_AW    = XLEN,
   localparam SAXI_DW    = 64,
   localparam SAXI_STRBW = SAXI_DW / 8,

   localparam SAXI_IDW   = 4,
   localparam MAXI_IDW   = 5
)   (
    input logic clk,
   input logic arst_n,        // asynch reset, low-active. reset everything
   input logic arst_ndm_n,    // asynch reset non-dm, low-active. reset everything except debug module

   // ---------
   // CP Interface
   // ---------

   // CP Decode Interface
   output logic            core2cp_ibuf_val,
   output logic [15:0]     core2cp_ibuf[0:7],
   output logic [1:0]      core2cp_instr_sz,
   
   input  logic            cp2core_dec_val,
   input  logic            cp2core_dec_src_val [0:1],
   input  logic [4:0]      cp2core_dec_src_xidx[0:1],
   
   input  logic            cp2core_dec_dst_val,
   input  logic [4:0]      cp2core_dec_dst_xidx,

   input  logic            cp2core_dec_csr_val,
   input  logic            cp2core_dec_ld_val,
   input  logic            cp2core_dec_st_val,

   // CP Dispatch Interface (Instruction & Operand)
   output logic            core2cp_disp_val,
   input  logic            core2cp_disp_rdy,
   output logic [XLEN-1:0] core2cp_disp_opa,
   output logic [XLEN-1:0] core2cp_disp_opb,

   // CP Early (disp+1) Result Interface
   input  logic            cp2core_early_res_val,
   input  logic [4:0]      cp2core_early_res_rd,
   input  logic [XLEN-1:0] cp2core_early_res,

   // CP Result Interface
   input  logic            cp2core_res_val,
   output logic            cp2core_res_rdy,
   input  logic [4:0]      cp2core_res_rd,
   input  logic [XLEN-1:0] cp2core_res,

   // CP Instruction Complete Interface
   input  logic            cp2core_cmpl_instr_val,
   input  logic            cp2core_cmpl_ld_val,
   input  logic            cp2core_cmpl_st_val,

   // ---------
   // AXI Master Interface
   // ---------
   
   // Read Address Channel
   output logic                  maxi_arvalid,
   input  logic                  maxi_arready,
   output logic [MAXI_IDW-1:0]   maxi_arid,
   output logic [MAXI_AW-1:0]    maxi_araddr,
   output logic [AXLENW-1:0]     maxi_arlen,
   output logic [AXSIZEW-1:0]    maxi_arsize,
   output logic [AXBURSTW-1:0]   maxi_arburst,
   output logic                  maxi_arlock,
   output logic [AXCACHEW-1:0]   maxi_arcache,
   output logic [AXPROTW-1:0]    maxi_arprot,
   
   // Write Address Channel
   output logic                  maxi_awvalid,
   input  logic                  maxi_awready,
   output logic [MAXI_IDW-1:0]   maxi_awid,
   output logic [MAXI_AW-1:0]    maxi_awaddr,
   output logic [AXLENW-1:0]     maxi_awlen,
   output logic [AXSIZEW-1:0]    maxi_awsize,
   output logic [AXBURSTW-1:0]   maxi_awburst,
   output logic                  maxi_awlock,
   output logic [AXCACHEW-1:0]   maxi_awcache,
   output logic [AXPROTW-1:0]    maxi_awprot,
   
   // Write Data Channel
   output logic                  maxi_wvalid,
   input  logic                  maxi_wready,
   output logic [MAXI_DW-1:0]    maxi_wdata,
   output logic [MAXI_STRBW-1:0] maxi_wstrb,
   output logic                  maxi_wlast,
   
   // Read Response Channel
   input  logic                  maxi_rvalid,
   output logic                  maxi_rready,
   input  logic [MAXI_IDW-1:0]   maxi_rid,
   input  logic [MAXI_DW-1:0]    maxi_rdata,
   input  logic [XRESPW-1:0]     maxi_rresp,
   input  logic                  maxi_rlast,
   
   // Write Response Channel
   input  logic                  maxi_bvalid,
   output logic                  maxi_bready,
   input  logic [MAXI_IDW-1:0]   maxi_bid,
   input  logic [XRESPW-1:0]     maxi_bresp,

   // ---------
   // AXI Slave Interface
   // ---------

   // Read Address Channel
   input  logic                  saxi_arvalid,
   output logic                  saxi_arready,
   input  logic [SAXI_IDW-1:0]   saxi_arid,
   input  logic [SAXI_AW-1:0]    saxi_araddr,
   input  logic [AXLENW-1:0]     saxi_arlen,
   input  logic [AXSIZEW-1:0]    saxi_arsize,
   input  logic [AXBURSTW-1:0]   saxi_arburst,
   input  logic                  saxi_arlock,
   input  logic [AXCACHEW-1:0]   saxi_arcache,
   input  logic [AXPROTW-1:0]    saxi_arprot,
   
   // Write Address Channel
   input  logic                  saxi_awvalid,
   output logic                  saxi_awready,
   input  logic [SAXI_IDW-1:0]   saxi_awid,
   input  logic [SAXI_AW-1:0]    saxi_awaddr,
   input  logic [AXLENW-1:0]     saxi_awlen,
   input  logic [AXSIZEW-1:0]    saxi_awsize,
   input  logic [AXBURSTW-1:0]   saxi_awburst,
   input  logic                  saxi_awlock,
   input  logic [AXCACHEW-1:0]   saxi_awcache,
   input  logic [AXPROTW-1:0]    saxi_awprot,
   
   // Write Data Channel
   input  logic                  saxi_wvalid,
   output logic                  saxi_wready,
   input  logic [SAXI_DW-1:0]    saxi_wdata,
   input  logic [SAXI_STRBW-1:0] saxi_wstrb,
   input  logic                  saxi_wlast,
   
   // Read Response Channel
   output logic                  saxi_rvalid,
   input  logic                  saxi_rready,
   output logic [SAXI_IDW-1:0]   saxi_rid,
   output logic [SAXI_DW-1:0]    saxi_rdata,
   output logic [XRESPW-1:0]     saxi_rresp,
   output logic                  saxi_rlast,
   output logic                  saxi_bvalid,
   input  logic                  saxi_bready,
   output logic [SAXI_IDW-1:0]   saxi_bid,
   output logic [XRESPW-1:0]     saxi_bresp,
   input  logic                  tck,
   input  logic                  trst_n,           // test reset, asynch, low-active; optional.
   input  logic                  tms,
   input  logic                  tdi,
   output logic                  tdo,
   input  logic [7:0]            irq_in,
   output logic [7:0]            irq_out,
   input  logic [31:0]           hartid,
   input  logic [XLEN-1:0]       nmi_trap_addr,
   input  logic                  auto_boot,
   input  logic                  boot_val,
   input  logic [XLEN-1:0]       boot_addr,
   output logic                  ndmreset,
   output logic                  dmactive,
   output logic [1:0]            core_state,
   output logic                  core_wakeup_req,
   
   output logic [63:0]           MTML_s_araddr,
   output logic [1:0]            MTML_s_arburst,
   output logic [3:0]            MTML_s_arcache,
   output logic [4:0]            MTML_s_arid,
   output logic [7:0]            MTML_s_arlen,
   output logic [0:0]            MTML_s_arlock,
   output logic [2:0]            MTML_s_arprot,
   output logic [3:0]            MTML_s_arqos,
   input logic [0:0]             MTML_s_arready,
   output logic [2:0]            MTML_s_arsize,
   output logic [0:0]            MTML_s_arvalid,
   output logic [63:0]           MTML_s_awaddr,
   output logic [1:0]            MTML_s_awburst,
   output logic [3:0]            MTML_s_awcache,
   output logic [4:0]            MTML_s_awid,
   output logic [7:0]            MTML_s_awlen,
   output logic [0:0]            MTML_s_awlock,
   output logic [2:0]            MTML_s_awprot,
   output logic [3:0]            MTML_s_awqos,
   input logic [0:0]             MTML_s_awready,
   output logic [2:0]            MTML_s_awsize,
   output logic [0:0]            MTML_s_awvalid,
   input logic [4:0]             MTML_s_bid,
   output logic [0:0]            MTML_s_bready,
   input logic [1:0]             MTML_s_bresp,
   input logic [0:0]             MTML_s_bvalid,
   input logic [63:0]            MTML_s_rdata,
   input logic [4:0]             MTML_s_rid,
   input logic [0:0]             MTML_s_rlast,
   output logic [0:0]            MTML_s_rready,
   input logic [1:0]             MTML_s_rresp,
   input logic [0:0]             MTML_s_rvalid,
   output logic [63:0]           MTML_s_wdata,
   output logic [0:0]            MTML_s_wlast,
   input logic [0:0]             MTML_s_wready,
   output logic [7:0]            MTML_s_wstrb,
   output logic [0:0]            MTML_s_wvalid,

   input logic [63:0]            MTML_m_araddr,
   input logic [1:0]             MTML_m_arburst,
   input logic [3:0]             MTML_m_arcache,
   input logic [4:0]             MTML_m_arid,
   input logic [7:0]             MTML_m_arlen,
   input logic [0:0]             MTML_m_arlock,
   input logic [2:0]             MTML_m_arprot,
   input logic [3:0]             MTML_m_arqos,
   output logic [0:0]            MTML_m_arready,
   input logic [3:0]             MTML_m_arregion,
   input logic [2:0]             MTML_m_arsize,
   input logic [0:0]             MTML_m_arvalid,
   input logic [63:0]            MTML_m_awaddr,
   input logic [1:0]             MTML_m_awburst,
   input logic [3:0]             MTML_m_awcache,
   input logic [4:0]             MTML_m_awid,
   input logic [7:0]             MTML_m_awlen,
   input logic [0:0]             MTML_m_awlock,
   input logic [2:0]             MTML_m_awprot,
   input logic [3:0]             MTML_m_awqos,
   output logic [0:0]            MTML_m_awready,
   input logic [3:0]             MTML_m_awregion,
   input logic [2:0]             MTML_m_awsize,
   input logic [0:0]             MTML_m_awvalid,
   output logic [4:0]            MTML_m_bid,
   input logic [0:0]             MTML_m_bready,
   output logic [1:0]            MTML_m_bresp,
   output logic [0:0]            MTML_m_bvalid,
   output logic [63:0]           MTML_m_rdata,
   output logic [4:0]            MTML_m_rid,
   output logic [0:0]            MTML_m_rlast,
   input logic [0:0]             MTML_m_rready,
   output logic [1:0]            MTML_m_rresp,
   output logic [0:0]            MTML_m_rvalid,
   input logic [63:0]            MTML_m_wdata,
   input logic [0:0]             MTML_m_wlast,
   output logic [0:0]            MTML_m_wready,
   input logic [7:0]             MTML_m_wstrb,
   input logic [0:0]             MTML_m_wvalid
   );

  axi_aw_chan_s                cfg_aw_chan;
// logic                        cfg_awvalid;
// logic                        cfg_awready;
  axi_w_chan_s                 cfg_w_chan;
//   logic                        cfg_wvalid;
//  logic                        cfg_wready;
 axi_b_chan_s                 cfg_b_chan; 
//  logic                        cfg_bvalid;
//   logic                        cfg_bready;
  axi_ar_chan_s                cfg_ar_chan;
//   logic                        cfg_arvalid;
//  logic                        cfg_arready;
 axi_r_chan_s                 cfg_r_chan;
//  logic                        cfg_rvalid;
//  logic                        cfg_rready;
 axi_ar_chan_s    ar_chan; 
//  logic            arvalid;
//   logic            arready;
axi_r_chan_s     r_chan;
// logic            rvalid;
// logic            rready;
axi_aw_chan_s    aw_chan; 
// logic            awvalid; 
// logic            awready;
axi_w_chan_s     w_chan;
// logic            wvalid;
// logic            wready;
axi_b_chan_s     b_chan; 
// logic            bvalid;
// logic            bready;	
irq_s            irq;
// assign arready = MTML_m_arready;
// assign arvalid = MTML_m_arvalid;
// assign cfg_arready = MTML_s_arready ;
// assign cfg_arvalid = MTML_s_arvalid ;
assign MTML_s_araddr = ar_chan.addr;
assign MTML_s_arburst = ar_chan.burst;
assign MTML_s_arcache = ar_chan.cache;
assign MTML_s_arid = ar_chan.id;
// assign MTML_s_arid[4] = 'b0;
assign MTML_s_arlen = ar_chan.len;
assign MTML_s_arlock = ar_chan.lock;
assign MTML_s_arprot = ar_chan.prot;
assign MTML_s_arqos = ar_chan.qos;
assign MTML_s_arsize = ar_chan.size;
assign MTML_s_awaddr = aw_chan.addr;
assign MTML_s_awburst = aw_chan.burst;
assign MTML_s_awcache = aw_chan.cache;
assign MTML_s_awid = aw_chan.id;
// assign MTML_s_awid[4] = 'b0;
assign MTML_s_awlen = aw_chan.len;
assign MTML_s_awlock = aw_chan.lock;
assign MTML_s_awprot = aw_chan.prot;
assign MTML_s_awqos = aw_chan.qos;
assign MTML_s_awsize = aw_chan.size;
assign b_chan.id = MTML_s_bid;
assign b_chan.resp = MTML_s_bresp;
assign r_chan.data = MTML_s_rdata;
assign r_chan.id = MTML_s_rid ;
assign r_chan.last = MTML_s_rlast;
assign r_chan.resp = MTML_s_rresp;
assign r_chan.user = 'b0;
assign MTML_s_wdata = w_chan.data;
assign MTML_s_wlast = w_chan.last;
assign MTML_s_wstrb = w_chan.strb;

// assign awready = MTML_m_awready;
// assign awvalid = MTML_m_awvalid;
// assign bready = MTML_m_bready;
// assign bvalid = MTML_m_bvalid;
// assign rready = MTML_m_rready;
// assign rvalid = MTML_m_rvalid;
// assign wready = MTML_m_wready;
// assign wvalid = MTML_m_wvalid;
assign cfg_aw_chan.user = '0;
assign cfg_aw_chan.region = MTML_m_awregion ;
assign cfg_aw_chan.atop = '0;
assign cfg_w_chan.user = 0;
assign cfg_ar_chan.addr = MTML_m_araddr ;
assign cfg_ar_chan.burst = MTML_m_arburst ;
assign cfg_ar_chan.cache = MTML_m_arcache ;
assign cfg_ar_chan.id = MTML_m_arid ;
assign cfg_ar_chan.len = MTML_m_arlen ;
assign cfg_ar_chan.lock = MTML_m_arlock ;
assign cfg_ar_chan.prot = MTML_m_arprot ;
assign cfg_ar_chan.qos = MTML_m_arqos ;
assign cfg_ar_chan.user = '0;
assign cfg_ar_chan.region = MTML_m_arregion ;
assign cfg_ar_chan.size = MTML_m_arsize ;
assign cfg_aw_chan.addr = MTML_m_awaddr ;
assign cfg_aw_chan.burst = MTML_m_awburst ;
assign cfg_aw_chan.cache = MTML_m_awcache ;
assign cfg_aw_chan.id = MTML_m_awid ;
assign cfg_aw_chan.len = MTML_m_awlen ;
assign cfg_aw_chan.lock = MTML_m_awlock ;
assign cfg_aw_chan.prot = MTML_m_awprot ;
assign cfg_aw_chan.qos = MTML_m_awqos ;
// assign cfg_awready = MTML_s_awready ;
assign cfg_aw_chan.size = MTML_m_awsize ;
// assign cfg_awvalid = MTML_s_awvalid ;
assign MTML_m_bid = cfg_b_chan.id ;
// assign cfg_bready = MTML_s_bready ;
assign MTML_m_bresp = cfg_b_chan.resp ;
// assign cfg_bvalid = MTML_s_bvalid ;
assign MTML_m_rdata = cfg_r_chan.data ;
assign MTML_m_rid = cfg_r_chan.id ;
assign MTML_m_rlast = cfg_r_chan.last ;
// assign cfg_rready = MTML_s_rready ;
assign MTML_m_rresp = cfg_r_chan.resp ;
// assign cfg_rvalid = MTML_s_rvalid ;
assign cfg_w_chan.data = MTML_m_wdata ;
assign cfg_w_chan.last = MTML_m_wlast ;
// assign cfg_wready = MTML_s_wready ;
assign cfg_w_chan.strb = MTML_m_wstrb  ;
// assign cfg_wvalid = MTML_s_wvalid ;


hydra_su u_hydra_su 
   (
      .clk                   (clk),
      .arst_n                (arst_n),
      .arst_ndm_n            (arst_ndm_n),
      .cp2core_dec_val       (cp2core_dec_val),
      .cp2core_dec_src_val   (cp2core_dec_src_val),
      .cp2core_dec_src_xidx  (cp2core_dec_src_xidx),
      .cp2core_dec_dst_val   (cp2core_dec_dst_val),
      .cp2core_dec_dst_xidx  (cp2core_dec_dst_xidx), 
      .cp2core_dec_csr_val   (cp2core_dec_csr_val),
      .cp2core_dec_ld_val    (cp2core_dec_ld_val),
      .cp2core_dec_st_val    (cp2core_dec_st_val),
      .core2cp_disp_rdy      (core2cp_disp_rdy),
      .cp2core_early_res_val (cp2core_early_res_val),
      .cp2core_early_res_rd  (cp2core_early_res_rd),
      .cp2core_early_res     (cp2core_early_res),
      .cp2core_res_val       (cp2core_res_val),
      .cp2core_res_rd        (cp2core_res_rd),
      .cp2core_res           (cp2core_res),
      .cp2core_cmpl_instr_val(cp2core_cmpl_instr_val),
      .cp2core_cmpl_ld_val   (cp2core_cmpl_ld_val),
      .cp2core_cmpl_st_val   (cp2core_cmpl_st_val),
      .maxi_arvalid          (maxi_arvalid),
      .maxi_arready          (maxi_arready),
      .maxi_arid             (maxi_arid),
      .maxi_araddr           (maxi_araddr),
      .maxi_arlen            (maxi_arlen),
      .maxi_arsize           (maxi_arsize),
      .maxi_arburst          (maxi_arburst),
      .maxi_arlock           (maxi_arlock),
      .maxi_arcache          (maxi_arcache),
      .maxi_arprot           (maxi_arprot),
      .maxi_awvalid          (maxi_awvalid),
      .maxi_awready          (maxi_awready),
      .maxi_awid             (maxi_awid),
      .maxi_awaddr           (maxi_awaddr),
      .maxi_awlen            (maxi_awlen),
      .maxi_awsize           (maxi_awsize),
      .maxi_awburst          (maxi_awburst),
      .maxi_awlock           (maxi_awlock),
      .maxi_awcache          (maxi_awcache),
      .maxi_awprot           (maxi_awprot),
      .maxi_wvalid           (maxi_wvalid),
      .maxi_wready           (maxi_wready),
      .maxi_wdata            (maxi_wdata),
      .maxi_wstrb            (maxi_wstrb),
      .maxi_wlast            (maxi_wlast),
      .maxi_rvalid           (maxi_rvalid),
      .maxi_rready           (maxi_rready),
      .maxi_rid              (maxi_rid),
      .maxi_rdata            (maxi_rdata),
      .maxi_rresp            (maxi_rresp),
      .maxi_rlast            (maxi_rlast),
      .maxi_bvalid           (maxi_bvalid),
      .maxi_bready           (maxi_bready),
      .maxi_bid              (maxi_bid),
      .maxi_bresp            (maxi_bresp),
      .saxi_arvalid          (saxi_arvalid),
      .saxi_arready          (saxi_arready),
      .saxi_arid             (saxi_arid),
      .saxi_araddr           (saxi_araddr),
      .saxi_arlen            (saxi_arlen),
      .saxi_arsize           (saxi_arsize),
      .saxi_arburst          (saxi_arburst),
      .saxi_arlock           (saxi_arlock),
      .saxi_arcache          (saxi_arcache),
      .saxi_arprot           (saxi_arprot),
      .saxi_awvalid          (saxi_awvalid),
      .saxi_awready          (saxi_awready),
      .saxi_awid             (saxi_awid),
      .saxi_awaddr           (saxi_awaddr),
      .saxi_awlen            (saxi_awlen),
      .saxi_awsize           (saxi_awsize),
      .saxi_awburst          (saxi_awburst),
      .saxi_awlock           (saxi_awlock),
      .saxi_awcache          (saxi_awcache),
      .saxi_awprot           (saxi_awprot),
      .saxi_wvalid           (saxi_wvalid),
      .saxi_wready           (saxi_wready),
      .saxi_wdata            (saxi_wdata),
      .saxi_wstrb            (saxi_wstrb),
      .saxi_wlast            (saxi_wlast),
      .saxi_rvalid           (saxi_rvalid),
      .saxi_rready           (saxi_rready),
      .saxi_rid              (saxi_rid),
      .saxi_rdata            (saxi_rdata),
      .saxi_rresp            (saxi_rresp),
      .saxi_rlast            (saxi_rlast),
      .saxi_bvalid           (saxi_bvalid),
      .saxi_bready           (saxi_bready),
      .saxi_bid              (saxi_bid),
      .saxi_bresp            (saxi_bresp),
      .hartid                (hartid),
      .nmi_trap_addr         (nmi_trap_addr),
      .auto_boot             (auto_boot),
      .boot_val              (boot_val),
      .boot_addr             (boot_addr),
      .irq_in                (irq_in),
      .tck                   (tck),
      .tms                   (tms),
      .tdi                   (tdi),
      .tdo                   (tdo)
   ); // hydra_su
   matmul_top matmul
(
    .clk          (clk),
    .arst_n       (arst_ndm_n), 
    .cfg_aw_chan  (cfg_aw_chan),
    .cfg_awvalid  (MTML_m_awvalid),
    .cfg_awready  (MTML_m_awready),
    .cfg_w_chan   (cfg_w_chan),
    .cfg_wvalid   (MTML_m_wvalid),
    .cfg_wready   (MTML_m_wready),
    .cfg_b_chan   (cfg_b_chan), 
    .cfg_bvalid   (MTML_m_bvalid),
    .cfg_bready   (MTML_m_bready),
    .cfg_ar_chan  (cfg_ar_chan),
    .cfg_arvalid  (MTML_m_arvalid),
    .cfg_arready  (MTML_m_arready),
    .cfg_r_chan   (cfg_r_chan),
    .cfg_rvalid   (MTML_m_rvalid),
    .cfg_rready   (MTML_m_rready),
    .ar_chan      (ar_chan),
    .arvalid      (MTML_s_arvalid),
    .arready      (MTML_s_arready),
    .r_chan       (r_chan),
    .rvalid       (MTML_s_rvalid),
    .rready       (MTML_s_rready),
    .aw_chan      (aw_chan), 
    .awvalid      (MTML_s_awvalid), 
    .awready      (MTML_s_awready),
    .w_chan       (w_chan),
    .wvalid       (MTML_s_wvalid),
    .wready       (MTML_s_wready),
    .b_chan       (b_chan),
    .bvalid       (MTML_s_bvalid),
    .bready       (MTML_s_bready),
    .irq          (irq)	
);
endmodule