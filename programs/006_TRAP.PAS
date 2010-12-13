program trapezium_method;
uses
    crt;
var
   a, b, c:real;
   x, h, s:real;
   i, n: integer;

begin
     clrscr;

     h:= 0.001;
     a:= 1.9;
     b:= 3.604;
     c:= b-a;
     n:=round(c/h);
     x:=a+h;

     s:=(1/sqrt(a)*ln(a)) + 1/(sqrt(b)/ln(b));

     for i:= 1 to n-1 do
     begin
         s:=s+(1/sqrt(x)*ln(a));
         x:=x+h;
     end;

     s:=s*h;
     WriteLn('S = ', s:8:4);

     readkey;
end.