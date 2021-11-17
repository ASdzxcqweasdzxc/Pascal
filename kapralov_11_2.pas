Program bubble_sort;
//procedure prints array
procedure print(arr: array of integer; max_n: integer);

var
  i: integer;
  
begin
  for i:= 1 to max_n do write(arr[i], ' ');
  writeln
end; //end of procedure print

//sorting procedure -bubble sort
procedure ifAgtB(var arr: array of integer; var count: integer; max_n, mode: integer);

var
 i, n, x, f: integer;

begin
for i:= 0 to max_n - 1 do begin
  f:= 0;
  for n:= 1 to max_n - 1 - i do begin
    if (arr[n] > arr[n + 1]) then begin
      x:= arr[n];
      arr[n]:= arr[n + 1];
      arr[n + 1]:= x;
      f:= 1;
      count:= count + 1;
      if (mode = 1) then print(arr, max_n)
    end;
  end; //end of inner cicle
  if (f = 0) then continue
end; //end of outer cicle

end; //end of procedure ifAgtB

//declaration for main body
type
 mass = array[1..100] of integer;
 
var
 arr: mass;
 i, max_n, mode, count: integer;
 
begin //main body
randomize;
write('Please enter quantity of numbers to fill an array (<=100): '); readln(max_n);
write('Please enter mode (normal: 0, demo: 1): '); readln(mode);
//max_n:= 10;
//mode:= 1;
if (max_n < 1) or (max_n > 100) or (mode < 0) or (mode > 1) then begin
  write('Out of range!');
  readln;
  exit
end;
for i:= 1 to max_n do arr[i]:= random(101);

//sorting procedure
ifAgtB(arr, count, max_n, mode);

if (mode = 0) then print(arr, max_n);
write(count)
end.
