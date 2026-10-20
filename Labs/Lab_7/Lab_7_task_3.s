addi x5, x0, 3
addi x6, x0, 0
loop:
beq  x5, x0, done
add  x6, x6, x5
addi x5, x5, -1
beq  x0, x0, loop
done:
addi x17, x0, 10
ecall
