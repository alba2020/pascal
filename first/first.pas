program SchoolCredits; // школьные оценки

const
  N = 6; // число элементов в нашем массиве
type
  Credits = array[1..N] of integer; // тип нашего массива
var
  a: Credits = (2,2,3,4,5,5); // оценки учеников
  k: array [1..5] of integer = (0,0,0,0,0); // подсчет оценок
  s: integer;

// считает сумму элементов массива
// передаем массив как ссылку на константу
function sum(const a: Credits):  integer;
var
  s: integer;
begin
  s := 0; // сумма
  for var i := Low(a) to High(a) do // от нижней до верхней границы массива
  begin
    s := s + a[i]
  end;
  sum := s; // вернули сумму
end;


begin
  for var i := Low(a) to High(a) do // для всех элементов массива
  begin
    k[a[i]] := k[a[i]] + 1 // увеличили значение, соответствующее оценке
  end;
  writeln('2 - ', k[2], ' 3 - ', k[3], ' 4 - ', k[4], ' 5 - ', k[5]);
  s := sum(a);
  writeln('avg ', s/N:4); // средняя оценка
end.
