program roman_numbers;

type
  arr = array[1..3] of (I, V, X);

var
  k, n, ed: integer;
  //des: real;
  des, out: string;

begin
write('Введите целое число: '); readln(k);
//writeln;
// check if number in range 1 <= k <= 39
if (k < 1) or (k > 39) then
  begin
    write('Out of range!');
    readln;
    exit;
  end;

  // desyatki
(*  case k of
    1..9: des:= '';
    10..19: des:= 'X';
    20..29: des:= 'XX';
    30..39: des:= 'XXX';
  end; *)
  begin
  for n:= 0 to ((k div 10) - 1) do
  des:= des + 'X';
  end;

  //edinitsy
  ed:= k mod 10;
  //writeln(ed);

  //main algorithm
  case ed of
    1, 2, 3:
      begin
      for n:= 1 to ed do
        out:= out + 'I';
      end;
    4: out:= 'IV';
    5: out:= 'V';
    6, 7, 8:
      begin
      des:= des + 'V';
      for n:= 6 to ed do
      out:= out + 'I';
      end;
    9: out:= 'IX';
  end;

write(des + out);
readln;
end.