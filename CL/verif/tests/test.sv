module test();

import tb_type_defines_pkg::*;
// `include "cl_common_defines.vh" // CL Defines with register addresses

// AXI ID
parameter [5:0] AXI_ID = 6'h0;

logic [31:0] rdata;
logic [511:0] rdata_DMA;
logic [31:0] r_addr;
logic [31:0] w_data;
logic [31:0] w_addr = 0000000081000000;
logic [31:0] inc_data = 0;
int file_handler;
int  i;
int A;
// logic [15:0] vdip_value;
// logic [15:0] vled_value;


   initial begin
      file_handler=$fopen("/home/muheet/stableEnv/aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/tests/int_bringup_test.txt","r");
      tb.power_up();

    forever begin
      if(!$feof(file_handler))begin
        tb.set_virtual_dip_switch(.dip(0));
             file_handler=$fopen("/home/muheet/stableEnv/aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/tests/int_bringup_test.txt","r");
                  for(i = 0; i <= inc_data; i=i+1)begin
                            $fscanf(file_handler,"%h\n",A);
                            w_data = A;
                  end
        $display ("Writing 0x%x", w_data," to address 0x%x", w_addr);
        tb.poke(.addr(w_addr), .data(w_data), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1)); // write register
        
        r_addr = w_addr;
        tb.peek(.addr(r_addr), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));         // start read & write
        $display ("Reading 0x%x from address 0x%x", rdata, r_addr);

        inc_data = inc_data + 1;
        w_addr = w_addr + 4;
         end
         if ($feof(file_handler)) begin
          
           $display("end of file");
           $display($time);
           tb.set_virtual_dip_switch(.dip(1));
           $display("REST DISABLE!!!");
           #7000ns;
           tb.peek(.addr(64'h0000000081100000), .data(rdata_DMA), .id(AXI_ID), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata_DMA[31:0], 'h8110_0000);
           tb.peek(.addr(64'h0000000081100000), .data(rdata_DMA), .id(AXI_ID), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata_DMA[31:0], 'h8100_0000);
           tb.peek(.addr(64'h0000000081000000), .data(rdata_DMA), .id(AXI_ID), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata_DMA[31:0], 'h8100_0000);
           tb.peek(.addr(64'h0000000081000004), .data(rdata_DMA), .id(AXI_ID), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata_DMA[31:0], 'h8100_0004);
           tb.peek(.addr(64'h0000000081000008), .data(rdata_DMA), .id(AXI_ID), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata_DMA[31:0], 'h8100_0008);
           tb.peek(.addr(64'h000000008100000c), .data(rdata_DMA), .id(AXI_ID), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata_DMA[31:0], 'h8100_000c);
           tb.kernel_reset();
           tb.power_down();
           $finish();
         end
        
    end
      
      $finish;
   end

endmodule // test_hello_world

