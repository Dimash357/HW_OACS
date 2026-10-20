addi x5, x0, 6
addi x6, x0, 7
addi x7, x0, 0

loop:
beq  x5, x0, done
add  x7, x7, x6
addi x5, x5, -1
beq  x0, x0, loop

done:
addi x17, x0, 10
ecall