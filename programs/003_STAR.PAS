{Снежинка
Нарисовать фигуру "снежинку" по следующему алгоритму:
из одной точки центра вырастают k
кристалликов-отрезков длины r.
Свободный конец каждого из них служит
центром новой снежинки с длиной кристаллика-отрезка
в 3 раза меньшей r. Процесс продолжается n раз.
}
program Star;
uses crt, graph;
const
     k = 150; {dlina lucha (iznachal'nogo)}
     n = 8; {kolichestvo luchei}
     g = 7; {glubina rekursii}
var
   gd, gm: integer;

procedure Snezhinka(x, y: word; r, c: byte);
var
   alpha: real;
   i: byte;
   xd, yd: integer;
begin
     if c < 1 then exit;
     for i := 1 to n do
     begin
          alpha := 2 * Pi * i / n;
          xd := round(x + r * cos(alpha));
          yd := round(y + r * sin(alpha));
          moveto(x, y);
          lineto(xd, yd);
          setcolor(random(12));
          Snezhinka(xd, yd, r div 3, c - 1);
     end;
end;

begin
     randomize;
     initgraph(gd, gm, '../BGI/');
     setcolor(random(12));
     snezhinka(320, 240, k, g);
     readkey;
     closegraph;
end.