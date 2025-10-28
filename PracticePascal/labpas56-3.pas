var
  arr: array[1..21] of integer;
  i, count, pos: integer;
begin
  
  writeln('Введите 20 чисел:');
  for i := 1 to 20 do
  begin
    write(i, ': ');
    readln(arr[i]);
  end;
  
  count := 0;
  for i := 1 to 20 do
    if arr[i] mod 2 = 0 then
      count := count + 1;
      writeln('Четных чисел: ', count);
      
  
  pos := 0;
  for i := 1 to 20 do
    if arr[i] mod 2 = 0 then
    begin
      pos := i;
      break;
    end;
  
  if pos > 0 then
  begin
    for i := 21 downto pos + 2 do
      arr[i] := arr[i - 1];
    
    arr[pos + 1] := count;
    
 writeln('Результат:');
    for i := 1 to 21 do
      write(arr[i], ' ');
  end

end.
