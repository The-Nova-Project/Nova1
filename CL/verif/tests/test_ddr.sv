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

module test_ddr();

import tb_type_defines_pkg::*;

// AXI ID
parameter [15:0] AXI_ID = 16'h0;

logic [31:0] rdata;
logic [63:0] r_addr;
logic [31:0] w_data;
logic [63:0] w_addr = 64'h0000000000000000;
logic [63:0] inc_data = 0;
int file_handler;
int  i;
int A;

   initial begin
     tb.power_up();

     $display("\n---------------------Writing Instruction In DDR-C!!!---------------------\n");

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
        inc_data = inc_data + 1;
        w_addr = w_addr + 4;        
        
         end
     if ($feof(file_handler)) begin
           $display("\n---------------------END OF HEX FILE---------------------\n");

           tb.poke(.addr(32'h00000120), .data(32'hdeadbeef), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
           $display ("Writing feadbeef to address 00000120");

           tb.set_virtual_dip_switch(.dip(1));

           $display("\n---------------------RESET DISABLE!!!---------------------\n");
           $display("\n---------------------Reading From Bram Addresses!!!---------------------\n");
           #9364ns;
           //tb.peek(.addr(32'h00000000), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));         // start read & write
           //$display ("Reading 0x%x from address 00000000", rdata);
           //tb.peek(.addr(32'h00000008), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));         // start read & write
           //$display ("Reading 0x%x from address 00000008", rdata);
           //tb.peek(.addr(32'h00000010), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));         // start read & write
           //$display ("Reading 0x%x from address 00000010", rdata);
           tb.peek(.addr(32'h000000120), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));         // start read & write
           $display ("Reading 0x%x from address 00000018", rdata);
           
           if (rdata == 00000000) begin
             $display("\n---------------------TEST PASS---------------------\n");
           end
           else $display("\n---------------------TEST FAIL---------------------\n");
           #5000ns;
           $display("end of file");
           tb.kernel_reset();
           tb.power_down();
           $finish();   
         end
        
    end
      
      $finish; 
   end

endmodule // test_ddr

