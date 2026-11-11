.data
arr: .word 3, 4, 5, 6
.text
main:
    la a0, arr
    li a1, 4
    jal ra, sum
    li a7, 10
    ecall
sum:
    li t0, 0
loop:
    lw t1, 0(a0)
    add t0, t0, t1
    addi a0, a0, 4
    addi a1, a1, -1
    bnez a1, loop
    mv a0, t0
    ret
