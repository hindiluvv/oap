program three;
var a,b,c,d,e: integer;
begin
writeln('Введите число');
readln(a);
b:= a div 100;
c:= a div 10 mod 10;
d:= a mod 10;
e:= b+c+d;
writeln(e);
end.
