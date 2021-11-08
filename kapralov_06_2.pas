program fibonacci;

var
  x, y, res, i: integer;

begin
  write('Please enter any whole positive number: '); readln(i);
  if (i <= 0) then begin
   writeln(i, ' is not a valid number!');
   readln;
   exit;
   end;

  //starting points for febonacci secuence
  x:= 1;
  y:= 1;
  res:= 0;

  //main body
  while (i >= res) do begin
    res:= x + y;
    x:= y;
    y:= res;
  end;
  writeln(res);
readln;
end.
