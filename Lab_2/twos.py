import struct

def as_int8(value):
    """Интерпретировать младший байт числа как целое со знаком."""
    return struct.unpack('<b', struct.pack('<B', value & 0xFF))[0]

for a, b in ((127, 1), (100, 50)):
    print('  %d + %d = %d, как int8: %d' % (a, b, a + b, as_int8(a + b)))
