module teststandaloneuart;
logic [3:0]S_AXI_0_araddr;
logic S_AXI_0_arready;
logic S_AXI_0_arvalid;
logic [3:0]S_AXI_0_awaddr;
logic S_AXI_0_awready;
logic S_AXI_0_awvalid;
logic S_AXI_0_bready;
logic [1:0]S_AXI_0_bresp;
logic S_AXI_0_bvalid;
logic [31:0]S_AXI_0_rdata;
logic S_AXI_0_rready;
logic [1:0]S_AXI_0_rresp;
logic S_AXI_0_rvalid;
logic [31:0]S_AXI_0_wdata;
logic S_AXI_0_wready;
logic [3:0]S_AXI_0_wstrb;
logic S_AXI_0_wvalid;
// logic UART_0_rxd;
logic UART_0_txd;
logic interrupt_0;
logic s_axi_aclk_0;
logic s_axi_aresetn_0;
design_1 uart
   (.S_AXI_0_araddr(S_AXI_0_araddr),
    .S_AXI_0_arready(S_AXI_0_arready),
    .S_AXI_0_arvalid(S_AXI_0_arvalid),
    .S_AXI_0_awaddr(S_AXI_0_awaddr),
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
    .UART_0_rxd(UART_0_txd),
    .UART_0_txd(UART_0_txd),
    .interrupt_0(interrupt_0),
    .s_axi_aclk_0(s_axi_aclk_0),
    .s_axi_aresetn_0(s_axi_aresetn_0));
    always #2 s_axi_aclk_0=~s_axi_aclk_0;
initial begin
  $dumpvars(1);
    s_axi_aresetn_0 = 1;
    S_AXI_0_awaddr=32'h0000_0004;
    #5
    S_AXI_0_wdata=32'ha;
    #5
    S_AXI_0_awaddr=32'h0000_000c;
    #5
    S_AXI_0_wdata=32'h0000_0010;
    #5
    S_AXI_0_araddr=32'h0000_0008;
    #200
    $finish();
  end
endmodule