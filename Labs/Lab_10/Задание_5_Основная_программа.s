.data
w: .word 7
.text
lui a0, 0x10000
addi t3, zero, 1
addi t4, zero, 1
addi t5, zero, 1
addi t0, zero, 5
add t1, t0, t0
lw t2, 0(a0)
add t6, t2, t2
