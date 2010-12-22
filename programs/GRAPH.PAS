program hello_home;
uses
    crt,  graph;
var
   driver:integer;
   mode:integer;
begin
     clrscr;

     {640*400}
     driver:= 9;
     mode:= 1;
     InitGraph(driver, mode, '../BGI/');

     SetColor(4);
     Line(0, 0, 640, 350);

     readkey;
end.