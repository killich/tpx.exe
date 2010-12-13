program newton_method;
uses crt;

function funct(x:real):real;
begin
     funct:=exp(x)+sqr(x)-2;
end;

function funct1(x:real):real;
begin
     funct1:=exp(x)+2*x;
end;

var
   epsilon:real;
   x:real;
begin
     clrscr;

     WriteLn('Start approcsimation:');
     Read(x);

     WriteLn('Epsilon is:');
     Read(epsilon);

     repeat
           x:=x-funct(x)/funct1(x);
     until abs(funct(x)) <= epsilon;

     WriteLn('x = ', x:8:4);
     WriteLn('f(x) = ', funct(x):8:4);
     readkey;
end.