program check;

var
  x, y: real;
  c: char;

begin

  writeln('enter sign: '); readln(c);
  writeln('enter 1st number: '); readln(x);
  writeln('enter 2nd number: '); readln(y);

  if (c = '/') and (y = 0) then
  begin
  write('Division by 0 not defined!');
  readln;
  exit;
  end;

  case c of
    '+': writeln((x+y):5:2);
    '-': writeln((x-y):5:2);
    '*': writeln((x*y):5:2);
    '/': writeln((x/y):5:2);
    else
      writeln('Unedintified sign');
  end;
readln;
end.
