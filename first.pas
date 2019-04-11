program hello;
const
        N = 6;
var
        a: array [1..N] of integer = (2,2,3,4,5,5);
        k: array [1..5] of integer = (0,0,0,0,0);
        i, s: integer;

function sum(arr: array of integer):  integer;
var
        i, s: integer;
begin
        s := 0;
        for i:=1 to N do
        begin
                s := s + arr[i]
        end;
        sum := s;
end;


begin
        writeln('hello');
        for i:=1 to N do
        begin
                k[a[i]] := k[a[i]] + 1
        end;
        writeln('2 - ', k[2], ' 3 - ', k[3], ' 4 - ', k[4], ' 5 - ', k[5]);
        s := sum(a);
        writeln('avg ', s/N:4);
end.
