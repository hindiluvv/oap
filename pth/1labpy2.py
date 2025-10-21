n = int(input('Введите n: '))

print(f"{'Число':>10}{'Квадрат':>10}")

for i in range(1, n + 1):
    if i % 2 == 1:
        print(f"{i:>10}{i*i:>10}")