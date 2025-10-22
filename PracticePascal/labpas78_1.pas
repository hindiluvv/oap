var
  s: string;
  l: integer;
begin
  
  writeln('Введите строку: ');
  readln(s);
 
  writeln(s, ', ', s, ', ', s);
  
  l:= Length(s);
  writeln('Количество символов в строке: ', l);
end.