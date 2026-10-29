.text
    addi x5, x0, 5
    addi x6, x0, 1
    addi x7, x0, 0
loop:
    blt x5, x6, done
    add x7, x7, x6
    addi x6, x6, 1
    jal x0, loop
done:
    addi x17, x0, 10
    ecall