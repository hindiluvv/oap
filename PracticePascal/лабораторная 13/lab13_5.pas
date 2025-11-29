var
  f, f2: text;
  num, minim, maximum: real;
  count, minindex, maxindex: integer;
begin
   assign(f, 'D:\лабораторная13\task6.txt');
  rewrite(f);
  for var i := 1 to 8 do
    writeln(f, (i * 0.5));
  close(f);
  
  reset(f);
  
  count := 0;
  minindex := 1;
  maxindex := 1;
  readln(f, minim);
  maximum := minim;
  count := 1;
  
  while not eof(f) do begin
    count := count + 1;
    readln(f, num);
    if num < minim then begin
      minim := num;
      minindex := count;
    end;
    if num > maximum then begin
      maximum := num;
      maxindex := count;
    end;
  end;
  close(f);
  
  assign(f, 'D:\лабораторная13\task6.txt');
  assign(f2, 'D:\лабораторная13\task6_2.txt');
  reset(f);
  rewrite(f2);
  
  var i := 0;
  while not eof(f) do begin
    i := i + 1;
    readln(f, num);
    
    if i = minindex then
      writeln(f2, maximum)
    else if i = maxindex then
      writeln(f2, minim)
    else
      writeln(f2, num);
  end;
  
  close(f);
  close(f2);
  
  erase(f);
  rename(f2, 'D:\лабораторная 13\task6.txt');
  
end.