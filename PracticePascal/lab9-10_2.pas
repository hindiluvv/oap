begin
  var a := new integer[6,8];
  var b := new integer[6];

  for var i := 0 to 5 do
    for var j := 0 to 7 do
      Read(a[i,j]);

  for var i := 0 to 5 do
  begin
    b[i] := 0;
    for var j := 0 to 7 do
      if abs(a[i,j]) mod 4 = 0 then
      begin
        b[i] := a[i,j];
        break;
      end;
  end;

  println('Результат: ', b);
end.