n = int(input('Введите количество студентов: '))
good = 0
for i in range(1, n + 1):
    print(f'Введите 3 оценки для студента {i}:')
    bad = False
    for j in range(1, 4):
        grade = int(input(f'Оценка {j}: '))
        if grade == 2 or grade == 3:
            bad = True 
    if not bad:
        good += 1
print(f'Количество студентов без оценок 2 и 3: {good}')