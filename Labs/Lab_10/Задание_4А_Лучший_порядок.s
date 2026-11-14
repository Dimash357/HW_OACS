.data
d: .word 3, 4, 0, 5
.text
lui a0, 0x10000
lw t0, 0(a0)
lw t1, 4(a0)
lw t3, 12(a0)
add t2, t0, t1
sw t2, 8(a0)
addi a1, zero, 1
add t4, t3, t3
addi a2, zero, 2
