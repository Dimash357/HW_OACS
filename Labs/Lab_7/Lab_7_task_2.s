.data
buf: .word 0, 0, 0

.text
lui  x6, %hi(buf)
addi x6, x6, %lo(buf)
addi x5, x0, 42
sw   x5, 8(x6)
lw   x7, 8(x6)