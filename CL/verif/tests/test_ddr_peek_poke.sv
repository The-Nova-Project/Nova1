// Amazon FPGA Hardware Development Kit
//
// Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Amazon Software License (the "License"). You may not use
// this file except in compliance with the License. A copy of the License is
// located at
//
//    http://aws.amazon.com/asl/
//
// or in the "license" file accompanying this file. This file is distributed on
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
// implied. See the License for the specific language governing permissions and
// limitations under the License.
// 
// Description: This test is to catch the memory aliasing issues in DDR memory models.
// The test walks through the DDR address range and tests the contents.

module test_ddr_peek_poke();

   import tb_type_defines_pkg::*;

   logic [63:0]  addr;

   logic [511:0]  wide_read_data;

   int           error_count;
   int           fail;
   parameter [15:0] AXI_ID = 16'h0;
logic [511:0] rdata;
logic [63:0] r_addr;
logic [31:0] w_data;
logic [63:0] w_addr = 64'h00;
logic [63:0] inc_data = 0;
int file_handler;
int  i;
int A;
// logic [15:0] vdip_value;
logic [15:0] vled_value;
assign vled_value='b0;

   initial begin

      tb.power_up();

      tb.nsec_delay(500);
      
      tb.poke_stat(.addr(8'h0c), .ddr_idx(0), .data(32'h0000_0000));
      tb.poke_stat(.addr(8'h0c), .ddr_idx(1), .data(32'h0000_0000));
      tb.poke_stat(.addr(8'h0c), .ddr_idx(2), .data(32'h0000_0000));
      
      tb.nsec_delay(5000);

      forever begin
      if(!$feof(file_handler))begin
        tb.set_virtual_dip_switch(.dip(0));
             file_handler=$fopen("/home/muheet/stableEnv/aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/tests/int_bringup_test.txt","r");
                  for(i = 0; i <= inc_data; i=i+1)begin
                            $fscanf(file_handler,"%h\n",A);
                            w_data = A;
                  end
        $display ("Writing 0x%x", w_data," to address 0x%x", w_addr);
        tb.poke(.addr(w_addr), .data(w_data), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_DMA_PCIS)); // write register
      
        r_addr = w_addr;
        inc_data = inc_data + 1;
        w_addr = w_addr + 4;
        
      end
       if ($feof(file_handler)) begin

           tb.set_virtual_dip_switch(.dip(1));
           tb.peek(.addr(64'h0000000000000000), .data(rdata[63:0]), .size(DataSize::UINT64), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata, 0000000000000000);
           tb.peek(.addr(64'h0000000000000008), .data(rdata[63:0]), .size(DataSize::UINT64), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata, 0000000000000000);
           tb.peek(.addr(64'h0000000000000010), .data(rdata), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x", rdata, 0000000000000000);
           $display("REST DISABLE!!!");
           #14000ns;
           $display("end of file");
           tb.kernel_reset();
           tb.power_down();
                   $finish();
         end
      
   end 
   end

endmodule 
