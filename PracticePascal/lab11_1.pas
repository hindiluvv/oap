uses GraphABC;
begin
  setpenwidth(1);
  setpencolor(clblack);
  moveTo(350,30);
  lineTo(550,150);
  lineto(150,150);
  lineto(350,30);
  floodfill(300,100,clblue);
  
  moveTo(350,260);
  lineTo(550,150);
  lineto(150,150);
  lineto(350,260);
  floodfill(300,160,clLime);
  
  circle(100,150,50);
  floodfill(75,150,clred);
   circle(600,150,50);
    floodfill(625,150,clyellow);
end.