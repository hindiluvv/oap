var a, b, c, d,price, paid, change, e, f: integer;
begin
  write('Введите количество рублей цены');
  readln(a);
  write('Введите количество копеек цены');
  readln(b);
  write('Введите количество рублей оплаты');
  readln(c);
  write('Введите количество копеек оплаты');
  readln(d);
  
  price := a * 100 + b;
  paid := c * 100 + d;
  
  if paid < price then
    
  begin
    writeln('Оплачено меньше, чем стоит товар');
  end;
  
  change := paid - price;
  
  e := change div 100;
  f := change mod 100;
  writeln('Сдача: ', e, ' руб. ', f, ' коп.');
end.