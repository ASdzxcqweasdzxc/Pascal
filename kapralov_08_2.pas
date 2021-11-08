program multiple_of_summs;

var
  s1, s2: real;
  n, i, i1, i2: integer;

begin
write('Please enter number to skip: '); readln(n);
if (n < 0) or (n > 6) then begin
  write('The number is out of scope!');
  readln;
  exit
end;
i:= 0;
s1:= 1;
for i1:= 1 to 6 do begin  //1st cicle
  s2:= 0;
  for i2:= 1 to 20 do begin //2nd cicle
    i:= i + 1;
    s2:= s2 + 1 / i;
  end;                  // end of 2nd cicle
  if (i1 = n) then s2:= 1;
  write('s2= ', s2:5:5, ' ');
s1:= s1 * s2;
writeln('s1= ', s1:5:5);
end;                      // end of 1st cicle
//write('i= ', i);
readln;
end.