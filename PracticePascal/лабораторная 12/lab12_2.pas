var filetext2: text;
var N,K,i,x : integer;
name: string;
begin
  readln(N);
  readln(K);
  readln(name);
  
  
  assign(filetext2, name);
  rewrite(filetext2);
  
  for i := 1 to N do
    begin

    for x := 1 to K do
      
    write(filetext2, '*');
    writeln(filetext2);
    end;
    close(filetext2);
end.