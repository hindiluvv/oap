var
  inputf, outputf: text;
  num, minim, maxNum: integer;
  first: boolean;
  begin
    
  assign(inputf, 'D:\input.txt');
  reset(inputf);
  
  first := true;
  while not Eof(inputf) do
  begin
    readln(inputf, num);
    if first then
    begin
      minim := num;
      maxNum := num;
      first := false;
    end
    else
    begin
      if num < minim then minim := num;
      if num > maxNum then maxNum := num;
    end;
  end;
  
  CloseFile(inputf);
  
  AssignFile(outputf, 'D:\output.txt');
  Rewrite(outputf);
  Writeln(outputf, 'Минимальное: ', minim);
  Writeln(outputf, 'Максимальное: ', maxNum);
  CloseFile(outputf);
  
  Writeln('Минимальное: ', minim);
  Writeln('Максимальное: ', maxNum);
end.
