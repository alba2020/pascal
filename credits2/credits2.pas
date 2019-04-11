program SchoolCredits2; // школьные оценки

var
  credits: array of integer = (2,2,3,4,5,5); // оценки учеников
  k: array [1..5] of integer = (0,0,0,0,0); // подсчет оценок

// считает сумму элементов массива
// передаем массив как ссылку на константу
function sum(const arr: array of integer):  integer;
var
  s: integer;
begin
  s := 0; // сумма
  for var i := 0 to arr.Length - 1 do // от нижней до верхней границы массива
  begin
    s := s + arr[i]
  end;
  sum := s; // вернули сумму
end;


begin
  for var i := 0 to credits.Length - 1 do // для всех элементов массива
  begin
    k[credits[i]] := k[credits[i]] + 1 // увеличили значение, соответствующее оценке
  end;
  writeln('2 - ', k[2], ' 3 - ', k[3], ' 4 - ', k[4], ' 5 - ', k[5]);
//  writeln('sum', s);
//  writeln('len', a.Length);
  writeln('avg ', sum(credits)/credits.Length:4); // средняя оценка, :4 - ширина поля
end.
