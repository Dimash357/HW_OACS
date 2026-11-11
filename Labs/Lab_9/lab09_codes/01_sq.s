.text
main:
    addi a0, zero, 5
    jal ra, sq
    addi a7, zero, 10
    ecall
sq:
    mul a0, a0, a0
    ret
