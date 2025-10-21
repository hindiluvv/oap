N = int(input('Введите количество банок: '))
M = int(input('Введите требуемый объем меда в банке: '))
K = int(input('Введите необходимое количество меда на зиму: '))

hon = N * M
if hon >= K:
    print('YES')
else:
    print('NO')