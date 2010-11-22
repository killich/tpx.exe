program tpx_program;
uses
    crt, graph;
var
   driver:integer;
   mode:integer;
begin
     clrscr;

     {set graph mode}
     driver := 9;
     mode := 1;
     InitGraph(driver, mode,'../BGI/');
     {color}
     SetBkColor(5);
     SetFillStyle(2,3);
     {pics}
     bar(100,100,200,200);
     circle(300,300,35);
     {color}
     floodFill(300,300,15);
     SetColor(4);
     {pics}
     Line(0, 0, 20,40);
     PutPixel(100,100,7);

     readkey;
end.