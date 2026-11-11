.text
main:
    li s0, 100
    li a0, 3
    li a1, 4
    jal ra, sumsq
    add a0, a0, s0
    li a7, 10
    ecall
sumsq:
    addi sp, sp, -16
    sw s0, 8(sp)
    sw s1, 4(sp)
    mv s0, a1
    jal ra, sq
    mv s1, a0
    mv a0, s0
    jal ra, sq
    add a0, a0, s1
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    ret
sq:
    mul a0, a0, a0
    ret
