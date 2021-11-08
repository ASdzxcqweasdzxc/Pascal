program chislo;

var
  x: Single;
  d: Integer;

begin
  write('Please enter any positive number: '); readln(x);
  writeln;
  d:= trunc(frac(x) * 10);
  writeln('First number after comma: ', d:1);
  readln;
end.
