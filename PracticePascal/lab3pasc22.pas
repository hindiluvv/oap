var n,i: integer;
var a: array of real;
var tw, cost: real;
begin
  Writeln('Введите количество пассажиров');
  readln(n);
  SetLength(a, n);
  tw:= 0;
  writeln('Введите количество багажа(кг)');
  for i:= 0 to n-1 do 
  begin
  write('Пассажир', i + 1, ': ');
    readln(a[i]);
    cost:= a[i] * 30;
    writeln('Stoimostperevozki ', cost,'руб');
    tw := tw + a[i];
  end;
  writeln('Общий вес ', tw);
  writeln('общая стоимость перевозки: ', tw * 30);
end.