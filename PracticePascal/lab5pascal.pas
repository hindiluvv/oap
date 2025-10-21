var
  N, M, K, hon: integer;
begin
  write('Введите количество банок');
  readln(N);
  write('Введите требуемый объем меда в банке');
  readln(M);
  write('Введите необходимое количество меда на зиму');
  readln(K);
 hon := N * M;
  
  if hon>= K then
    writeln('YES')
  else
    writeln('NO');
end.