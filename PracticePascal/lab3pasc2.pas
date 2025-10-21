var
  n, i, j, good: integer;
  grade: integer;
  bad: boolean;
begin
  write('Введите количество студентов: ');
  readln(n);
  good := 0;
  for i := 1 to n do
  begin
    writeln('Введите 3 оценки для студента ', i, ':');
    bad := false;
    for j := 1 to 3 do
    begin
      write('Оценка ', j, ': ');
      readln(grade);
      if (grade = 2) or (grade = 3) then
        bad := true;
    end;
    if not bad then
      good := good + 1;
  end;
  writeln('Количество студентов без оценок 2 и 3: ', good);
end.