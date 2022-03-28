This is the tested output of stand alone Xilinx AXI UART-Lite with the basic SystemVerilog test bench.

<img align="center" src="https://github.com/Nameer-Iqbal-Ansari/Nova1/blob/main/standalone_uart_lite/Screenshot%20from%202022-03-27%2001-05-16.png" />

From the waveform it can be seen that the DATA is written and ready to be transmit in "fifo_DOUt" register but the transmit signal "UART_0_tx" is not enabling which is supposed to be done by itself, Hence no transmission occurring.
