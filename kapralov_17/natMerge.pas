(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 13.12.2021
 *)
unit natMerge;

interface
uses obj, sort;

  procedure Natural_Merging_Sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
  procedure exch(var el1: element; el2: element; var val: integer; var changes: integer);

implementation
{compare procedure}
function compare(a, b: element; var comps: integer): integer;
begin
  if (a.heigth > b.heigth) then compare:= 1;
  inc(comps)
end;

procedure exch(var el1: element; el2: element; var val: integer; var changes: integer);

begin
  el1:= el2;
  inc(val);
  inc(changes)
end;


  procedure Natural_Merging_Sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  s1, s2, x_left, x_right, y_left, y_right, tmp_val_l, tmp_val_r, switch: integer;
  sort: boolean;
  y: arrOfTowns;
  count: integer;

begin
count:=0;
  //while (sort = true) do
  //begin

  x_left:= 0;
  x_right:= max_n;
  y_left:= 0;
  y_right:= max_n;
  tmp_val_l:= 0;
  tmp_val_r:= max_n;
  switch:= max_n;

while (y_left < x_right) do
  begin
    inc(switch);

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
            dec(x_right);
          end else break
        end;
    //if (x_left = x_right) then //writeln(s1, ' ',y_left, 'to', x_left, ' ', s2, ' ', x_right, 'to', y_right);
      //break;
  writeln(s1, ' ',y_left, 'to', x_left, ' ', s2, ' ', x_right, 'to', y_right);
    (*collect values in Y ************************************************************
     * y_left - left start for x; x_left - left end for x
     * x_right - right start for x; y_right - right end for x
     *)
    s2:= x_right; write(s2);
    while ((y_left <= x_left) or (x_right <= y_right)) do
    begin
      if (y_left > x_left) then begin
        while (s2 <= y_right) do
        begin
          y[tmp_val_l]:= x[s2]; inc(tmp_val_l); inc(s2)
        end; break
        end;
      if (s2 > y_right) then begin
        while (y_left <= x_left) do
        begin
          y[tmp_val_l]:= x[y_left]; inc(tmp_val_l); inc(y_left)
        end; break
        end;
      if (compare(x[s2], x[y_left], comps) = 1) then
      begin
      y[tmp_val_l]:= x[y_left]; inc(tmp_val_l); inc(y_left) end
      else begin
      y[tmp_val_l]:= x[s2]; inc(tmp_val_l); inc(s2) end

    end;

    inc(x_left); dec(x_right); if (x_right = x_left) then x_right:= x_left + 1;
    y_left:= x_left; y_right:= x_right; //write('here', s2, ' ');
 
  end;
  writeln('second ', x_left, ' ', x_right, ' ', tmp_val_l, ' ', tmp_val_r);
  x:=y; //inc(x_right);
    if (mode = 1) then print(x, max_n);
    
    //if (switch = 1) then sort:= false
//end;
  //print(y, max_n);
  writeln(count);
  print(x, max_n)

end;

end.