a = []
print('Введите 20 целых чисел:')
for i in range(20):
    num = int(input(f'a[{i+1}] = '))
    a.append(num)

for i in range(20):
    if a[i] > 0:
        a[i] = 0
    elif a[i] < 0:
        a[i] = a[i] * a[i]

for num in a:
    print(num, end=' ')
print()