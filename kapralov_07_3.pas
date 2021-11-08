program if_prime;

label 1;

var
  n, i1, i2, d: integer;

begin
write('Please enter any positive integer >= 2: '); readln(n);
 if (n < 2) then begin
   n:=0;
   goto 1;
   end;

 for i1:= 2 to n do begin
   for i2:= 2 to i1 do begin
   d:= i1 mod i2;
     if (d = 0) then
       break;
   end;

   if (i2 = i1) then
     write(i2, ' ');
 end;
1:

case n of
  0: write('Illegal number entered!');
end;

readln;

end.