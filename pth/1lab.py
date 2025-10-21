import math
print("Введите противолежащий катет и гипотенузу")
a = int(input())
b = int(input())
print(a / b)
print(math.sqrt(b ** 2 - a ** 2) / b )
print(a / math.sqrt(b ** 2 - a ** 2))
print(math.sqrt(b ** 2 - a ** 2) / a) 
