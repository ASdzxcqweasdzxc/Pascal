program cos_x;

var
  n, y, i: integer;
  x, xinc, xn, eps, res: real;

begin
eps:= 0.00000000000001;

for i:= 1 to 2 do begin
  n:= 1;
  xn:= 1;
  res:= 1;

  write('Please entex x to calculate cos(x): 0 <= x <= 3: '); readln(x);
  if (x < 0) or (x > 3) then begin
    writeln('x is out of scope!');
    break
  end
else
  repeat
    xinc:= ((-1) * (x * x)) / (2 * n * (2 * n - 1));  //increment of next x
    xn:= xn * xinc;                                   //actual x in a row
    res:= res + xn;
    n:= n + 1;
  until (abs(xn) < eps);

writeln('x: ', x:1:5, ' cos(x) is: ', res:1:10);
end;

readln;
end.
