.data
c0: .word 0x10000004
c1: .word 0x10000008
c2: .word 5
.text
lui a0, 0x10000
lw t0, 0(a0)
addi a1, zero, 1
lw t1, 0(t0)
addi a2, zero, 2
lw t2, 0(t1)
addi a3, zero, 3
add t3, t2, t2
