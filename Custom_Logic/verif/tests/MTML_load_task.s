li s0 0x80000400
li s1 0x83000000
addi a4 x0 32
ld a0,0x0(s0)     #Storing the brams base address (8000_0000) to SMEM_ADDR
sd a0,0x0(s1)
ld a1,0x8(s0)      #Configuring Block C matrix
sd a1,24(s1)
ld a2,0x10(s0)
sll a2,a2,a4
addi a2,a2,0x500     #Store task valid = 1 and offset = 500 (MTML will store matrix C to 8000_0000 + 500)
sd a2,64(s1)
ld a3,0x10(s0) 
sll a3,a3,a4
addi a3,a3,0x1
sd a3,32(s1)      #Block task control, test enable = 1 and go = 1
jump: jal jump