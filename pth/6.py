a = int(input())
b = int(input())
c = int(input())
p = []
S = []
D = []
p = (a+b+c)/2
S = (p*(p-a)*(p-b)*(p-c)) ** 0.5
D = f'{S:.2f}'
print(D)