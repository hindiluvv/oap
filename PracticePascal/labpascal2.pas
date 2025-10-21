var a,b,c,d,e,g: integer;
begin
 writeln('Введите трехзначное число');
 readln(a);
 b:= a div 100;
 c:= a mod 100 div 10;
 d:= a mod 10;
 e:= d * 100 + c * 10 + b;
 g:= a - e;
 write(g);
end.