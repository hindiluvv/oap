n = int(input('Введите размер массива: '))

arr = [0] * n

print('Введите элементы массива:')
for i in range(n):
    arr[i] = int(input(f'arr[{i}] = '))

max_count = 0
most_frequent = arr[0]

for i in range(n):
    current_number = arr[i]
    current_count = 0
    
    for j in range(n):
        if arr[j] == current_number:
            current_count += 1
    
    if current_count > max_count:
        max_count = current_count
        most_frequent = current_number
print()
print('Наиболее часто повторяющееся число:', most_frequent)