program the_biggest_common_divider;

var
  x, y, res, i: integer;

begin
write('Please enter the first integer: '); readln(x);
write('Please enter the second integer: '); readln(y);

//checks for x and y
  if (x < 0) then begin
    x:= x * (-1);
  end;
  if (y < 0) then begin
    y:= y * (-1);
  end;
  if (x = 0) or (y = 0) then begin
    writeln('One of your integers = 0');
    readln;
    exit;
  end;
  if (x < y) then begin
    res:= y;
    y:= x;
    x:= res;
  end;

  //main body
  repeat
    res:= x mod y;
    x:= y;
    y:= res;
  until res = 0;
  //writeln;
  writeln('The biggest common divider is: ', x);

readln;
end.
