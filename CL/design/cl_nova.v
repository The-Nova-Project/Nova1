
module cl_nova #(parameter NUM_PCIE=1, parameter NUM_DDR=4, parameter NUM_HMC=4, parameter NUM_GTY = 4) 
(
   `include "cl_ports.vh" // Fixed port definition
);
  `include "cl_common_defines.vh"  // CL Defines for all examples
  `include "cl_id_defines.vh"      // Defines for ID0 and ID1 (PCI ID's)
  `include "nova_project_defines.vh"   // CL Defines for cl_nova1

  localparam NUM_CFG_STGS_INT_TST = 4;
  localparam NUM_CFG_STGS_HMC_ATG = 4;
  localparam NUM_CFG_STGS_CL_DDR_ATG = 4;
  localparam NUM_CFG_STGS_SH_DDR_ATG = 4;
  localparam NUM_CFG_STGS_PCIE_ATG = 4;
  localparam NUM_CFG_STGS_AURORA_ATG = 4;
  localparam NUM_CFG_STGS_XDCFG = 4;
  localparam NUM_CFG_STGS_XDMA = 4;
   
`ifdef SIM
  localparam DDR_SCRB_MAX_ADDR = 64'h1FFF;
  localparam HMC_SCRB_MAX_ADDR = 64'h7FF;
`else   
  localparam DDR_SCRB_MAX_ADDR = 64'h3FFFFFFFF; //16GB 
  localparam HMC_SCRB_MAX_ADDR = 64'h7FFFFFFF;  // 2GB
`endif
  localparam DDR_SCRB_BURST_LEN_MINUS1 = 15;
  localparam HMC_SCRB_BURST_LEN_MINUS1 = 3;

logic rst_main_n_sync;

//--------------------------------------------0
// Start with Tie-Off of Unused Interfaces
//---------------------------------------------
// the developer should use the next set of `include
// to properly tie-off any unused interface
// The list is put in the top of the module
// to avoid cases where developer may forget to
// remove it from the end of the file

`include "unused_flr_template.inc"
`include "unused_ddr_a_b_d_template.inc"
//`include "unused_ddr_c_template.inc"
`include "unused_pcim_template.inc"
//`include "unused_dma_pcis_template.inc"
`include "unused_cl_sda_template.inc"
// `include "unused_sh_bar1_template.inc"
`include "unused_apppf_irq_template.inc"
//`include "unused_sh_ocl_template.inc"

//-------------------------------------------------
// ID Values (cl_nova1_defines.vh)
//-------------------------------------------------
  assign cl_sh_id0[31:0] = `CL_SH_ID0;
  assign cl_sh_id1[31:0] = `CL_SH_ID1;
  assign cl_sh_ddr_awburst = 2'b01;
  assign cl_sh_ddr_arburst = 2'b01;

//-------------------------------------------------
// Reset Synchronization
//-------------------------------------------------
logic pre_sync_rst_n;

always_ff @(negedge rst_main_n or posedge clk_main_a0)
   if (!rst_main_n)
   begin
      pre_sync_rst_n  <= 0;
      rst_main_n_sync <= 0;
   end
   else
   begin
      pre_sync_rst_n  <= 1;
      rst_main_n_sync <= pre_sync_rst_n;
   end

cl_test cl_nova_project(
   .s_axi_aclk_0      (clk_main_a0),
   .arst_n      (sh_cl_status_vdip[0]), // su
   .arst_ndm_n  (sh_cl_status_vdip[0]), // su dbg
   .s_axi_aresetn_0   (rst_main_n_sync), // xilinx

   
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

    .DDR_AXI4_araddr(cl_sh_ddr_araddr),
    .DDR_AXI4_arburst(),
    //.DDR_AXI4_arcache(),
    .DDR_AXI4_arid(cl_sh_ddr_arid),
    .DDR_AXI4_arlen(cl_sh_ddr_arlen),
    //.DDR_AXI4_arlock(),
    //.DDR_AXI4_arprot(),
    //.DDR_AXI4_arqos(),
    .DDR_AXI4_arready(sh_cl_ddr_arready),
    //.DDR_AXI4_arregion(),
    .DDR_AXI4_arsize(cl_sh_ddr_arsize),
    .DDR_AXI4_arvalid(cl_sh_ddr_arvalid),
    .DDR_AXI4_awaddr(cl_sh_ddr_awaddr),
    .DDR_AXI4_awburst(),
    //.DDR_AXI4_awcache(),
    .DDR_AXI4_awid(cl_sh_ddr_awid),
    .DDR_AXI4_awlen(cl_sh_ddr_awlen),
    //.DDR_AXI4_awlock(),
    //.DDR_AXI4_awprot(),
    //.DDR_AXI4_awqos(),
    .DDR_AXI4_awready(sh_cl_ddr_awready),
    //.DDR_AXI4_awregion(),
    .DDR_AXI4_awsize(cl_sh_ddr_awsize),
    .DDR_AXI4_awvalid(cl_sh_ddr_awvalid),
    .DDR_AXI4_bid(sh_cl_ddr_bid),
    .DDR_AXI4_bready(cl_sh_ddr_bready),
    .DDR_AXI4_bresp(sh_cl_ddr_bresp),
    .DDR_AXI4_bvalid(sh_cl_ddr_bvalid),
    .DDR_AXI4_rdata(sh_cl_ddr_rdata),
    .DDR_AXI4_rid(sh_cl_ddr_rid),
    .DDR_AXI4_rlast(sh_cl_ddr_rlast),
    .DDR_AXI4_rready(cl_sh_ddr_rready),
    .DDR_AXI4_rresp(sh_cl_ddr_rresp),
    .DDR_AXI4_rvalid(sh_cl_ddr_rvalid),
    .DDR_AXI4_wdata(cl_sh_ddr_wdata),
    .DDR_AXI4_wlast(cl_sh_ddr_wlast),
    .DDR_AXI4_wready(sh_cl_ddr_wready),
    .DDR_AXI4_wstrb(cl_sh_ddr_wstrb),
    .DDR_AXI4_wvalid(cl_sh_ddr_wvalid),
    .interrupt(cl_sh_status_vled[0]),
        .DMA_PCIS_AXI4_araddr(sh_cl_dma_pcis_araddr),
        .DMA_PCIS_AXI4_arburst(),
        .DMA_PCIS_AXI4_arcache(),
        .DMA_PCIS_AXI4_arid({10'b0,sh_cl_dma_pcis_arid}),
        .DMA_PCIS_AXI4_arlen(sh_cl_dma_pcis_arlen),
        .DMA_PCIS_AXI4_arlock(),
        .DMA_PCIS_AXI4_arprot(),
        .DMA_PCIS_AXI4_arqos(),
        .DMA_PCIS_AXI4_arready(cl_sh_dma_pcis_arready),
        .DMA_PCIS_AXI4_arsize(sh_cl_dma_pcis_arsize),
        .DMA_PCIS_AXI4_arvalid(sh_cl_dma_pcis_arvalid),
        .DMA_PCIS_AXI4_awaddr(sh_cl_dma_pcis_awaddr),
        .DMA_PCIS_AXI4_awburst(),
        .DMA_PCIS_AXI4_awcache(),
        .DMA_PCIS_AXI4_awid({10'b0,sh_cl_dma_pis_awid}),
        .DMA_PCIS_AXI4_awlen(sh_cl_dma_pcis_awlen),
        .DMA_PCIS_AXI4_awlock(),
        .DMA_PCIS_AXI4_awprot(),
        .DMA_PCIS_AXI4_awqos(),
        .DMA_PCIS_AXI4_awready(cl_sh_dma_pcis_awready),
        .DMA_PCIS_AXI4_awsize(sh_cl_dma_pcis_awsize),
        .DMA_PCIS_AXI4_awvalid(sh_cl_dma_pcis_awvalid),
        .DMA_PCIS_AXI4_bid(cl_sh_dma_pcis_bid[5:0]),
        .DMA_PCIS_AXI4_bready(sh_cl_dma_pcis_bready),
        .DMA_PCIS_AXI4_bresp(cl_sh_dma_pcis_bresp),
        .DMA_PCIS_AXI4_bvalid(cl_sh_dma_pcis_bvalid),
        .DMA_PCIS_AXI4_rdata(cl_sh_dma_pcis_rdata),
        .DMA_PCIS_AXI4_rid(cl_sh_dma_pcis_rid[5:0]),
        .DMA_PCIS_AXI4_rlast(cl_sh_dma_pcis_rlast),
        .DMA_PCIS_AXI4_rready(sh_cl_dma_pcis_rready),
        .DMA_PCIS_AXI4_rresp(cl_sh_dma_pcis_rresp),
        .DMA_PCIS_AXI4_rvalid(cl_sh_dma_pcis_rvalid),
        .DMA_PCIS_AXI4_wdata(sh_cl_dma_pcis_wdata),
        .DMA_PCIS_AXI4_wlast(sh_cl_dma_pcis_wlast),
        .DMA_PCIS_AXI4_wready(cl_sh_dma_pcis_wready),
        .DMA_PCIS_AXI4_wstrb(sh_cl_dma_pcis_wstrb),
        .DMA_PCIS_AXI4_wvalid(sh_cl_dma_pcis_wvalid),

        .OCL_AXIL_32_araddr(sh_ocl_araddr),
        .OCL_AXIL_32_arprot(),
        .OCL_AXIL_32_arready(ocl_sh_arready),
        .OCL_AXIL_32_arvalid(sh_ocl_arvalid),
        .OCL_AXIL_32_awaddr(sh_ocl_awaddr),
        .OCL_AXIL_32_awprot(),
        .OCL_AXIL_32_awready(ocl_sh_awready),
        .OCL_AXIL_32_awvalid(sh_ocl_awvalid),
        .OCL_AXIL_32_bready(sh_ocl_bready),
        .OCL_AXIL_32_bresp(ocl_sh_bresp),
        .OCL_AXIL_32_bvalid(ocl_sh_bvalid),
        .OCL_AXIL_32_rdata(ocl_sh_rdata),
        .OCL_AXIL_32_rready(sh_ocl_rready),
        .OCL_AXIL_32_rresp(ocl_sh_rresp),
        .OCL_AXIL_32_rvalid(ocl_sh_rvalid),
        .OCL_AXIL_32_wdata(sh_ocl_wdata),
        .OCL_AXIL_32_wready(ocl_sh_wready),
        .OCL_AXIL_32_wstrb(sh_ocl_wstrb),
        .OCL_AXIL_32_wvalid(sh_ocl_wvalid)

   
 );
    
endmodule


