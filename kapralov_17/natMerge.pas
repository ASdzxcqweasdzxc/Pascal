(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 13.12.2021
 *)
unit newMerge;

interface
uses obj, sort;

procedure Nat_sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
procedure fill_y(x: arrOfTowns; var y: arrOfTowns; var start: integer; x_left, x_right, y_left, y_right: integer; var j: integer);

implementation
procedure fill_y(x: arrOfTowns; var y: arrOfTowns; var start: integer; x_left, x_right, y_left, y_right: integer; var j: integer);
var
  i: integer;
begin
for i:= y_left to x_left do 
  y[j]:= x[i];
for i:= y_right to x_right do
  y[j]:= x[i]
  
end;
  
{compare procedure}
function compare(a, b: element; var comps: integer): integer;
begin
  if (a.heigth > b.heigth) then compare:= 1;
  inc(comps)
end;
  
procedure Nat_sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  s1, s2, x_left, x_right, y_left, y_right, tmp_val_l, tmp_val_r, start, s, f: integer;
  y: arrOfTowns;

begin
  x_left:= 0;
  x_right:= max_n;
  y_left:= 0;
  y_right:= max_n;
  tmp_val_l:= 0;
  tmp_val_r:= max_n;
  start:= 1;

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
    if (start = 1) then
    begin
      for s1:= y_left to x_left do
        begin
          y[tmp_val_l]:= x[s1]; inc(tmp_val_l)//; writeln('here ', s1, ' ', tmp_val_l-1)
        end;
      if (x_left >= x_right) then break;
      for s2:= y_right to x_right do
      begin
          y[tmp_val_l]:= x[s2]; inc(tmp_val_l)//; writeln('herez ', s1, ' ', tmp_val_l-1)
      end;
     start:= 2
    end 
    else
    begin
      if (x_right > x_left) then begin
      for s1:= y_right downto x_right do
      begin
        y[tmp_val_r]:= x[s1]; dec(tmp_val_r)//; writeln('here ', s1, ' ', tmp_val_r+1)
      end 
      end;
        for s2:= x_left downto y_left do
      begin
        y[tmp_val_r]:= x[s2]; dec(tmp_val_r)//; writeln('heres ', s1, ' ', tmp_val_r+1)
      end;
    start:= 1
    end;




    inc(x_left); y_left:= x_left;
    dec(x_right); y_right:= x_right;
    //for s1:= 0 to max_n do x[s1]:= y[s1];
    //x:= y;
    //writeln('inc l&r ', x_left, ' ', x_right);
    if (mode = 1) then print(x, max_n)

  end;
  writeln('second ', x_left, ' ', x_right, ' ', tmp_val_l, ' ', tmp_val_r);
  //x:=y;
  print(y, max_n);
  //writeln;
  //print(x, max_n)

end;

end.
