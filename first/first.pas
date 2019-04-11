program hello;
const
  N = 6; // число элементов в нашем массиве
type
  Arr = array[1..N] of integer; // тип нашего массива

var
  a: Arr = (2,2,3,4,5,5); // оценки учеников
  k: array [1..5] of integer = (0,0,0,0,0); // подсчет оценок
  s: integer;

// считает сумму элементов массива
// передаем массив как ссылку на константу
function sum(const a: Arr):  integer;
var
  s: integer;
begin
  s := 0;
  for var i:=1 to N do
  begin
    s := s + a[i]
  end;
  sum := s;
end;


begin
  for var i:=1 to N do
  begin
    k[a[i]] := k[a[i]] + 1
  end;
  writeln('2 - ', k[2], ' 3 - ', k[3], ' 4 - ', k[4], ' 5 - ', k[5]);
  s := sum(a);
  writeln('avg ', s/N:4); // средняя оценка
end.
