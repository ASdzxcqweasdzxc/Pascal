program cicle;

var
  x, y, r: integer;

begin
  for x:= 10 to 99 do begin
    r:= (x div 10) + (x mod 10);
    if (r > 0) and (r <= 18) then
        write(r, ' ');
  end;
readln;
end.
