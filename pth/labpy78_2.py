s1 = input("Введите первую строку: ")
s2 = input("Введите вторую строку: ")

diff = abs(len(s1) - len(s2))

if len(s1) > len(s2):
    bs = s1
elif len(s2) > len(s1):
    bs = s2
else:
    bs = s1 

print("Результат:")
for i in range(diff):
    print(bs)