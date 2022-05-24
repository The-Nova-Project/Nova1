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

//------------------------------------------------------------------------------
// Description: This test checks the byte swap feature of the hello_world CL. It also checks
// if the upper word of the CL register is written to Vdip
//-------------------------------------------------------------------------------

module test_ddr1();

import tb_type_defines_pkg::*;

// AXI ID
parameter [15:0] AXI_ID = 16'h0;

logic [511:0] rdata;
logic [63:0] r_addr;
logic [31:0] w_data;
logic [63:0] w_addr = 64'h0000000000000000;
logic [63:0] inc_data = 0;
int file_handler;
int  i;
int A;
logic B = 0;
// logic [15:0] vdip_value;
// logic [15:0] vled_value;


   initial begin
    //   file_handler=$fopen("/home/muheet/stableEnv/aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/tests/text.txt","r");
      tb.power_up();

    forever begin
      if(!$feof(file_handler))begin
        tb.set_virtual_dip_switch(.dip(0));
             file_handler=$fopen("/home/muheet/stableEnv/aws-fpga/hdk/cl/developer_designs/xlx_nova_project/verif/tests/int_bringup_test.txt","r");
                  for(i = 0; i <= inc_data; i=i+1)begin
                            $fscanf(file_handler,"%h\n",A);
                            w_data = A;
                  end
        $display ("Writing 0x%x", w_data," to address 0x%x", w_addr, "B =", B);
        tb.poke(.addr(w_addr), .data(w_data), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_DMA_PCIS)); // write register
        
        r_addr = w_addr;
        // tb.peek(.addr(r_addr), .data(rdata), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
        // $display ("Reading 0x%x from address 0x%x", rdata, r_addr);
        inc_data = inc_data + 1;
        if (inc_data%2 != 0) begin
           w_addr = w_addr + 4;
           B = B + 1;
        end
        if (inc_data%2 == 0) begin
           if (B%2 != 0) begin
             w_addr = w_addr + 68;
             //B = 1;
           end
           if (B%2 == 0) begin
             w_addr = w_addr - 68;
             //B = 0;
           end
        end
        // if(inc_data >= 2)begin 
        //   if (inc_data%2 != 0) begin
        //     w_addr = w_addr + 4;
        //     end
        //       else begin
        //         if (B == 0) begin
        //           w_addr = w_addr + 60;
        //           B = 1;
        //         end 
        //         if (B == 1) begin
        //           w_addr = w_addr - 60;
        //           B = 0;
        //         end
        //     end 
        // end
        
        
         end
         if ($feof(file_handler)) begin
        
           tb.peek(.addr(64'h0000000000000000), .data(rdata), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
           $display ("Reading 0x%x from address 0x%x ", rdata, r_addr);
            tb.peek(.addr(64'h0000000000000040), .data(rdata), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
            $display ("Reading 0x%x from address 0x%x", rdata, r_addr);
            tb.peek(.addr(64'h0000000000000080), .data(rdata), .size(DataSize::UINT512), .intf(AxiPort::PORT_DMA_PCIS));         // start read & write
            $display ("Reading 0x%x from address 0x%x", rdata, r_addr);
           tb.set_virtual_dip_switch(.dip(1));
           $display("REST DISABLE!!!");
           #14000ns;
           $display("end of file");
           tb.kernel_reset();
           tb.power_down();
                   $finish();
         end
        
    end
      
      $finish;
   end

endmodule // test_ddr

