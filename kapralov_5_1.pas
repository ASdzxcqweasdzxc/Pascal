program check;

var
  x, y: real;
  c: char;

begin

  writeln('enter sign: '); readln(c);
  writeln('enter 1st number: '); readln(x);
  writeln('enter 2nd number: '); readln(y);

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
