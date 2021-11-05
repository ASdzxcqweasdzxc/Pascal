program zeros_in_array;

var
  n: array[1..100] of integer;
  m: array[1..100] of integer;
  i, e, max: integer;

begin
write('Please enter number of entries (0 < N <= 100): '); readln(max);
if (max < 1) or (max > 100) then begin
  write('Quantity is out of scope!');
  readln;
  exit
end;

for i:= 1 to max do begin  //entering numbers cicle
  write('Please enter number ', i, ' for secuence: '); read(e);
  n[i]:= e;
end;

e:= 0;
for i:= 1 to max do begin  //iterating through main array
  if (n[i] = 0) then begin
    e:= e + 1;
    m[e]:= i
  end;
end;

if (e = 0) then begin  //exit program if n has no zeros
  write('N: ', max, '. There are no zeros in sequence.');
  end
else
  write('N= ', max, ', M= ', e);
  writeln;
  for i:= 1 to e do begin //printing zeros from e
    write(i, ':', m[i], ' ')
  end;
//end;

readln;
readln;
end.