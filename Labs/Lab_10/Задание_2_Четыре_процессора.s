.data
w: .word 7
.text
lui a0, 0x10000
addi t3, zero, 1
addi t4, zero, 1
addi t5, zero, 1
lw t0, 0(a0)
add t1, t0, t0
sub t2, t1, t0
