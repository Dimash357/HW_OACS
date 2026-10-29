.text
    addi x10, x0, -3    # L = -3
    addi x11, x0, 4     # R = 4
    addi x12, x0, 1     # K = 1

    addi x5, x10, 0     # i = L
    addi x7, x0, 0      # count = 0
    addi x8, x0, 0      # sum = 0

    blt x11, x10, done  # если L > R, завершить

loop:
    andi x6, x5, 1      # проверить младший бит числа
    beq x6, x0, next    # если число чётное, пропустить

    addi x7, x7, 1      # count++
    add x8, x8, x5      # sum += i

next:
    beq x5, x11, done   # если i == R, завершить
    addi x5, x5, 1      # i++
    jal x0, loop

done:
    addi x17, x0, 10
    ecall