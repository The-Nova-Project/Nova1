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

module test_uart();

import tb_type_defines_pkg::*;
//`include "cl_common_defines.vh" // CL Defines with register addresses

// AXI ID
parameter [5:0] AXI_ID = 6'h0;

// logic [31:0] ie;
logic [31:0] rdata;
logic [31:0] valid;
logic [31:0] uart1_status;

// logic [15:0] vdip_value;
// logic [15:0] vled_value;


   initial begin

      tb.power_up();
      tb.poke(.addr(32'h0004_000C), .data(32'h8), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1)); // enable interrupt for transmit data
      $display ("Writing interrupt for read enable at address 32'h0004_000C ");
      #1200ns;
      //tb.peek(.addr(32'h0004_0008), .data(uart1_status), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));  //peek tx fifo is empty
      //$display ("Reading data from rx uart 0x%x", uart1_status);
       tb.poke(.addr(32'h0004_0004), .data(32'h0000_0004), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1)); // write tx data
      $display ("Writing 32'h0000_0004 to transmitter at address 32'h0004_0004");

      // tb.peek(.addr(32'h0004_0008), .data(uart1_status), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));  //peek tx fifo is empty
      //$display ("Reading data from rx uart 0x%x", uart1_status);
      #1200ns;
      // if (uart1_status[2] === 1'b1) begin                                                                                    //if empty means data transmitted
      //     tb.poke(.addr(32'h00_000C), .data(32'h0000_0010), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL)); // enable the intrrupt that data is transmitted
      //     tb.peek(.addr(32'h00_0008), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL));         // start read data
      //     $display ("Reading data 0x%x from rx uart 0x%x", rdata, 32'h00_0008);
      // end
      tb.poke(.addr(32'h0000_000C), .data(32'h8), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL)); // enable interrupt for transmit data
      $display ("Writing interrupt for write enable at address 32'h0000_000C ");
      tb.peek(.addr(32'h0000_0008), .data(valid), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL)); // read interrupt to check if rx done receiving
      $display ("Reading data valid 0x%x from rx uart 0x%x", valid[0], 32'h0000_0008);
      // tb.peek(.addr(32'h00_0008), .data(valid[0]), .id(AXI_ID), .size(DataSize::UINT1), .intf(AxiPort::PORT_OCL));  // check if the receive FIFO has data
      // $display ("Reading data 0x%x from rx uart 0x%x", valid[0], 32'h00_0008);
      // if (valid[0] === 1'b1)
      tb.peek(.addr(32'h00_0000), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL));         // start read data
      $display ("Reading data 0x%x from rx uart 0x%x", rdata, 32'h00_0000);

      tb.kernel_reset();  

      tb.power_down();
     
      $finish;
   end

endmodule 
