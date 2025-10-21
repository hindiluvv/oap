var
  n, i: integer;
begin
  write('Введите n: ');
  readln(n);
  
  writeln('Число':10, 'Квадрат':10);
  
  for i := 1 to n do
  begin
    if i mod 2 = 1 then 
      writeln(i:10, sqr(i):10);
  end;
end.