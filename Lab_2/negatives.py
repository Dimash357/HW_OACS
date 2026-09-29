import struct

with open('negatives.bin', 'wb') as f:
    for v in (-1, -2, -1000):
        f.write(struct.pack('<i', v))

print('Записано 12 байт в negatives.bin')
