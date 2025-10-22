begin
  var a: array[1..20] of integer;

  writeln('Введите 20 целых чисел:');
  for var i := 1 to 20 do
  begin
    write('a[', i, '] = ');
    readln(a[i]);
  end;
 
  for var i := 1 to 20 do
    if a[i] > 0 then 
      a[i] := 0
    else if a[i] < 0 then 
      a[i] := a[i] * a[i];
    
  for var i := 1 to 20 do
    write(a[i], ' ');
  writeln;
end.