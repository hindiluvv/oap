var
  str1, str2, long: string;
  n1, n2, d, i: integer;
begin
  write('Первая строка: ');
  readln(str1);
  write('Вторая строка: ');
  readln(str2);
  
  n1 := Length(str1);
  n2 := Length(str2);

  if n1 > n2 then
  begin
    d := n1 - n2;
    long := str1;
  end
  else
  begin
    d := n2 - n1;
    long := str2;
  end;
  
  for i := 1 to d do
    writeln(long);
end.