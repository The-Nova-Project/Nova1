
`define WT_DCACHE
module cl_nova #(parameter NUM_DDR=4) 

(
   `include "cl_ports.vh"

);

`include "nova_project_defines.vh"      // CL Defines for all examples
`include "cl_id_defines.vh"          // Defines for ID0 and ID1 (PCI ID's)
`include "cl_dram_dma_defines.vh"
`include "unused_pcim_template.inc"
`include "unused_cl_sda_template.inc"

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



logic clk;
logic trst_n;                                //
logic p_rst_n;                               //
(* dont_touch = "true" *) logic pipe_rst_n;
logic pre_sync_rst_n;
(* dont_touch = "true" *) logic sync_rst_n;
logic sh_cl_flr_assert_q;

assign clk = clk_main_a0;
assign cl_sh_id0 = 32'hF000_1D0F;
assign cl_sh_id1 = 32'h1D51_FEDD;

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

   always_ff @(posedge clk_main_a0) begin
    if(!rst_main_n)begin
        p_rst_n <= 0;
        trst_n  <= 0;
    end else begin
        p_rst_n <= sh_cl_status_vdip[0];
        trst_n  <= sh_cl_status_vdip[4]; 
    end
end

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
   .sh_cl_ddr_awready({DDR_AXI4_awready}),

   .cl_sh_ddr_wid({'0,'0,'0}),
   .cl_sh_ddr_wdata({'0,'0,DDR_AXI4_wdata}),
   .cl_sh_ddr_wstrb({'0,'0,DDR_AXI4_wstrb}),
   .cl_sh_ddr_wlast({'0,'0,DDR_AXI4_wlast}),
   .cl_sh_ddr_wvalid({'0,'0,DDR_AXI4_wvalid}),
   .sh_cl_ddr_wready({DDR_AXI4_wready}),

   .sh_cl_ddr_bid(DDR_AXI4_bid),
   .sh_cl_ddr_bresp(DDR_AXI4_bresp),
   .sh_cl_ddr_bvalid(DDR_AXI4_bvalid),
   .cl_sh_ddr_bready({'0,'0,DDR_AXI4_bready}),

   .cl_sh_ddr_arid({'0,'0,DDR_AXI4_arid}),
   .cl_sh_ddr_araddr({'0,'0,DDR_AXI4_araddr}),
   .cl_sh_ddr_arlen({'0,'0,DDR_AXI4_arlen}),
   .cl_sh_ddr_arsize({'0,'0,DDR_AXI4_arsize}),
   .cl_sh_ddr_arvalid({'0,'0,DDR_AXI4_arvalid}),
   .cl_sh_ddr_arburst({'0,'0,DDR_AXI4_arburst}),
   .sh_cl_ddr_arready(DDR_AXI4_arready),

   .sh_cl_ddr_rid(DDR_AXI4_rid),
   .sh_cl_ddr_rdata(DDR_AXI4_rdata),
   .sh_cl_ddr_rresp(DDR_AXI4_rresp),
   .sh_cl_ddr_rlast(DDR_AXI4_rlast),
   .sh_cl_ddr_rvalid(DDR_AXI4_rvalid),
   .cl_sh_ddr_rready({'0,'0,DDR_AXI4_rready}),

   .sh_cl_ddr_is_ready(),

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

   .sh_ddr_stat_addr2  (sh_ddr_stat_addr2) ,
   .sh_ddr_stat_wr2    (sh_ddr_stat_wr2     ) , 
   .sh_ddr_stat_rd2    (sh_ddr_stat_rd2     ) , 
   .sh_ddr_stat_wdata2 (sh_ddr_stat_wdata2  ) , 
   .ddr_sh_stat_ack2   (ddr_sh_stat_ack2    ) ,
   .ddr_sh_stat_rdata2 (ddr_sh_stat_rdata2  ),
   .ddr_sh_stat_int2   (ddr_sh_stat_int2    ) 
   );	
  
nova_subsystem cl_nova_subsystem(
   .s_axi_aclk_0      (clk_main_a0),
   .arst_n            (sh_cl_status_vdip[0]), // su
   .s_axi_aresetn_0   (rst_main_n), // xilinx
   
    // Slave
   .AXI_0_araddr           ({32'b0,sh_bar1_araddr[19:12],12'h000,sh_bar1_araddr[11:0]}),
   .AXI_0_arprot           ('0),
   .AXI_0_arready          (bar1_sh_arready),
   .AXI_0_arvalid          (sh_bar1_arvalid),
   .AXI_0_awaddr           ({32'b0,sh_bar1_awaddr[19:12],12'h000,sh_bar1_awaddr[11:0]}),
   .AXI_0_awprot           ('0),
   .AXI_0_awready          (bar1_sh_awready),
   .AXI_0_awvalid          (sh_bar1_awvalid),
   .AXI_0_bready           (sh_bar1_bready),
   .AXI_0_bresp            (bar1_sh_bresp),
   .AXI_0_bvalid           (bar1_sh_bvalid),
   .AXI_0_rdata            (bar1_sh_rdata),
   .AXI_0_rready           (sh_bar1_rready),
   .AXI_0_rresp            (bar1_sh_rresp),
   .AXI_0_rvalid           (bar1_sh_rvalid),
   .AXI_0_wdata            (sh_bar1_wdata),
   .AXI_0_wready           (bar1_sh_wready),
   .AXI_0_wstrb            (sh_bar1_wstrb),
   .AXI_0_wvalid           (sh_bar1_wvalid),
   .DDR_AXI4_araddr        (DDR_AXI4_araddr),
   .DDR_AXI4_arburst       (DDR_AXI4_arburst),
   .DDR_AXI4_arcache       (DDR_AXI4_arcache),
   .DDR_AXI4_arid          (DDR_AXI4_arid),
   .DDR_AXI4_arlen         (DDR_AXI4_arlen),
   .DDR_AXI4_arlock        (DDR_AXI4_arlock),
   .DDR_AXI4_arprot        (DDR_AXI4_arprot),
   .DDR_AXI4_arqos         (DDR_AXI4_arqos),
   .DDR_AXI4_arready       (DDR_AXI4_arready[0]),
   .DDR_AXI4_arregion      (DDR_AXI4_arregion),
   .DDR_AXI4_arsize        (DDR_AXI4_arsize),     //not 
   .DDR_AXI4_arvalid       (DDR_AXI4_arvalid),
   .DDR_AXI4_awaddr        (DDR_AXI4_awaddr),
   .DDR_AXI4_awburst       (DDR_AXI4_awburst),
   .DDR_AXI4_awcache       (DDR_AXI4_awcache),
   .DDR_AXI4_awid          (DDR_AXI4_awid),
   .DDR_AXI4_awlen         (DDR_AXI4_awlen),
   .DDR_AXI4_awlock        (DDR_AXI4_awlock),
   .DDR_AXI4_awprot        (DDR_AXI4_awprot),
   .DDR_AXI4_awqos         (DDR_AXI4_awqos),
   .DDR_AXI4_awready       (DDR_AXI4_awready[0]),
   .DDR_AXI4_awregion      (DDR_AXI4_awregion),
   .DDR_AXI4_awsize        (DDR_AXI4_awsize),    //not
   .DDR_AXI4_awvalid       (DDR_AXI4_awvalid),
   .DDR_AXI4_bid           (DDR_AXI4_bid[0]),
   .DDR_AXI4_bready        (DDR_AXI4_bready),
   .DDR_AXI4_bresp         (DDR_AXI4_bresp[0]),
   .DDR_AXI4_bvalid        (DDR_AXI4_bvalid[0]),
   .DDR_AXI4_rdata         (DDR_AXI4_rdata[0]),
   .DDR_AXI4_rid           (DDR_AXI4_rid[0]),
   .DDR_AXI4_rlast         (DDR_AXI4_rlast[0]),
   .DDR_AXI4_rready        (DDR_AXI4_rready),
   .DDR_AXI4_rresp         (DDR_AXI4_rresp[0]),
   .DDR_AXI4_rvalid        (DDR_AXI4_rvalid[0]),
   .DDR_AXI4_wdata         (DDR_AXI4_wdata),
   .DDR_AXI4_wlast         (DDR_AXI4_wlast),
   .DDR_AXI4_wready        (DDR_AXI4_wready[0]),
   .DDR_AXI4_wstrb         (DDR_AXI4_wstrb),
   .DDR_AXI4_wvalid        (DDR_AXI4_wvalid),
   .DMA_PCIS_AXI4_araddr   (sh_cl_dma_pcis_araddr),
   .DMA_PCIS_AXI4_arburst  ('b10),
   .DMA_PCIS_AXI4_arcache  ('0),
   .DMA_PCIS_AXI4_arid     (sh_cl_dma_pcis_arid),
   .DMA_PCIS_AXI4_arlen    (sh_cl_dma_pcis_arlen),
   .DMA_PCIS_AXI4_arlock   ('0),
   .DMA_PCIS_AXI4_arprot   ('0),
   .DMA_PCIS_AXI4_arqos    ('0),
   .DMA_PCIS_AXI4_arready  (cl_sh_dma_pcis_arready),
   .DMA_PCIS_AXI4_arsize   (sh_cl_dma_pcis_arsize),
   .DMA_PCIS_AXI4_arvalid  (sh_cl_dma_pcis_arvalid),
   .DMA_PCIS_AXI4_awaddr   (sh_cl_dma_pcis_awaddr),
   .DMA_PCIS_AXI4_awburst  ('b10),
   .DMA_PCIS_AXI4_awcache  ('0),
   .DMA_PCIS_AXI4_awid     (sh_cl_dma_pcis_awid),
   .DMA_PCIS_AXI4_awlen    (sh_cl_dma_pcis_awlen),
   .DMA_PCIS_AXI4_awlock   ('0),
   .DMA_PCIS_AXI4_awprot   ('0),
   .DMA_PCIS_AXI4_awqos    ('0),
   .DMA_PCIS_AXI4_awready  (cl_sh_dma_pcis_awready),
   .DMA_PCIS_AXI4_awsize   (sh_cl_dma_pcis_awsize),
   .DMA_PCIS_AXI4_awvalid  (sh_cl_dma_pcis_awvalid),
   .DMA_PCIS_AXI4_bid      (cl_sh_dma_pcis_bid),
   .DMA_PCIS_AXI4_bready   (sh_cl_dma_pcis_bready),
   .DMA_PCIS_AXI4_bresp    (cl_sh_dma_pcis_bresp),
   .DMA_PCIS_AXI4_bvalid   (cl_sh_dma_pcis_bvalid),
   .DMA_PCIS_AXI4_rdata    (cl_sh_dma_pcis_rdata),
   .DMA_PCIS_AXI4_rid      (cl_sh_dma_pcis_rid),
   .DMA_PCIS_AXI4_rlast    (cl_sh_dma_pcis_rlast),
   .DMA_PCIS_AXI4_rready   (sh_cl_dma_pcis_rready),
   .DMA_PCIS_AXI4_rresp    (cl_sh_dma_pcis_rresp),
   .DMA_PCIS_AXI4_rvalid   (cl_sh_dma_pcis_rvalid),
   .DMA_PCIS_AXI4_wdata    (sh_cl_dma_pcis_wdata),
   .DMA_PCIS_AXI4_wlast    (sh_cl_dma_pcis_wlast),
   .DMA_PCIS_AXI4_wready   (cl_sh_dma_pcis_wready),
   .DMA_PCIS_AXI4_wstrb    (sh_cl_dma_pcis_wstrb),
   .DMA_PCIS_AXI4_wvalid   (sh_cl_dma_pcis_wvalid),
   .OCL_AXI4L_araddr       (sh_ocl_araddr),
   .OCL_AXI4L_arprot       ('0),
   .OCL_AXI4L_arready      (ocl_sh_arready),
   .OCL_AXI4L_arvalid      (sh_ocl_arvalid),
   .OCL_AXI4L_awaddr       (sh_ocl_awaddr),
   .OCL_AXI4L_awprot       ('0),
   .OCL_AXI4L_awready      (ocl_sh_awready),
   .OCL_AXI4L_awvalid      (sh_ocl_awvalid),
   .OCL_AXI4L_bready       (sh_ocl_bready),
   .OCL_AXI4L_bresp        (ocl_sh_bresp),
   .OCL_AXI4L_bvalid       (ocl_sh_bvalid),
   .OCL_AXI4L_rdata        (ocl_sh_rdata),
   .OCL_AXI4L_rready       (sh_ocl_rready),
   .OCL_AXI4L_rresp        (ocl_sh_rresp),
   .OCL_AXI4L_rvalid       (ocl_sh_rvalid),
   .OCL_AXI4L_wdata        (sh_ocl_wdata),
   .OCL_AXI4L_wready       (ocl_sh_wready),
   .OCL_AXI4L_wstrb        (sh_ocl_wstrb),
   .OCL_AXI4L_wvalid       (sh_ocl_wvalid),
   .trst_n                 (trst_n),
   .interrupt_1            (cl_sh_status_vled[0]),
   .p_rst_n                (p_rst_n)
 );
    
endmodule


