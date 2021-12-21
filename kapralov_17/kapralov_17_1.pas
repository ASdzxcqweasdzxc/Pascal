program kapralov_17;
uses obj, files, sort, nm, natMerge;


var
  towns: arrOfTowns;
  result: arrOfRes;
  name: string;
  n, demo, seq, comps, changes: integer;

(*compare procedure ********************************************************************)
function compare(a, b: element; var comps: integer): integer;
begin
  if (a.heigth > b.heigth) then compare:= 1;
  inc(comps)
end;


procedure ins(var x: arrOfTowns; x_left, y_left, y_right, x_right: integer; var y: arrOfTowns; var tmp_pos: integer);
var
  i_l, i_r: integer;

begin
i_l:= x_left;
i_r:= y_right;
  while (i_l <= y_left) and (i_r <= x_right) do
  begin
    if (i_l > y_left) then
    begin
      y[tmp_pos]:= x[i_r]; inc(i_r); inc(tmp_pos); inc(changes); continue
    end;
    if (i_r > x_right) then
    begin
      y[tmp_pos]:= x[i_l]; inc(i_l); inc(tmp_pos); inc(changes); continue
    end;
    if (compare(x[i_l], x[i_r], comps) = 1) then
    begin
      y[tmp_pos]:= x[i_r]; inc(i_r); inc(tmp_pos); inc(changes)
    end else
    begin
      y[tmp_pos]:= x[i_l]; inc(i_l); inc(tmp_pos); inc(changes)
    end
  end
end;

procedure N_sort(var x: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
var
  s1, s2, x_left, x_right, y_left, y_right, tmp_val_l, tmp_val_r, start, s, f: integer;
  y: arrOfTowns;
  switch: char;

begin
  x_left:= 0;
  x_right:= max_n;
  y_left:= 0;
  y_right:= max_n;
  tmp_val_l:= 0;
  tmp_val_r:= max_n;
  start:= 1;
  switch:= 'l';

  while (x_left < x_right) do
  begin
    for s1:= x_left to max_n do
    begin
      if (compare(x[s1 + 1], x[s1], comps) = 1) then
      begin
        inc(x_left);
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
    writeln(s1, ' ',y_left, 'to', x_left, ' ', s2, ' ', x_right, 'to', y_right);

    (*collect values in Y ************************************************************
     * y_left - left start for x; x_left - left end for x
     * x_right - right start for x; y_right - right end for x
     *)
    (*if (start = 1) then
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
    end; *)

    if (switch = 'l') then start:= tmp_val_l else start:= tmp_val_r - (x_left - y_left) - (y_right - x_right);
    ins(x, y_left, x_left, x_right, y_right, y, start);
    if (switch = 'l') then
    begin
    tmp_val_l:= tmp_val_l + start; switch:= 'r' end
    else begin
    tmp_val_r:= tmp_val_r - start; switch:= 'l' end;



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



begin
  (*
   * writeln('First sorting method: ', abs((711 + 546) mod 5) + 1); //= 3
   * writeln('Second sorting method: ', abs((711 + 212) mod 4) + 6); //= 9
   * writeln('Working data: ', abs((711 + 123) mod 11) + 1); //= 10
   *)
  n:= 10 - 1;
  seq:= 1;
  name:= '';
  demo:= 0;
  comps:= 0;
  changes:= 0;
  //towns:= ;

  case seq of
    1: name:= ('townsSeq1.txt');
    2: name:= ('townsSeq2.txt');
    3: name:= ('townsSeq3.txt');
    4: name:= ('townsSeq4.txt');
    5: name:= ('townsSeq5.txt');
  end;

  //procedure rFile(var arr: arrOfTowns; n, demo: integer; fName: string);
  rFile(towns, n, name);
  //print(towns, n);
  //writeln;

  //procedure bubble_sort(var arr: arrOfTowns; var count: integer; max_n, moder: integer);
  //bubble_sort(towns, comps, changes, n, demo);
  //procedure fillRes(var arr: arrOfRes; i: integer; var comps: integer; var changes: integer);
  fillRes(result, seq, comps, changes);
  if (demo = 0) then print(towns, n);
  writeln('Results for ', name, ': comparisons ',result[1].comps, ', changes ', result[1].changes, '. Total of ', result[1].comps + result[1].changes, ' iterations.');

  //Natural_Merging_Sort(var arr: arrOfTowns; var comps: integer; var changes: integer; max_n, mode: integer);
  //Natural_Merging_Sort(towns, comps, changes, n, demo);
  N_sort(towns, comps, changes, n, demo);
  //print(towns, n);
ReadLn
end.
