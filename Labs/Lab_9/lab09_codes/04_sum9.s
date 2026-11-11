.text
main:
    addi sp, sp, -16
    li t0, 9
    sw t0, 0(sp)
    li a0, 1
    li a1, 2
    li a2, 3
    li a3, 4
    li a4, 5
    li a5, 6
    li a6, 7
    li a7, 8
    jal ra, sum9
    addi sp, sp, 16
    # a0 = 45; exit in Ripes uses a7=10
    li a7, 10
    ecall
sum9:
    add t0, a0, a1
    add t0, t0, a2
    add t0, t0, a3
    add t0, t0, a4
    add t0, t0, a5
    add t0, t0, a6
    add t0, t0, a7
    lw t1, 0(sp)
    add a0, t0, t1
    ret
