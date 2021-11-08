program matrix_of_randoms;

var
  b: array[1..5, 1..5] of integer;
  i, j, x, max: integer;
  min: array[1..3] of integer;

begin
x:= 21;
max:= -x div 2;
min[1]:= x;
randomize;
writeln('Main matrix:');
for i:= 1 to 5 do begin   //matrix creation
  for j:= 1 to 5 do begin
    b[i, j]:= random(x) - (x div 2);
    if (b[i, j] > max) then max:= b[i, j] //finding max value
  end;
end;

for i:= 1 to 5 do begin     //print main matrix
  for j:= 1 to 5 do begin
    write(b[i, j], ' ')
  end;
  writeln
end;
writeln;
writeln('a) Max integer in main matrix: ', max, '. ');  //print max value

for i:= 1 to 5 do begin  //get min value and its position
  for j:= 1 to i do begin
  if (i = j) then continue;
    if (min[1] > b[i, j]) then begin
      min[1]:= b[i, j];
      min[2]:= i;
      min[3]:= j
      end;
  end;
end;
writeln('b) Min integer below main diagonal: ', min[1], ', pos: [', min[2], ',', min[3], ']'); //print min value

for i:= 1 to 5 do begin  //changing values for rows 1-5
  x:= b[1, i];
  b[1, i]:= b[5, i];
  b[5, i]:= x
end;

writeln('c) New matrix (changed rows 1-5):');
for i:= 1 to 5 do begin     //print new matrix
  for j:= 1 to 5 do begin
    write(b[i, j], ' ')
  end;
  writeln
end;

readln;
end.
