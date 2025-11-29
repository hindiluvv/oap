var
  filetext: text;
  a: string;
  i: integer;
begin
  assign(filetext,'D:\text.txt');
  rewrite(filetext);
  for i:= 1 to 10 do
    writeln(filetext,i);
    close(filetext);
    
    assign(filetext,'D:\text.txt');
    reset(filetext);
  for i:= 1 to 10 do
    begin
      readln(filetext,a);
      writeln(a);
    end;
  close(filetext);
end.