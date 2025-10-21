var a,b,c,d: integer;
begin
  Writeln('Vvedite 3 chisla');
  readln(a,b,c);
  if a > 0 then d:= d + 1 else d:= d + 0;
  if b > 0 then d:= d + 1 else d:= d + 0;
  if c > 0 then d:= d + 1 else d:= d + 0;
  write(d);
end.