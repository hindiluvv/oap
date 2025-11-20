uses GraphABC;
var x, y: integer;
begin
  x := 50;
  y := 300;

  repeat 
    Rectangle(x, y, x + 20, y + 20);
    SetPenColor(clBlack);
    Rectangle(x, y, x + 20, y + 20);
    x := x + 2;
    y := y - 2;
  until y < 100;

  repeat 
    Rectangle(x, y, x + 20, y + 20);
    SetPenColor(clBlack);
    Rectangle(x, y, x + 20, y + 20);
    x := x + 2;
    y := y + 2;
  until y > 300;
end.