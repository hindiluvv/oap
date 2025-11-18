a = []
for _ in range(6):
    a.append(list(map(int, input().split())))

b = []
for row in a:
    val = 0
    for x in row:
        if abs(x) % 4 == 0:
            val = x
            break
    b.append(val)

print("Результат:", b)