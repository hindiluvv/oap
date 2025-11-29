var
  f, temp: TextFile;
  fileName, tempFileName, line: string;
begin
  Write('Введите имя файла: ');
  Readln(fileName);
  
  
  tempFileName := 'temp_' + fileName;
  
  AssignFile(f, fileName);
  AssignFile(temp, tempFileName);
  
  Reset(f);
  Rewrite(temp);
  
  while not Eof(f) do
  begin
    Readln(f, line);
    if Trim(line) <> '' then
      Writeln(temp, line);
  end;
  
  CloseFile(f);
  CloseFile(temp);
  
  DeleteFile(fileName);
  Rename(temp, fileName);
  
  Writeln('Пустые строки удалены из файла ', fileName);
  end.