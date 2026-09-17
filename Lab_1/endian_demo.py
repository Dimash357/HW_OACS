import struct, sys

value = 19145

with open('little_endian.bin', 'wb') as f:
    f.write(struct.pack('<H', value))   # '<' -- little-endian

with open('big_endian.bin', 'wb') as f:
    f.write(struct.pack('>H', value))   # '>' -- big-endian

print('Native byte order of this machine:', sys.byteorder)