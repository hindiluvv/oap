var
  arr: array of integer;
  n, i, j: integer;
  cN, mF: integer;
  cCount, mCount: integer;
begin

  write('Введите размер массива: ');
  readln(n);
  
   SetLength(arr, n);
   
  writeln('Введите элементы массива:');
  for i := 0 to n - 1 do
  begin
    write('arr[', i, '] = ');
    readln(arr[i]);
  end;
  
  mCount := 0;
  mF := arr[0];

  for i := 0 to n - 1 do
  begin
    cN := arr[i];
    cCount := 0;
    
    for j := 0 to n - 1 do
    begin
      if arr[j] = cN then
        cCount := cCount + 1;
    end;
    
    if cCount > mCount then
    begin
      mCount := cCount;
      mF := cN;
    end;
  end;
  
  writeln;
  writeln('Наиболее часто повторяющееся число: ', mF);

end.
