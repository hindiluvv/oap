var 
  f: text;
  x, sum: real;
  i: integer;
begin
  sum := 0;
  x := 0;
  assign(f, 'D:\лабораторная13\task4.txt');
  rewrite(f);
  
  for i := 1 to 8 do
  begin
    writeln(f, x);
    writeln(x);
    x := x + 0.5;
  end;
  close(f);  
  assign(f, 'E:\ОАиП\лабораторная 13\task4.txt');
  reset(f);
  
  i := 1;
  while not eof(f) do
  begin
    readln(f, x);
    if i mod 2 = 0 then
      sum := sum + x;
    i := i + 1;
  end;
  close(f);
  assign(f, 'D:\лабораторная13\task4.txt');
  append(f);
  
  writeln(f,'Summa: ', sum);
  
  close(f);
  writeln(sum);
end.