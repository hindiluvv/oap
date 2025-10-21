a = int(input("Введите количество рублей цены "))
b = int(input("Введите количество копеек цены "))
c = int(input("Введите количество рублей оплаты "))
d = int(input("Введите количество копеек оплаты "))

price = a * 100 + b
paid = c * 100 + d

if paid < price:
    print("оплачено меньше, чем стоит товар")
else:
    change = paid - price
    
    e = change // 100 
    f = change % 100  
    
    print(f"Сдача: {e} руб. {f} коп.")