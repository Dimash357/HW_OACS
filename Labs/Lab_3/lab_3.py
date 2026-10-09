import struct

pattern = '0' + '10000100' + '00100110011001100110011'
n = int(pattern, 2)
x = struct.unpack('>f', n.to_bytes(4, 'big'))[0]
print(x)