var
  str, res: string;
  i: integer;
begin
  write('Введите строку: ');
  readln(str);
  
  res := '';
  i := 1;
  while i <= Length(str) do
  begin
    if (i <= Length(str) - 3) and 
       (str[i] = 'a') and 
       (str[i+1] = 'b') and 
       (str[i+2] = 'c') and 
       (str[i+3] in ['0'..'9']) then
      i := i + 3
    else
    begin
      res := res + str[i];
      i := i + 1;
    end;
  end;
  
  writeln('Результат: ', res);
end.