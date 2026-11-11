.data
arr: .word 1, 2, 3, 4
.text
main:
    li s0, 100
    li s1, 200
    li s2, 300
    la a0, arr
    li a1, 4
    jal ra, sqsum
    li a7, 10
    ecall
sqsum:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    sw s1, 4(sp)
    sw s2, 0(sp)
    mv s0, a0
    mv s1, a1
    li s2, 0
sqsum_loop:
    lw a0, 0(s0)
    jal ra, sq
    add s2, s2, a0
    addi s0, s0, 4
    addi s1, s1, -1
    bnez s1, sqsum_loop
    mv a0, s2
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    lw s2, 0(sp)
    addi sp, sp, 16
    ret
sq:
    mul a0, a0, a0
    ret
