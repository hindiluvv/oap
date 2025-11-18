procedure InputArray(var a: array of integer);
begin
  for var i := 0 to High(a) do
    Read(a[i]);
end;

function FirstMultipleOf5(a: array of integer): integer;
begin
  for var i := 0 to High(a) do
    if a[i] mod 5 = 0 then
      exit(i);
  Result := 10000; 
end;

procedure ReplaceMaxWithZero(var a: array of integer);
var max, index: integer;
begin
  max := a[0]; index := 0;
  for var i := 1 to High(a) do
    if a[i] > max then
    begin
      max := a[i];
      index := i;
    end;
  a[index] := 0;
end;

procedure DoubleAfterMin(var a: array of integer);
var min, index: integer;
begin
  min := a[0]; index := 0;
  for var i := 1 to High(a) do
    if a[i] < min then
    begin
      min := a[i];
      index := i;
    end;
  for var i := index+1 to High(a) do
    a[i] := a[i] * 2;
end;

begin
  var n: integer;
  Readln(n);
  var a := new integer[n];
  var b := new integer[n];

  InputArray(a);
  InputArray(b);

  if FirstMultipleOf5(a) < FirstMultipleOf5(b) then
  begin
    ReplaceMaxWithZero(a);
    DoubleAfterMin(b);
  end
  else
  begin
    ReplaceMaxWithZero(b);
    DoubleAfterMin(a);
  end;

  println('Массив A: ', a);
  println('Массив B: ', b);
end.