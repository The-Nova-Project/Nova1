li x1 0x80100000 #hydra uart address
li x2 0x80000000 #hydra ddr address
addi x10 x0 0x10 #uart intrupt value
addi x3 x0 0    
addi x11 x0 100
loop:
ddr_store: 
sd x3 0x500(x2)
ld x4 0x500(x2)
beq x3 x4 tx
jal loop
tx:
sd x10 0xc(x1)
sd x3 0x4(x1) #uart data 
addi x3 x3 1
addi x11 x11 -1
bne x11 x0 loop
