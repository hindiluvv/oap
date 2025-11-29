var 
  f_chetn, f_nechetn, f2: text;
  x: real;
  i: integer;
begin
  x := 0;
  assign(f2, 'D:\лабораторная13\task3.txt');
  rewrite(f2);
  
  for i := 1 to 10 do
  begin
    writeln(f2, x);
    writeln(x);
    x := x + 1.5;
  end;
  close(f2);

  assign(f_chetn, 'E:\ОАиП\лабораторная 13\task3_четные.txt');
  assign(f_nechetn, 'E:\ОАиП\лабораторная 13\task3_нечетные.txt');
  rewrite(f_chetn);
  rewrite(f_nechetn);
  
  assign(f2, 'E:\ОАиП\лабораторная 13\task3.txt');
  reset(f2);
  
  i := 1;
  while not eof(f2) do
  begin
    readln(f2, x);
    if i mod 2 = 0 then
      writeln(f_chetn, x)
    else 
      writeln(f_nechetn, x);
    
    i := i + 1;
  end;
  
  close(f2);
  close(f_chetn);
  close(f_nechetn);
end.