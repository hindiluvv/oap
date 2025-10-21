n = int(input('Введите количество пассажиров\n'))
a = [0.0] * n
tw = 0
print('Введите количество багажа(кг)')
for i in range(n):
    print('Пассажир', i + 1, ': ', end='')
    a[i] = float(input())
    cost = a[i] * 30
    print('Stoimostperevozki', cost, 'руб')
    tw = tw + a[i]
print('Общий вес', tw)
print('общая стоимость перевозки: ', tw * 30)