uses GraphABC;
begin
  setpenwidth(3);
  moveto(350, 50);  
  lineto(400,300);
  lineto(300,300);
  lineto(350,50);
  Circle(350,50,25);
  floodfill(360,250,clred);
  floodfill(350,50,clred);

  
  moveto(300, 300);
  lineto(225, 300);
  lineto(125, 80);
  lineto(310, 250);
  Circle(125,80,25);
  floodfill(275,290,clblue);
  floodfill(125,80,clblue);
  
  moveto(400, 300);
  lineto(475, 300);
  lineto(575, 80);
  lineto(390, 250);
  Circle(575,80,25);
  floodfill(410,270,cllime);
  floodfill(575,80,cllime);
end.