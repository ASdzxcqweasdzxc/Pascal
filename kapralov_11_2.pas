program bubble_sort;

var
  arr: array[1..100] of integer;
  i1, i2, n, x, stopper: integer;

begin
randomize;
write('Please enter sequence length (0 < n <= 100): '); readln(n);
if (n > 100) then begin //check if number is out of range of [1, 100]
  write('Quantity of numbers must not exeed 100!');
  readln;
  exit
end;

//write('Please choose mode'); readln(stopper);
stopper:= 2;

if (stopper <> 0) or (stopper <> 1) then begin
  write('Mode can only be 0 or 1!');
  readln;
  exit
end;

for i1:= 1 to n do begin
  arr[i1]:= random(100);
end;
//writeln('first');
//for i1:= 1 to n do begin
  //write(arr[i1], ' ')
//end;


if (stopper = 0) then begin
  for i1:= 1 to n - 1 do begin
    for i2:= 1 to n - 1 do begin
      if (arr[i2] > arr[i2 + 1]) then begin
        x:= arr[i2 + 1];
        arr[i2 + 1]:= arr[i2];
        arr[i2]:= x
      end;
    end;
  end;

  writeln;
  writeln('next');
  for i1:= 1 to n do begin
    write(arr[i1], ' ');
    end
end;
if (stopper = 1) then begin

  write('111')
end;


readln;
end.