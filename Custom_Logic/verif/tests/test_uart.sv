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
// Description: This test checks the Character Transition on AXI-UARTLite. It also checks
// transmission on BAR1 interface to OCL interface through AXI-UARTLite.
//-------------------------------------------------------------------------------

module test_uart();

import tb_type_defines_pkg::*;

// AXI ID
parameter [5:0] AXI_ID = 6'h0;

logic [31:0] rdata;
logic [31:0] valid;
logic [31:0] uart1_status;


   initial begin

      tb.power_up();
      tb.poke(.addr(32'h0008_800C), .data(32'h10), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1)); // enable interrupt for transmit data
      $display ("Writing interrupt for writing enable at address 32'h0008_800C ");
      #1200ns;
      
      tb.poke(.addr(32'h0008_8004), .data(32'haa), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1)); // write tx data
      $display ("Writing 32'haa to transmitter at address 32'h0008_8004");
      #100000ns;
      
      tb.poke(.addr(32'h0008_000C), .data(32'h10), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL)); // enable interrupt for transmit data
      $display ("Writing interrupt for readig enable at address 32'h0008_000C ");
      
      tb.peek(.addr(32'h0008_0008), .data(valid), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL)); // read interrupt to check if rx done receiving
      $display ("Reading data valid OCL 8 0x%x from rx uart 0x%x", valid, 32'h0008_0008);

      if (valid[0] === 1'b1)
      tb.peek(.addr(32'h0008_0004), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_OCL));         // start read data
      $display ("Writing 32'haa to transmitter at address 32'h0008_0004");
      $display ("Reading data 0x%x from rx uart 0x%x", rdata, 32'h08_0000);

      tb.kernel_reset();  

      tb.power_down();
     
      $finish;
   end

endmodule 
