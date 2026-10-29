.text
addi x5, x0, 6      # N
addi x6, x0, 1      # i
addi x7, x0, 0      # сумма чётных
loop:
blt  x5, x6, done
andi x8, x6, 1
bne  x8, x0, next
add  x7, x7, x6
next:
addi x6, x6, 1
jal  x0, loop
done:
addi x17, x0, 10
ecall