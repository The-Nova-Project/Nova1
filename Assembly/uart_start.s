#transmitt "a" into hydra subsystems uart after loading the hex into bram or else 
#load_from_uart loop will not end
li x1 0x80000000 #hydra ddr address
li x2 0x80180000 #hydra bram address
li x3 0x80100000 #hydra uart address
addi x10 x0 a
addi x11 x0 0
load_from_uart:
ld x4 0x0(x2) #uart read data reg address = 0x0 + uart base add
bne x10 x4 load_from_uart
ddr_loop:
sd x11 0x500(x1)
addi x1 x1 0x4
addi x11 x11 1
bne x11 x4 ddr_loop
exit : sd x11 0x0(x2) #storing "a" on to host of bram