def input_array(n):
    return list(map(int, input().split()))

def first_mult5(a):
    for i, x in enumerate(a):
        if x % 5 == 0:
            return i
    return 10**9

def replacezero(a):
    m = max(a)
    idx = a.index(m)
    a[idx] = 0

def doublemin(a):
    mn = min(a)
    idx = a.index(mn)
    for i in range(idx + 1, len(a)):
        a[i] *= 2

n = int(input())
a = input_array(n)
b = input_array(n)

if first_mult5(a) < first_mult5(b):
    replacezero(a)
    doublemin(b)
else:
    replacezero(b)
    doublemin(a)

print("A =", a)
print("B =", b)