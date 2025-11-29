var filetext: text;
s, name : string;



begin
  readln(name);
  readln(s);
  assign(filetext, name);
  if FileExists(name) then
    Append(filetext)
  else
    Rewrite(filetext);
  
  Writeln(filetext, s);
  CloseFile(filetext);
  Writeln('Строка добавлена в файл ', ame);
end.