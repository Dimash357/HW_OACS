.data
nums: .word 17, 25, 0

.text
lui  x6, %hi(nums)
addi x6, x6, %lo(nums)
lw   x5, 0(x6)
lw   x7, 4(x6)
add  x5, x5, x7
sw   x5, 8(x6)