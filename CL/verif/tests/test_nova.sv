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
// Description: This test ...
//-------------------------------------------------------------------------------

module test_nova;
  import tb_type_defines_pkg::*;

  // AXI ID
  parameter [5:0] AXI_ID = 6'h0;

  logic [31:0] rdata;
  logic [15:0] vdip_value;
  logic [15:0] vled_value;

  initial begin
    tb.power_up();  
    $display("Power UP!!!");

    tb.set_virtual_dip_switch(.dip(0)); // 000
    #400ns;
    tb.set_virtual_dip_switch(.dip(7)); // 111
    #400ns;
    tb.set_virtual_dip_switch(.dip(3)); // 011
    #400ns;
    $display("Reset Enable!!!");

    $display("Writing Instruction to BRAM!!!");
    tb.poke(.addr(32'h0000_00000), .data(32'h00100093), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_DMA_PCIS));
    // tb.poke(.addr(32'h0000_00004), .data(32'h00200113), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    // tb.poke(.addr(32'h0000_00008), .data(32'h00300193), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    // tb.poke(.addr(32'h0000_0000C), .data(32'hF14028F3), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    // tb.poke(.addr(32'h0000_00010), .data(32'h09101C63), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    // tb.poke(.addr(32'h0000_00014), .data(32'hFFF6E837), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    // tb.poke(.addr(32'h0000_00018), .data(32'h5D58081B), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    // tb.poke(.addr(32'h0000_0001C), .data(32'h00C81813), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    #800ns;

    tb.set_virtual_dip_switch(.dip(0)); // 000
    #400ns;
    $display("Reset Disable!!!");

    tb.peek(.addr(32'h0000_00000), .data(rdata), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_DMA_PCIS));
    $display ("Reading 0x%x from address 0x0000_00000", rdata);
    #400ns;

    if (rdata == 32'h00100093) $display("PASS");
    else $display("FAIL");

    #800ns;
    tb.kernel_reset();
    tb.power_down();
    $finish();
  end
endmodule 
