program cicle;

var
  x, r, s: integer;

begin
  write('Please enter a number "s" (0 < s <= 18): ');
  readln(s);
  if (s < 1) or (s > 18) then begin
    write('Wrong number entered!');
    readln;
    exit;
  end;
  for x:= 10 to 99 do begin
    r:= (x div 10) + (x mod 10);
    if (r = s) then
        write(x, ' ');
  end;
readln;
end.
