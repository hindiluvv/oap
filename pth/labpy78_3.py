s = input("Введите строку: ")

result = ""
i = 0
while i < len(s):
    if i + 3 < len(s) and s[i:i+3] == "abc" and s[i+3].isdigit():
        i += 3
    else:
        result += s[i]
        i += 1

print(result)