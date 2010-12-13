program Gauss_Classic;
uses
  crt;

type
  vector = array[1..10] of real;
  matrix = array[1..10] of vector;

var
  a:matrix;
  b,x:vector;
  h:real;
  i,j,k,n:integer;

Begin {Начало основной программы}
  Clrscr;
  write('equals number: ');
  read(n);

for i:=1 to n do
begin
  writeln('Equal ', i);
  writeln('Coofitients');

  for j:=1 to n do
  begin
    write('a[',i,',',j,']=');
    read(a[i,j]);
  end;

  writeln('Rigth numbers');
  write('b[',i,']=');
  read(b[i]);
end;

readkey;
Clrscr;

writeln('Base matrix');

for i:=1 to n do
begin
  write(i);
  for j:=1 to n do
    write(a[i,j]:10:5);
    writeln(b[i]:10:5);
  end;
   
  writeln;
  writeln;
  writeln;

{Прямой ход - исключение переменных}
for i:=1 to n-1 do
  for j:=i+1 to n do
  begin
    a[j,i]:=-a[j,i]/a[i,i];
    for k:=i+1 to n do
      a[j,k]:=a[j,k]+a[j,i]*a[i,k];
      b[j]:=b[j]+a[j,i]*b[i]
    end;

  x[n]:=b[n]/a[n,n];

{Обратный ход - нахождение корней}

  for i:=n-1 downto 1 do
  begin
    h:=b[i];
    for j:=i+1 to n do
      h:=h-x[j]*a[i,j];
      
    x[i]:=h/a[i,i]; 
  end;

writeln('Answeres');

  for i:=1 to n do
    writeln('x(',i,')=',x[i]:10:5);

  readkey
end.
