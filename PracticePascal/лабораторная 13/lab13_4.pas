var
  f: text;
  a, b, c, m: real;
  i: integer;
begin
  assign(f, 'D:\лабораторная13\task5.txt');
  rewrite(f);
  for i := 1 to 10 do
    writeln(f, random(100) / 10); 
  close(f);
  
  assign(f, 'D:\лабораторная13\task5.txt');
  reset(f);
  readln(f, a); readln(f, b); m := 0;
  while not eof(f) do begin
    readln(f, c);
    if (b > a) and (b > c) then m := b;
    a := b; b := c;
  end;
  close(f);
  
  if m <> 0 then 
    writeln('Последний локальный максимум: ', m)
  else
    writeln('Локальные максимумы не найдены');
end.