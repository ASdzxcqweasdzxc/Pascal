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

(*exchange procedure *******************************************************************)
procedure exchange(var arr: arrOfTowns; pos: integer; var changes: integer);
var
  x: element;
begin
  x:= arr[pos];
  arr[pos]:= arr[pos + 1];
  arr[pos + 1]:= x;
  inc(changes);
end;

(*compare procedure ********************************************************************)  
function compare(a, b: element; var comps: integer): integer;
begin  
  if (a.heigth > b.heigth) then compare:= 1;
  inc(comps)
end;

(*bubble sort procedure *****************************************************************)
procedure bubble_sort(var arr: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  i, n: integer;
begin
  for i:= 0 to max_n - 1 do begin
    for n:= 1 to max_n - 1 - i do begin
      if (compare(arr[n], arr[n + 1], comps) = 1) then begin
        exchange(arr, n, changes);
        if (mode = 1) then print(arr, max_n)
      end;
    end; //end of inner cicle
  end; //end of outer cicle

end; //end of function bubble_sort

(* inner module print procedure: *******************************************************************
 * for parameters takes in
 * array of elements and number of elements in array
 *)
procedure print(arr: arrOfTowns; n: integer);
 var i: integer;
begin
  for i:= 0 to n do
    writeln(arr[i].town, arr[i].heigth, arr[i].c, arr[i].measure);
end;

(*results table *********************************************************************************
 * for parames takes
 * array of elements, seq means file name consumed, comps for compares in sorting method
 * changes for quantity of changes made in sorting method
 *)  
procedure fillRes(var arr: arrOfRes; seq: integer; var comps: integer; var changes: integer);
  begin 
    arr[seq].method:= seq; arr[seq].comps:= comps; arr[seq].changes:= changes;
    comps:= 0; changes:= 0;
  end;

end.
