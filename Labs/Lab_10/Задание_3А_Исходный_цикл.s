.data
arr: .word 1, 2, 3, 4
.text
lui a0, 0x10000
addi a1, zero, 4
addi t2, zero, 0
loop:
    lw t1, 0(a0)
    add t2, t2, t1
    addi a0, a0, 4
    addi a1, a1, -1
    bnez a1, loop
