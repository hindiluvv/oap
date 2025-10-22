var
  arr: array of integer;
  n, i, j: integer;
  currentNumber, mostFrequent: integer;
  currentCount, maxCount: integer;
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
  
  maxCount := 0;
  mostFrequent := arr[0];

  for i := 0 to n - 1 do
  begin
    currentNumber := arr[i];
    currentCount := 0;
    
    for j := 0 to n - 1 do
    begin
      if arr[j] = currentNumber then
        currentCount := currentCount + 1;
    end;
    
    if currentCount > maxCount then
    begin
      maxCount := currentCount;
      mostFrequent := currentNumber;
    end;
  end;
  
  writeln;
  writeln('Наиболее часто повторяющееся число: ', mostFrequent);
end.