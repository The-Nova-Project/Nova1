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

module test();

import tb_type_defines_pkg::*;
// `include "cl_common_defines.vh" // CL Defines with register addresses

// AXI ID
parameter [5:0] AXI_ID = 6'h0;

logic [31:0] rdata;
logic [31:0] r_addr;
logic [31:0] w_data;
logic [31:0] w_addr = 0;
logic [31:0] inc_data = 0;
logic [15:0] vled_value;
int file_handler;
int  i;
int A;


   initial begin	
      //file_handler=$fopen("/home/muheet/update_bd/afi_check/aws-fpga/hdk/cl/developer_designs/nova_project/verif/tests/text.txt","r");
      tb.power_up();
      tb.set_virtual_dip_switch(.dip(0));
      tb.set_virtual_dip_switch(.dip(2));

    forever begin
      if(!$feof(file_handler))begin
             file_handler=$fopen("/home/muheet/update_bd/afi_check/aws-fpga/hdk/cl/developer_designs/nova_project/verif/tests/ddr_to_bram.txt","r");
                  for(i = 0; i <= inc_data; i=i+1)begin
                            $fscanf(file_handler,"%h\n",A);
                            w_data = A;
                  end

        tb.poke(.addr(w_addr), .data(w_data), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1)); // write register
        $display ("writing 0x%x",w_data, "to address : ", w_addr);
        r_addr = w_addr;

        inc_data = inc_data + 1;
        w_addr = (inc_data) * 4;
    
         end
         if ($feof(file_handler)) begin
           $display("\n---------------------END OF HEX FILE---------------------\n");

           tb.poke(.addr(32'h00000120), .data(32'hdeadbeef), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
           $display ("Writing deadbeef to address 00000120");

           tb.set_virtual_dip_switch(.dip(1));

           $display("\n---------------------RESET DISABLE!!!---------------------\n");
           #4664ns;
	         $display ("Reading from address 00000120");
           tb.peek(.addr(32'h00000120), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));         // start read & write
           $display ("Reading 0x%x from address 00000120", rdata);
           
           if (rdata == 0) begin
             $display("\n---------------------TEST PASS---------------------\n");
           end
           else $display("\n---------------------TEST FAIL---------------------\n");
           #5000ns;
           $display("end of file");
          // tb.kernel_reset();
          // tb.power_down();
          // $finish();
         end
        
    end
      
      $finish;
   end

endmodule

