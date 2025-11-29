
var
  filetext, temp: text;
  name, tempFileName, line: string;
  K, currentLine: Integer;
begin
  Write('Введите имя файла: ');
  Readln(name);
  Write('Введите номер строки K: ');
  Readln(K);
  
  if not FileExists(name) then
  begin
    Writeln('Файл не существует.');
    Exit;
  end;
  
  tempFileName := 'temp_' + name;
  
  AssignFile(filetext, name);
  AssignFile(temp, tempFileName);
  
  Reset(filetext);
  Rewrite(temp);
  
  currentLine := 1;
  while not Eof(filetext) do
  begin
    if currentLine = K then
      Writeln(temp);
    
    Readln(filetext, line);
    Writeln(temp, line);
    Inc(currentLine);
  end;
  
  if K > currentLine then
  begin
    while currentLine < K - 1 do
    begin
      Writeln(temp);
      Inc(currentLine);
    end;
    Writeln(temp);
  end;
  
  CloseFile(filetext);
  CloseFile(temp);
  
  DeleteFile(name);
  Rename(temp, name);
  
  Writeln('Операция завершена.');
end.