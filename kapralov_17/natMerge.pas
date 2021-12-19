(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 13.12.2021
 *)
unit natMerge;

interface
uses obj, sort;

  procedure Natural_Merging_Sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
implementation
{compare procedure}
function compare(a, b: element; var comps: integer): integer;
begin
  if (a.heigth > b.heigth) then compare:= 1;
  inc(comps)
end;

  procedure Natural_Merging_Sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  s1, s2, x_left, x_right, y_left, y_right, tmp_val: integer;
  y: arrOfTowns;

begin
  x_left:= 0;
  x_right:= max_n;
  y_left:= 0;
  y_right:= max_n;
  tmp_val:= 0;

while (x_left < x_right) do
  begin
      for s1:= x_left to max_n do
      begin
        if (compare(x[s1 + 1], x[s1], comps) = 1) then
        begin
          x_left:= x_left + 1;
        end else break
      end;
      if (x_left < x_right) then
        for s2:= x_right downto x_left do
        begin
          if (compare(x[s2], x[s2 - 1], comps) = 1) then
          begin
            x_right:= x_right - 1;
          end else break
        end;
    writeln(s1, ' ',y_left, 'to', x_left, ' ', s2, ' ', x_right, 'to', y_right);
    (*collect values in Y ************************************************************
     * y_left - left start for x; x_left - left end for x
     * x_right - right start for x; y_right - right end for x
     *)
    s2:= x_right;
    while ((y_left <= x_left) or (s2 <= y_right)) do
    begin 
      if (y_left > x_left) then begin
        while (s2 <= y_right) do
        begin
          y[tmp_val]:= x[s2]; inc(tmp_val); inc(s2)
        end; break
        end;
      if (s2 = y_right + 1) then begin
        while (y_left <= x_left) do
        begin
          y[tmp_val]:= x[y_left]; inc(tmp_val); inc(y_left)
        end; break
        end;
      if (x[y_left].heigth <= x[s2].heigth) then begin
      y[tmp_val]:= x[y_left]; inc(tmp_val); inc(y_left) end
      else begin
      y[tmp_val]:= x[s2]; inc(tmp_val); inc(s2) end
      
    end;
    x_left:= x_left + 1; x_right:= x_right - 1;
    y_left:= x_left; y_right:= x_right;
    //for s1:= 0 to max_n do x[s1]:= y[s1];
    //x:= y;
    //writeln('inc l&r ', x_left, ' ', x_right);
    if (mode = 1) then print(x, max_n)

  end;
  writeln('second ', x_left, ' ', x_right, ' ', tmp_val);
  x:=y;
  print(y, max_n);
  writeln;
  //for s1:= 0 to max_n do write(y[s1].town);
  print(x, max_n)

end;

end.
