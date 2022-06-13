# Quote to https://stackoverflow.com/questions/4798654/modular-multiplicative-inverse-function-in-python
def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, x, y = egcd(b % a, a)
        return (g, y - (b // a) * x, x)

def modinv(a, m):
    g, x, y = egcd(a, m)
    if g != 1:
        raise Exception('Modular inverse does not exists')
    else:
        return x % m

c=843044897663847841476319711639772861390329326681532977209935413827620909782846667
n=1422450808944701344261903748621562998784243662042303391362692043823716783771691667
e=65537
p=2159947535959146091116171018558446546179
q=658558036833541874645521278345168572231473
phi=(p-1)*(q-1)
d=modinv(e, phi)

assert p * q == n # just a check on the value of p and q, calculated online

print(bytearray.fromhex(hex(pow(c,d,n))[2:]).decode())
