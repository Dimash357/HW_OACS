x = -1000

code = x & 0xFFFF

print("Число:", x)
print("16-битный код:", hex(code))
print("Двоичный код:", format(code, "016b"))

if code & 0x8000:
    decoded = code - 0x10000
else:
    decoded = code

print("Обратно:", decoded)