li s0 0x80100000
addi a0 x0 0x10
addi a2 x0 4
nop
sw a0,0xC(s0)
loop:addi a2 a2 -1
bne a2 x0 loop
addi a1 x0 0xaa
sw a1,0x4(s0)
jump: jal jump