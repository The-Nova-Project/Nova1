li x1 0x80000000 #hydra ddr address
li x2 0x80180000 #hydra bram address
addi x4 x0 1000
yaxis:
addi x3 x0 1000
xaxis:
sd x3 0x500(x1)
addi x1 x1 0x4
addi x3 x3 -1
bne x0 x3 xaxis
sd x4 0x0(x2)
addi x2 x2 0x4
addi x4 x4 -1
bne x0 x4 yaxis
addi x2 x2 -0x4
ld x5 0x0(x2)
addi x1 x1 -0x4
ld x6 0x500(x1)
beq x6 x5 pass
fail: addi x10 x0 2 
jal end
pass : addi x10 x0 1
end : sd x10 0x0(x2) #storing tests status on to host address