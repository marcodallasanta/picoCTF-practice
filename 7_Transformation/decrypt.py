import sys

enc_flag=sys.argv[1]
result=[]
for enc_char in enc_flag:
    hex_string=hex(ord(enc_char))
    bytes_object=bytes.fromhex(hex_string.lstrip("0x"))
    result.append(bytes_object.decode("ASCII"))

print(''.join(result))
