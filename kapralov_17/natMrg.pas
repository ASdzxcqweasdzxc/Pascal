(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 13.12.2021
 *)
unit natMrg;

interface
uses obj, sort;

  procedure N_Srt(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
  procedure ins_left(var x: arrOfTowns; var y: arrOfTowns; y_left, x_left, x_right, y_right, comps: integer; var tmp_pos: integer);
  procedure ins_right(var x: arrOfTowns; var y: arrOfTowns; y_left, x_left, x_right, y_right, comps: integer; var tmp_pos: integer);
implementation
procedure ins_right(var x: arrOfTowns; var y: arrOfTowns; y_left, x_left, x_right, y_right, comps: integer; var tmp_pos: integer);

begin
  (*if switch = 1 then adding to right and decrease tmp_pos to left*)
  while (x_left >= y_left) or (y_right >= x_right) do
  begin
    (*if right part is ended then fill in whole left*)
    if (y_right < x_right) then
    begin
      y[tmp_pos]:= x[x_left]; dec(tmp_pos); dec(x_left); inc(comps);
      continue
    end;

    (* check if x_left has grown to x_right
     * if so => dec x_right
     * do not let x_right write its variable to y 
     *)
    if (x_left >= x_right) then
    begin
      dec(x_right); continue
    end;
    (*if left part is ended then fill in whole right*)
    if (x_left < y_left) then
    begin
      y[tmp_pos]:= x[y_right]; dec(tmp_pos); dec(y_right);
      continue
    end;

    if (compare(x[x_left], x[y_right], comps) = 1) then
    begin
      y[tmp_pos]:= x[x_left]; dec(tmp_pos); dec(x_left)
    end else
    begin
      y[tmp_pos]:= x[y_right]; dec(tmp_pos); dec(y_right)
    end
  end
end;

procedure ins_left(var x: arrOfTowns; var y: arrOfTowns; y_left, x_left, x_right, y_right, comps: integer; var tmp_pos: integer);

begin
  (*if switch = 0 then adding to left and increase tmp_pos to right*)
  while (y_left <= x_left) or (x_right <= y_right) do
  begin
    (*if right part is ended then fill in whole left*)
    if (x_right > y_right) then
    begin
      y[tmp_pos]:= x[y_left]; inc(tmp_pos); inc(y_left);
      continue
    end;

    (* check if x_left has grown to x_right
     * if so => inc x_right
     * do not let x_right write its variable to y 
     *)
    if (x_left >= x_right) then
      begin
        inc(x_right); continue
      end;
    (*if left part is ended then fill in whole right*)
      if (y_left > x_left) then
      begin
        y[tmp_pos]:= x[x_right]; inc(tmp_pos); inc(x_right);
        continue 
      end;
    

    if (compare(x[y_left], x[x_right], comps) = 1) then
      begin
        y[tmp_pos]:= x[x_right]; inc(tmp_pos); inc(x_right)
      end else
      begin
        y[tmp_pos]:= x[y_left]; inc(tmp_pos); inc(y_left)
      end
      //end;
  end;
    
end;
{compare procedure}
function compare(a, b: element; var comps: integer): integer;
begin
  if (a.heigth > b.heigth) then compare:= 1;
  inc(comps)
end;

procedure N_Srt(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  x_left, x_right, y_left, y_right, tmp_l, tmp_r, switch, counter: integer;
  y: arrOfTowns;

begin
  comps := 0;
  changes := 0;
  counter:= 0;
 
  //while (x_left < max_n) do begin 
  switch := 0;
  x_left := 0;
  x_right := max_n;
  y_left := 0;
  y_right := max_n;
  tmp_l := 0;
  tmp_r := max_n;


//while (counter <= 1) do begin
  //counter := 0;
  while (x_left < x_right) do
  begin
    (*getting left cut point value*)
    while (compare(x[x_left + 1], x[x_left], comps) = 1) do
    begin
      inc(x_left);
      inc(counter)
    end;
    (*getting right cut point value*)
    if (x_left < x_right) then
      while (compare(x[x_right], x[x_right - 1], comps) = 1) do
      begin
        dec(x_right);
        dec(counter)
      end;
    writeln(y_left, 'to', x_left, ' ', x_right, 'to', y_right, ' switch=', switch, ' tmp_pos', tmp_l, tmp_r);
    (*collect values in Y ************************************************************
     * y_left - left start for x; x_left - left end for x
     * x_right - right start for x; y_right - right end for x
     *)
    if (switch = 0) then
      ins_left(x, y, y_left, x_left, x_right, y_right, comps, tmp_l)
    else
      ins_right(x, y, y_left, x_left, x_right, y_right, comps, tmp_r);

    inc(x_left);
    dec(x_right);
    y_left := x_left;
    y_right := x_right;
    if (switch = 0) then switch := 1 else switch := 0;
    //writeln('inc l&r ', x_left, ' ', x_right);
    if (mode = 1) then print(x, max_n);
  end;
  writeln('second ', x_left, ' ', x_right, ' ', tmp_l);
  x:= y;
  //print(y, max_n);
  //writeln;
  //print(x, max_n)
  counter := 0;
    writeln(counter);
//end
end;


end.