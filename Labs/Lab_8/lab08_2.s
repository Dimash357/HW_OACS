.text
    addi x5, x0, -3
    addi x6, x0, 5
    bltu x5, x6, take_a
    add x7, x6, x0
    jal x0, done
take_a:
    add x7, x5, x0
done:
    addi x17, x0, 10
    ecall