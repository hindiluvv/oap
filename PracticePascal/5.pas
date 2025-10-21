var a,b,c: integer; 
var p,S: real;
begin
writeln('Введите длины 3 сторон');
readln(a,b,c);
p:=(a+b+c)/2;
S:= Sqrt(p*(p-a)*(p-b)*(p-c));
write(S:0:2);
end.