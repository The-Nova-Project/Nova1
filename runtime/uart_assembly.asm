li s0 0x80000
li a4 1
li x1 1
li x5 0x10
sw x5 0xc(s0)
loop:
lw a3 0x8(s0)
and x3 a3 x1
beq a4 x3 exit
jal loop
exit:

lw a5 0x0(s0)
sw a5 0x4(s0)

rep:
jal rep
