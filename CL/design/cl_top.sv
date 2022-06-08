module cl_top #(parameter NUM_DDR=4) 

(
   `include "cl_ports.vh"

);

`include "nova_project_defines.vh"      // CL Defines for all examples
`include "cl_id_defines.vh"          // Defines for ID0 and ID1 (PCI ID's)
`include "cl_dram_dma_defines.vh"
`include "unused_sh_bar1_template.inc"
   
   localparam NUM_CFG_STGS_CL_DDR_ATG = 8;
   localparam NUM_CFG_STGS_SH_DDR_ATG = 4;
   localparam NUM_CFG_STGS_PCIE_ATG = 4;

`ifdef SIM
   localparam DDR_SCRB_MAX_ADDR = 64'h1FFF;
`else   
   localparam DDR_SCRB_MAX_ADDR = 64'h3FFFFFFFF; //16GB 
`endif
   localparam DDR_SCRB_BURST_LEN_MINUS1 = 15;

`ifdef NO_CL_TST_SCRUBBER
   localparam NO_SCRB_INST = 1;
`else
   localparam NO_SCRB_INST = 0;
`endif   

axi_bus_t lcl_cl_sh_ddra();
axi_bus_t lcl_cl_sh_ddrb();
axi_bus_t lcl_cl_sh_ddrd();

axi_bus_t sh_cl_dma_pcis_bus();
axi_bus_t sh_cl_dma_pcis_q();
axi_bus_t cl_axi_mstr_bus();
axi_bus_t cl_sh_ddr_bus();
cfg_bus_t ddra_tst_cfg_bus();
cfg_bus_t ddrb_tst_cfg_bus();
cfg_bus_t ddrc_tst_cfg_bus();
cfg_bus_t ddrd_tst_cfg_bus();
cfg_bus_t axi_mstr_cfg_bus();
scrb_bus_t ddra_scrb_bus();
scrb_bus_t ddrb_scrb_bus();
scrb_bus_t ddrc_scrb_bus();
scrb_bus_t ddrd_scrb_bus();


logic clk;
(* dont_touch = "true" *) logic pipe_rst_n;
logic pre_sync_rst_n;
(* dont_touch = "true" *) logic sync_rst_n;
logic sh_cl_flr_assert_q;

logic [2:0] lcl_sh_cl_ddr_is_ready;
assign clk = clk_main_a0;

lib_pipe #(.WIDTH(1), .STAGES(4)) PIPE_RST_N (.clk(clk), .rst_n(1'b1), .in_bus(rst_main_n), .out_bus(pipe_rst_n));
   
always_ff @(negedge pipe_rst_n or posedge clk)
   if (!pipe_rst_n)
   begin
      pre_sync_rst_n <= 0;
      sync_rst_n <= 0;
   end
   else
   begin
      pre_sync_rst_n <= 1;
      sync_rst_n <= pre_sync_rst_n;
   end

logic [31:0] sh_cl_ctl0_q;
always_ff @(posedge clk or negedge sync_rst_n)
  if (!sync_rst_n)
    sh_cl_ctl0_q <= 32'd0;
  else
    sh_cl_ctl0_q <= sh_cl_ctl0;

assign ddra_scrb_bus.enable = sh_cl_ctl0_q[0];
assign ddrb_scrb_bus.enable = sh_cl_ctl0_q[1];
assign ddrd_scrb_bus.enable = sh_cl_ctl0_q[2];
assign ddrc_scrb_bus.enable = sh_cl_ctl0_q[3];

assign sh_cl_dma_pcis_bus.awvalid = sh_cl_dma_pcis_awvalid;
assign sh_cl_dma_pcis_bus.awaddr = sh_cl_dma_pcis_awaddr;
assign sh_cl_dma_pcis_bus.awid[5:0] = sh_cl_dma_pcis_awid;
assign sh_cl_dma_pcis_bus.awlen = sh_cl_dma_pcis_awlen;
assign sh_cl_dma_pcis_bus.awsize = sh_cl_dma_pcis_awsize;
assign cl_sh_dma_pcis_awready = sh_cl_dma_pcis_bus.awready;
assign sh_cl_dma_pcis_bus.wvalid = sh_cl_dma_pcis_wvalid;
assign sh_cl_dma_pcis_bus.wdata = sh_cl_dma_pcis_wdata;
assign sh_cl_dma_pcis_bus.wstrb = sh_cl_dma_pcis_wstrb;
assign sh_cl_dma_pcis_bus.wlast = sh_cl_dma_pcis_wlast;
assign cl_sh_dma_pcis_wready = sh_cl_dma_pcis_bus.wready;
assign cl_sh_dma_pcis_bvalid = sh_cl_dma_pcis_bus.bvalid;
assign cl_sh_dma_pcis_bresp = sh_cl_dma_pcis_bus.bresp;
assign sh_cl_dma_pcis_bus.bready = sh_cl_dma_pcis_bready;
assign cl_sh_dma_pcis_bid = sh_cl_dma_pcis_bus.bid[5:0];
assign sh_cl_dma_pcis_bus.arvalid = sh_cl_dma_pcis_arvalid;
assign sh_cl_dma_pcis_bus.araddr = sh_cl_dma_pcis_araddr;
assign sh_cl_dma_pcis_bus.arid[5:0] = sh_cl_dma_pcis_arid;
assign sh_cl_dma_pcis_bus.arlen = sh_cl_dma_pcis_arlen;
assign sh_cl_dma_pcis_bus.arsize = sh_cl_dma_pcis_arsize;
assign cl_sh_dma_pcis_arready = sh_cl_dma_pcis_bus.arready;
assign cl_sh_dma_pcis_rvalid = sh_cl_dma_pcis_bus.rvalid;
assign cl_sh_dma_pcis_rid = sh_cl_dma_pcis_bus.rid[5:0];
assign cl_sh_dma_pcis_rlast = sh_cl_dma_pcis_bus.rlast;
assign cl_sh_dma_pcis_rresp = sh_cl_dma_pcis_bus.rresp;
assign cl_sh_dma_pcis_rdata = sh_cl_dma_pcis_bus.rdata;
assign sh_cl_dma_pcis_bus.rready = sh_cl_dma_pcis_rready;

assign cl_sh_ddr_awid = cl_sh_ddr_bus.awid;
assign cl_sh_ddr_awaddr = cl_sh_ddr_bus.awaddr;
assign cl_sh_ddr_awlen = cl_sh_ddr_bus.awlen;
assign cl_sh_ddr_awsize = cl_sh_ddr_bus.awsize;
assign cl_sh_ddr_awvalid = cl_sh_ddr_bus.awvalid;
assign cl_sh_ddr_bus.awready = sh_cl_ddr_awready;
assign cl_sh_ddr_wid = 16'b0;
assign cl_sh_ddr_wdata = cl_sh_ddr_bus.wdata;
assign cl_sh_ddr_wstrb = cl_sh_ddr_bus.wstrb;
assign cl_sh_ddr_wlast = cl_sh_ddr_bus.wlast;
assign cl_sh_ddr_wvalid = cl_sh_ddr_bus.wvalid;
assign cl_sh_ddr_bus.wready = sh_cl_ddr_wready;
assign cl_sh_ddr_bus.bid = sh_cl_ddr_bid;
assign cl_sh_ddr_bus.bresp = sh_cl_ddr_bresp;
assign cl_sh_ddr_bus.bvalid = sh_cl_ddr_bvalid;
assign cl_sh_ddr_bready = cl_sh_ddr_bus.bready;
assign cl_sh_ddr_arid = cl_sh_ddr_bus.arid;
assign cl_sh_ddr_araddr = cl_sh_ddr_bus.araddr;
assign cl_sh_ddr_arlen = cl_sh_ddr_bus.arlen;
assign cl_sh_ddr_arsize = cl_sh_ddr_bus.arsize;
assign cl_sh_ddr_arvalid = cl_sh_ddr_bus.arvalid;
assign cl_sh_ddr_bus.arready = sh_cl_ddr_arready;
assign cl_sh_ddr_bus.rid = sh_cl_ddr_rid;
assign cl_sh_ddr_bus.rresp = sh_cl_ddr_rresp;
assign cl_sh_ddr_bus.rvalid = sh_cl_ddr_rvalid;
assign cl_sh_ddr_bus.rdata = sh_cl_ddr_rdata;
assign cl_sh_ddr_bus.rlast = sh_cl_ddr_rlast;
assign cl_sh_ddr_rready = cl_sh_ddr_bus.rready;

(* dont_touch = "true" *) logic dma_pcis_slv_sync_rst_n;
lib_pipe #(.WIDTH(1), .STAGES(4)) DMA_PCIS_SLV_SLC_RST_N (.clk(clk), .rst_n(1'b1), .in_bus(sync_rst_n), .out_bus(dma_pcis_slv_sync_rst_n));
cl_dma_pcis_slv #(.SCRB_BURST_LEN_MINUS1(DDR_SCRB_BURST_LEN_MINUS1),
                    .SCRB_MAX_ADDR(DDR_SCRB_MAX_ADDR),
                    .NO_SCRB_INST(NO_SCRB_INST)) CL_DMA_PCIS_SLV (
    .aclk(clk),
    .aresetn(dma_pcis_slv_sync_rst_n),

    .ddra_tst_cfg_bus(ddra_tst_cfg_bus),
    .ddrb_tst_cfg_bus(ddrb_tst_cfg_bus),
    .ddrc_tst_cfg_bus(ddrc_tst_cfg_bus),
    .ddrd_tst_cfg_bus(ddrd_tst_cfg_bus),

    .ddra_scrb_bus(ddra_scrb_bus),
    .ddrb_scrb_bus(ddrb_scrb_bus),
    .ddrc_scrb_bus(ddrc_scrb_bus),
    .ddrd_scrb_bus(ddrd_scrb_bus),

    .sh_cl_dma_pcis_bus(sh_cl_dma_pcis_bus),
    .cl_axi_mstr_bus(cl_axi_mstr_bus),

    .lcl_cl_sh_ddra(lcl_cl_sh_ddra),
    .lcl_cl_sh_ddrb(lcl_cl_sh_ddrb),
    .lcl_cl_sh_ddrd(lcl_cl_sh_ddrd),

    .sh_cl_dma_pcis_q(sh_cl_dma_pcis_q),

    .cl_sh_ddr_bus     (cl_sh_ddr_bus)
  );

cl_dram_dma_axi_mstr  CL_DRAM_DMA_AXI_MSTR (
    .aclk(clk),
    .aresetn(dma_pcis_slv_sync_rst_n),
    .cl_axi_mstr_bus(cl_axi_mstr_bus),
    .axi_mstr_cfg_bus(axi_mstr_cfg_bus)
  );

  logic         tie_zero;
  logic [63:0] DDR_AXI4_araddr;
  logic [1:0]  DDR_AXI4_arburst;
  logic [3:0]  DDR_AXI4_arcache;
  logic [15:0] DDR_AXI4_arid;
  logic [7:0]  DDR_AXI4_arlen;
  logic [0:0]  DDR_AXI4_arlock;
  logic [2:0]  DDR_AXI4_arprot;
  logic [3:0]  DDR_AXI4_arqos;
  logic [2:0]  DDR_AXI4_arready;
  logic [3:0]  DDR_AXI4_arregion;
  logic [2:0]  DDR_AXI4_arsize;
  logic [0:0]  DDR_AXI4_arvalid;
  logic [63:0] DDR_AXI4_awaddr;
  logic [1:0]  DDR_AXI4_awburst;
  logic [3:0]  DDR_AXI4_awcache;
  logic [15:0] DDR_AXI4_awid;
  logic [7:0]  DDR_AXI4_awlen;
  logic [0:0]  DDR_AXI4_awlock;
  logic [2:0]  DDR_AXI4_awprot;
  logic [3:0]  DDR_AXI4_awqos;
  logic [2:0]  DDR_AXI4_awready;
  logic [3:0]  DDR_AXI4_awregion;
  logic [2:0]  DDR_AXI4_awsize;
  logic [0:0]  DDR_AXI4_awvalid;
  logic [15:0] DDR_AXI4_bid [2:0];
  logic [0:0]  DDR_AXI4_bready;
  logic [1:0]  DDR_AXI4_bresp[2:0];
  logic [2:0]  DDR_AXI4_bvalid;
  logic [511:0]DDR_AXI4_rdata [2:0];
  logic [15:0] DDR_AXI4_rid [2:0];
  logic [2:0]  DDR_AXI4_rlast;
  logic [0:0]  DDR_AXI4_rready;
  logic [1:0]  DDR_AXI4_rresp [2:0];
  logic [2:0]  DDR_AXI4_rvalid;
  logic [511:0]DDR_AXI4_wdata;
  logic [0:0]  DDR_AXI4_wlast;
  logic [2:0]  DDR_AXI4_wready;
  logic [63:0] DDR_AXI4_wstrb;
  logic [0:0]  DDR_AXI4_wvalid;


(* dont_touch = "true" *) logic sh_ddr_sync_rst_n;
lib_pipe #(.WIDTH(1), .STAGES(4)) SH_DDR_SLC_RST_N (.clk(clk), .rst_n(1'b1), .in_bus(sync_rst_n), .out_bus(sh_ddr_sync_rst_n));
sh_ddr #(
         .DDR_A_PRESENT(`DDR_A_PRESENT),
         .DDR_B_PRESENT(`DDR_B_PRESENT),
         .DDR_D_PRESENT(`DDR_D_PRESENT)
   ) SH_DDR
   (
   .clk(clk),
   .rst_n(sh_ddr_sync_rst_n),

   .stat_clk(clk),
   .stat_rst_n(sh_ddr_sync_rst_n),


   .CLK_300M_DIMM0_DP(CLK_300M_DIMM0_DP),
   .CLK_300M_DIMM0_DN(CLK_300M_DIMM0_DN),
   .M_A_ACT_N(M_A_ACT_N),
   .M_A_MA(M_A_MA),
   .M_A_BA(M_A_BA),
   .M_A_BG(M_A_BG),
   .M_A_CKE(M_A_CKE),
   .M_A_ODT(M_A_ODT),
   .M_A_CS_N(M_A_CS_N),
   .M_A_CLK_DN(M_A_CLK_DN),
   .M_A_CLK_DP(M_A_CLK_DP),
   .M_A_PAR(M_A_PAR),
   .M_A_DQ(M_A_DQ),
   .M_A_ECC(M_A_ECC),
   .M_A_DQS_DP(M_A_DQS_DP),
   .M_A_DQS_DN(M_A_DQS_DN),
   .cl_RST_DIMM_A_N(cl_RST_DIMM_A_N),
   
   
   .CLK_300M_DIMM1_DP(CLK_300M_DIMM1_DP),
   .CLK_300M_DIMM1_DN(CLK_300M_DIMM1_DN),
   .M_B_ACT_N(M_B_ACT_N),
   .M_B_MA(M_B_MA),
   .M_B_BA(M_B_BA),
   .M_B_BG(M_B_BG),
   .M_B_CKE(M_B_CKE),
   .M_B_ODT(M_B_ODT),
   .M_B_CS_N(M_B_CS_N),
   .M_B_CLK_DN(M_B_CLK_DN),
   .M_B_CLK_DP(M_B_CLK_DP),
   .M_B_PAR(M_B_PAR),
   .M_B_DQ(M_B_DQ),
   .M_B_ECC(M_B_ECC),
   .M_B_DQS_DP(M_B_DQS_DP),
   .M_B_DQS_DN(M_B_DQS_DN),
   .cl_RST_DIMM_B_N(cl_RST_DIMM_B_N),

   .CLK_300M_DIMM3_DP(CLK_300M_DIMM3_DP),
   .CLK_300M_DIMM3_DN(CLK_300M_DIMM3_DN),
   .M_D_ACT_N(M_D_ACT_N),
   .M_D_MA(M_D_MA),
   .M_D_BA(M_D_BA),
   .M_D_BG(M_D_BG),
   .M_D_CKE(M_D_CKE),
   .M_D_ODT(M_D_ODT),
   .M_D_CS_N(M_D_CS_N),
   .M_D_CLK_DN(M_D_CLK_DN),
   .M_D_CLK_DP(M_D_CLK_DP),
   .M_D_PAR(M_D_PAR),
   .M_D_DQ(M_D_DQ),
   .M_D_ECC(M_D_ECC),
   .M_D_DQS_DP(M_D_DQS_DP),
   .M_D_DQS_DN(M_D_DQS_DN),
   .cl_RST_DIMM_D_N(cl_RST_DIMM_D_N),

   //------------------------------------------------------
   // DDR-4 Interface from CL (AXI-4)
   //------------------------------------------------------
   .cl_sh_ddr_awid({'0,'0,DDR_AXI4_awid}),
   .cl_sh_ddr_awaddr({'0,'0,DDR_AXI4_awaddr}),
   .cl_sh_ddr_awlen({'0,'0,DDR_AXI4_awlen}),
   .cl_sh_ddr_awsize({'0,'0,DDR_AXI4_awsize}),
   .cl_sh_ddr_awvalid({'0,'0,DDR_AXI4_awvalid}),
   .cl_sh_ddr_awburst({'0,'0,DDR_AXI4_awburst}),
   .sh_cl_ddr_awready({tie_zero,tie_zero,DDR_AXI4_awready}),

   .cl_sh_ddr_wid({'0,'0,'0}),
   .cl_sh_ddr_wdata({'0,'0,DDR_AXI4_wdata}),
   .cl_sh_ddr_wstrb({'0,'0,DDR_AXI4_wstrb}),
   .cl_sh_ddr_wlast({'0,'0,DDR_AXI4_wlast}),
   .cl_sh_ddr_wvalid({'0,'0,DDR_AXI4_wvalid}),
   .sh_cl_ddr_wready({tie_zero,tie_zero,DDR_AXI4_wready}),

   .sh_cl_ddr_bid(DDR_AXI4_bid),
   .sh_cl_ddr_bresp(DDR_AXI4_bresp),
   .sh_cl_ddr_bvalid(DDR_AXI4_bvalid),
   .cl_sh_ddr_bready({'b0,'b0,DDR_AXI4_bready}),

   .cl_sh_ddr_arid({'0,'0,DDR_AXI4_arid}),
   .cl_sh_ddr_araddr({'0,'0,DDR_AXI4_araddr}),
   .cl_sh_ddr_arlen({'0,'0,DDR_AXI4_arlen}),
   .cl_sh_ddr_arsize({'b0,'b0,DDR_AXI4_arsize}),
   .cl_sh_ddr_arvalid({'0,'0,DDR_AXI4_arvalid}),
   .cl_sh_ddr_arburst({'0,'0,DDR_AXI4_arburst}),
   .sh_cl_ddr_arready(DDR_AXI4_arready),

   .sh_cl_ddr_rid(DDR_AXI4_rid),
   .sh_cl_ddr_rdata(DDR_AXI4_rdata),
   .sh_cl_ddr_rresp(DDR_AXI4_rresp),
   .sh_cl_ddr_rlast(DDR_AXI4_rlast),
   .sh_cl_ddr_rvalid(DDR_AXI4_rvalid),
   .cl_sh_ddr_rready({'0,'0,DDR_AXI4_rready}),

   .sh_cl_ddr_is_ready(lcl_sh_cl_ddr_is_ready),

   .sh_ddr_stat_addr0  (sh_ddr_stat_addr0) ,
   .sh_ddr_stat_wr0    (sh_ddr_stat_wr0     ) , 
   .sh_ddr_stat_rd0    (sh_ddr_stat_rd0     ) , 
   .sh_ddr_stat_wdata0 (sh_ddr_stat_wdata0  ) , 
   .ddr_sh_stat_ack0   (ddr_sh_stat_ack0    ) ,
   .ddr_sh_stat_rdata0 (ddr_sh_stat_rdata0  ),
   .ddr_sh_stat_int0   (ddr_sh_stat_int0    ),

   .sh_ddr_stat_addr1  (sh_ddr_stat_addr1) ,
   .sh_ddr_stat_wr1    (sh_ddr_stat_wr1     ) , 
   .sh_ddr_stat_rd1    (sh_ddr_stat_rd1     ) , 
   .sh_ddr_stat_wdata1 (sh_ddr_stat_wdata1  ) , 
   .ddr_sh_stat_ack1   (ddr_sh_stat_ack1    ) ,
   .ddr_sh_stat_rdata1 (ddr_sh_stat_rdata1  ),
   .ddr_sh_stat_int1   (ddr_sh_stat_int1    ),

   .sh_ddr_stat_addr2  (sh_ddr_stat_addr1) ,
   .sh_ddr_stat_wr2    (sh_ddr_stat_wr1     ) , 
   .sh_ddr_stat_rd2    (sh_ddr_stat_rd1     ) , 
   .sh_ddr_stat_wdata2 (sh_ddr_stat_wdata1  ) , 
   .ddr_sh_stat_ack2   (ddr_sh_stat_ack1    ) ,
   .ddr_sh_stat_rdata2 (ddr_sh_stat_rdata1  ),
   .ddr_sh_stat_int2   (ddr_sh_stat_int1    ) 
   );

   cl_test cl_nova_project(
   .s_axi_aclk_0      (clk),
   .arst_n            (sh_cl_status_vdip[0]), // su
   .arst_ndm_n        (sh_cl_status_vdip[0]), // su dbg
   .s_axi_aresetn_0   (sh_ddr_sync_rst_n), // xilinx

   
    // Slave
   .BAR1_AXIL_32_araddr  ({32'b0,sh_bar1_araddr}),
   .BAR1_AXIL_32_arprot  ('0),
   .BAR1_AXIL_32_arready (bar1_sh_arready),
   .BAR1_AXIL_32_arvalid (sh_bar1_arvalid),
   .BAR1_AXIL_32_awaddr  ({32'b0,sh_bar1_awaddr}),
   .BAR1_AXIL_32_awprot  ('0),
   .BAR1_AXIL_32_awready (bar1_sh_awready),
   .BAR1_AXIL_32_awvalid (sh_bar1_awvalid),
   .BAR1_AXIL_32_bready  (sh_bar1_bready),
   .BAR1_AXIL_32_bresp   (bar1_sh_bresp),
   .BAR1_AXIL_32_bvalid  (bar1_sh_bvalid),
   .BAR1_AXIL_32_rdata   (bar1_sh_rdata),
   .BAR1_AXIL_32_rready  (sh_bar1_rready),
   .BAR1_AXIL_32_rresp   (bar1_sh_rresp),
   .BAR1_AXIL_32_rvalid  (bar1_sh_rvalid),
   .BAR1_AXIL_32_wdata   (sh_bar1_wdata),
   .BAR1_AXIL_32_wready  (bar1_sh_wready),
   .BAR1_AXIL_32_wstrb   (sh_bar1_wstrb),
   .BAR1_AXIL_32_wvalid  (sh_bar1_wvalid),

    .DDR_AXI4_araddr  (DDR_AXI4_araddr),
    .DDR_AXI4_arburst (DDR_AXI4_arburst),
    //.DDR_AXI4_arcache(),
    .DDR_AXI4_arid    (DDR_AXI4_arid),
    .DDR_AXI4_arlen   (DDR_AXI4_arlen),
    //.DDR_AXI4_arlock(),
    //.DDR_AXI4_arprot(),
    //.DDR_AXI4_arqos(),
    .DDR_AXI4_arready (DDR_AXI4_arready[0]),
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
    .DDR_AXI4_bid     (DDR_AXI4_bid[0]),
    .DDR_AXI4_bready  (DDR_AXI4_bready),
    .DDR_AXI4_bresp   (DDR_AXI4_bresp[0]),
    .DDR_AXI4_bvalid  (DDR_AXI4_bvalid[0]),
    .DDR_AXI4_rdata   (DDR_AXI4_rdata[0]),
    .DDR_AXI4_rid     (DDR_AXI4_rid[0]),
    .DDR_AXI4_rlast   (DDR_AXI4_rlast[0]),
    .DDR_AXI4_rready  (DDR_AXI4_rready),
    .DDR_AXI4_rresp   (DDR_AXI4_rresp[0]),
    .DDR_AXI4_rvalid  (DDR_AXI4_rvalid[0]),
    .DDR_AXI4_wdata   (DDR_AXI4_wdata),
    .DDR_AXI4_wlast   (DDR_AXI4_wlast),
    .DDR_AXI4_wready  (DDR_AXI4_wready),
    .DDR_AXI4_wstrb   (DDR_AXI4_wstrb),
    .DDR_AXI4_wvalid  (DDR_AXI4_wvalid),
    .interrupt        (cl_sh_status_vled[0]),
        .DMA_PCIS_AXI4_araddr   (lcl_cl_sh_ddra.araddr),
        .DMA_PCIS_AXI4_arburst  ('b10),
        .DMA_PCIS_AXI4_arcache  ('0),
        .DMA_PCIS_AXI4_arid     (lcl_cl_sh_ddra.arid),
        .DMA_PCIS_AXI4_arlen    (lcl_cl_sh_ddra.arlen),
        .DMA_PCIS_AXI4_arlock   ('0),
        .DMA_PCIS_AXI4_arprot   ('b0),
        .DMA_PCIS_AXI4_arqos    ('b0),
        .DMA_PCIS_AXI4_arready  (lcl_cl_sh_ddra.arready),
        .DMA_PCIS_AXI4_arsize   (lcl_cl_sh_ddra.arsize),
        .DMA_PCIS_AXI4_arvalid  (lcl_cl_sh_ddra.arvalid),
        .DMA_PCIS_AXI4_awaddr   (lcl_cl_sh_ddra.awaddr),
        .DMA_PCIS_AXI4_awburst  ('b10),
        .DMA_PCIS_AXI4_awcache  ('b0),
        .DMA_PCIS_AXI4_awid     (lcl_cl_sh_ddra.awid),
        .DMA_PCIS_AXI4_awlen    (lcl_cl_sh_ddra.awlen),
        .DMA_PCIS_AXI4_awlock   ('b0),
        .DMA_PCIS_AXI4_awprot   ('b0),
        .DMA_PCIS_AXI4_awqos    ('b0),
        .DMA_PCIS_AXI4_awready  (lcl_cl_sh_ddra.awready),
        .DMA_PCIS_AXI4_awsize   (lcl_cl_sh_ddra.awsize),
        .DMA_PCIS_AXI4_awvalid  (lcl_cl_sh_ddra.awvalid),
        .DMA_PCIS_AXI4_bid      (lcl_cl_sh_ddra.bid),
        .DMA_PCIS_AXI4_bready   (lcl_cl_sh_ddra.bready),
        .DMA_PCIS_AXI4_bresp    (lcl_cl_sh_ddra.bresp),
        .DMA_PCIS_AXI4_bvalid   (lcl_cl_sh_ddra.bvalid),
        .DMA_PCIS_AXI4_rdata    (lcl_cl_sh_ddra.rdata),
        .DMA_PCIS_AXI4_rid      (lcl_cl_sh_ddra.rid),
        .DMA_PCIS_AXI4_rlast    (lcl_cl_sh_ddra.rlast),
        .DMA_PCIS_AXI4_rready   (lcl_cl_sh_ddra.rready),
        .DMA_PCIS_AXI4_rresp    (lcl_cl_sh_ddra.rresp),
        .DMA_PCIS_AXI4_rvalid   (lcl_cl_sh_ddra.rvalid),
        .DMA_PCIS_AXI4_wdata    (lcl_cl_sh_ddra.wdata),
        .DMA_PCIS_AXI4_wlast    (lcl_cl_sh_ddra.wlast),
        .DMA_PCIS_AXI4_wready   (lcl_cl_sh_ddra.wready),
        .DMA_PCIS_AXI4_wstrb    (lcl_cl_sh_ddra.wstrb),
        .DMA_PCIS_AXI4_wvalid   (lcl_cl_sh_ddra.wvalid),

        .OCL_AXIL_32_araddr   ('b0),
        .OCL_AXIL_32_arprot   ('b0),
        .OCL_AXIL_32_arready  (),
        .OCL_AXIL_32_arvalid  ('b0),
        .OCL_AXIL_32_awaddr   ('b0),
        .OCL_AXIL_32_awprot   ('b0),
        .OCL_AXIL_32_awready  (),
        .OCL_AXIL_32_awvalid  ('b0),
        .OCL_AXIL_32_bready   ('b0),
        .OCL_AXIL_32_bresp    (),
        .OCL_AXIL_32_bvalid   (),
        .OCL_AXIL_32_rdata    (),
        .OCL_AXIL_32_rready   ('b0),
        .OCL_AXIL_32_rresp    (),
        .OCL_AXIL_32_rvalid   (),
        .OCL_AXIL_32_wdata    ('b0),
        .OCL_AXIL_32_wready   (),
        .OCL_AXIL_32_wstrb    ('b0),
        .OCL_AXIL_32_wvalid   ('b0)
 );
endmodule   
