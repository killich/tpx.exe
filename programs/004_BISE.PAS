program bisectium_method;
uses
    crt;

function funct(x:real):real;
begin
     funct:=(x-2)*cos(x)-1;
end;

var
   a, b:real;
   x, epsilon:real;
   stop:integer;
begin
     clrscr;

     Write('Left border of range: ');
     Read(a);

     Write('Right border of range: ');
     Read(b);

     Write('Epsilon: ');
     Read(epsilon);
     stop:=1;

     repeat
           x:=(a+b)/2;
           IF funct(a)*funct(b) <= 0 THEN
           begin
              b:=x;
           end
           ELSE
           begin
              a:=x;
           end;
	   stop:=stop+1;
	   if stop>100 then break;
     {b-a<epsilon}
     until abs(funct(x)) < epsilon;
      {x:=(b+a)/2;}
     WriteLn('x = ', x:8:4);
     WriteLn('f(x) = ', funct(x):8:4);

     readkey;
end.