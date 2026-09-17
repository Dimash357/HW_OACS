import struct

v = 0x1234ABCD
low16 = v & 0xFFFF
low8 = v & 0xFF
s16 = struct.unpack('<h', struct.pack('<H', low16))[0]
s8 = struct.unpack('<b', struct.pack('<B', low8))[0]

print('Исходное 32-битное число: %d = 0x%08X' % (v, v))
print('Младшие 16 бит: 0x%04X = %d без знака, %d со знаком' % (low16, low16, s16))
print('Младшие 8 бит:  0x%02X = %d без знака, %d со знаком' % (low8, low8, s8))
