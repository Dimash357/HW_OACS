.data
c0: .word 0x10000004
c1: .word 0x10000008
c2: .word 5
.text
lui a0, 0x10000
lw t0, 0(a0)
lw t1, 0(t0)
lw t2, 0(t1)
add t3, t2, t2
