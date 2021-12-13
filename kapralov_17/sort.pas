(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 12.12.2021
 *)
unit sort;

interface
uses
  obj;
    
  procedure bubble_sort(var arr: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
  procedure print(arr: arrOfTowns; n: integer);
  procedure fillRes(var arr: arrOfRes; seq: integer; var comps: integer; var changes: integer);

implementation

{exchange procedure}
procedure exchange(var arr: arrOfTowns; pos: integer; var changes: integer);
var
  x: element;
begin
  x.town:= arr[pos].town; x.heigth:= arr[pos].heigth; x.measure:= arr[pos].measure;
  arr[pos].town:= arr[pos + 1].town; arr[pos].heigth:= arr[pos + 1].heigth; arr[pos].measure:= arr[pos + 1].measure;
  arr[pos + 1].town:= x.town; arr[pos + 1].heigth:= x.heigth; arr[pos + 1].measure:= x.measure;
  inc(changes);
end;
  
{compare procedure}  
function compare(a, b: integer; var comps: integer): integer;
begin  
  if (a > b) then compare:= 1;
  inc(comps)
end;

{bubble sort procedure}
procedure bubble_sort(var arr: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  i, n: integer;
begin
  for i:= 0 to max_n - 1 do begin
    for n:= 1 to max_n - 1 - i do begin
      if (compare(arr[n].heigth, arr[n + 1].heigth, comps) = 1) then begin
      //if (arr[n].heigth > arr[n + 1].heigth) then begin
        exchange(arr, n, changes);
        if (mode = 1) then print(arr, max_n)
      end;
    end; //end of inner cicle
  end; //end of outer cicle

end; //end of function bubble_sort

{inner module print procedure}
procedure print(arr: arrOfTowns; n: integer);
 var i: integer;
begin
  for i:= 1 to n do
    writeln(arr[i].town, arr[i].heigth, arr[i].measure);
end;

{results table *********************************************************************************}  
procedure fillRes(var arr: arrOfRes; seq: integer; var comps: integer; var changes: integer);
  begin 
    arr[seq].method:= seq; arr[seq].comps:= comps; arr[seq].changes:= changes;
    comps:= 0; changes:= 0;
  end;
  
{merge sort ************************************************************************************}
procedure MergeSort(a, c: integer);
var
  x, j, i, n1, n2: integer;
  rez: array[1..1000] of integer;
begin
  if c <= a then
    exit
  else
  begin
    x := (a + c) div 2;
    MergeSort(a, x);
    MergeSort(x + 1, c);
    n1 := a;
    n2 := x + 1;
    for i := a to c do
    begin
      if (n1 < x + 1) and ((n2 > c) or (mas[n1] < mas[n2])) then
      begin
        rez[i] := mas[n1];
        inc(n1);
      end
      else
      begin
        rez[i] := mas[n2];
        inc(n2);
      end;
    end;
    for j := a to c do
      mas[j] := rez[j];
  end;
end;

end.