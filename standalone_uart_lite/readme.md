This is the tested output of stand alone Xilinx AXI UART-Lite with the basic SystemVerilog test bench in which a DATA and an enable interrupt is being enabled. 
From the waveform it can be seen that the DATA is written in the register successfully but the transmit signal tx is not enabling which is supposed to be done by itself, Hence no transmission occurring.
https://github.com/Nameer-Iqbal-Ansari/Nova1/blob/main/standalone_uart_lite/Screenshot%20from%202022-03-27%2001-05-16.png
