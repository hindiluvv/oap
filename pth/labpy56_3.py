arr = []
print("Введите 20 чисел:")
for i in range(20):
    num = int(input(f"Число {i+1}: "))
    arr.append(num)

print("\nИсходный массив:")
print(arr)

count_even = 0
for num in arr:
    if num % 2 == 0:
        count_even += 1

print(f"Количество четных элементов: {count_even}")

index_first_even = -1
for i in range(len(arr)):
    if arr[i] % 2 == 0:
        index_first_even = i
        break

if index_first_even != -1:
    arr.insert(index_first_even + 1, count_even)
    print(arr)