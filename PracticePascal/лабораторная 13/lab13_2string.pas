var
  f1, f2: text;
  lines: array[1..1000] of string;
  count, maxLen: integer;
begin
  assign(f1, 'D:\лабораторная13\task2.txt');
  reset(f1);
  
  count := 0;
  maxLen := 0;

  while not eof(f1) do
  begin
    count := count + 1;
    readln(f1, lines[count]);
    if length(lines[count]) > maxLen then
      maxLen := length(lines[count]);
  end;
  close(f1);
  
  assign(f2, 'D:\лабораторная13\res_task2.txt');
  rewrite(f2);
  
  for var i := count downto 1 do
    if length(lines[i]) = maxLen then
      writeln(f2, lines[i]);
  
  close(f2);
end.