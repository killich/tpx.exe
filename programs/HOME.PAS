program hello_home;
uses
    crt,  graph;
var
   driver:integer;
   mode:integer;
   a:integer;
begin
     clrscr;

     {640*400}
     driver:= 9;
     mode:= 1;
     InitGraph(driver, mode, '../BGI/');

     {dom}
     SetFillStyle(1,8);
     Bar(200, 150, 300, 250);

     {okno}
     SetFillStyle(1, 14);
     Bar(215, 175, 285, 225);

     {rama okna}
     SetColor(8);
     Line(250, 175, 250, 225);
     Line(215, 200, 285, 200);

     {krysha}
     SetColor(4);
     Line(200, 150, 250, 100);
     Line(250, 100, 300, 150);

     Circle(250,130,15);

     {trava}
     SetColor(2);
     For a:=1 to 40 do
     begin
         Line(50 + a*10, 250, 50 + a*10, 270);
     end;

     readkey;
end.