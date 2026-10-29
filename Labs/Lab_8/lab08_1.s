.text
    addi x5, x0, 6
    addi x6, x0, 4
    slli x7, x5, 1
    add x7, x7, x5
    slli x8, x6, 1
    sub x7, x7, x8
    addi x7, x7, 7
    addi x17, x0, 10
    ecall