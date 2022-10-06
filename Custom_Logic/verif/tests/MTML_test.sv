module MTML_test();

import tb_type_defines_pkg::*;
// `include "cl_common_defines.vh" // CL Defines with register addresses

// AXI ID
parameter [5:0] AXI_ID = 6'h0;

logic [31:0] rdata;
logic [31:0] rdata1;
// logic [511:0] rdata_DMA;
logic [31:0] r_addr;
logic [31:0] w_data;
logic [31:0] w_addr = 0;
logic [31:0] inc_data = 0;
int file_handler;
int  i;
int A;
// logic [15:0] vdip_value;
// logic [15:0] vled_value;
initial begin
      tb.set_virtual_dip_switch(.dip(0));
      tb.power_up();
     file_handler=$fopen("/home/$USER/mtml_integrated/Custom_Logic/verif/tests/MTML_text.txt","r");
      tb.set_virtual_dip_switch(.dip(0));
        $display ("Writing matrix data 32'd4321 to address 0x80000202");
        tb.poke(.addr(32'h00000400), .data(32'h0), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        $display ("Writing matrix data 32'd4321 to address 0x80000203");
        tb.poke(.addr(32'h00000408), .data(32'h81004), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        tb.poke(.addr(32'h00000410), .data(32'h1), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        tb.poke(.addr(32'h00000418), .data(32'h80000600), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        
        $display ("Writing matrix data 32'd1234 to address 0x80000500");
        tb.poke(.addr(32'h00000500), .data(32'h1), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        $display ("Writing matrix data 32'd4321 to address 0x80000501");
        tb.poke(.addr(32'h00000508), .data(32'h2), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        $display ("Writing matrix data 32'd4321 to address 0x80000502");
        $display ("Writing matrix data 32'd1234 to address 0x80000500");
        tb.poke(.addr(32'h00000510), .data(32'h3), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        $display ("Writing matrix data 32'd4321 to address 0x80000501");
        tb.poke(.addr(32'h00000514), .data(32'h4), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        $display ("Writing matrix data 32'd4321 to address 0x80000502");
        tb.poke(.addr(32'h00000518), .data(32'h5), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
        $display ("Writing matrix data 32'd4321 to address 0x80000503");
        tb.poke(.addr(32'h0000051c), .data(32'h6), .id(AXI_ID), .size(DataSize::UINT32), .intf(AxiPort::PORT_BAR1));
    forever begin
      if(!$feof(file_handler))begin
        
             file_handler=$fopen("/home/$USER/mtml_integrated/Custom_Logic/verif/tests/MTML_text.txt","r");
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
           $display("RESET DISABLE!!!");
           #7000ns;
           $display($time);
          // //  tb.set_virtual_dip_switch(.dip(1));
          // //  $display("RESET DISABLE!!!");
          //  #1000ns;
          tb.power_down();
           $finish();
         end
         
        end
    end
endmodule 

