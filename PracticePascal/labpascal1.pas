var a,b: integer;
var sin,cos,tg,ctg,c: real;
begin
  Writeln('Введите противолежащий катет и гипотенузу');
  readln(a,b);
  sin := a / b;
  c:= sqrt(b**2-a**2);
  cos:= c/b;
  tg:= a / c;
  ctg:= c/a;
  writeln(sin:0:2);
  writeln(cos:0:2);
  writeln(tg:0:2);
  writeln(ctg:0:2);
end.