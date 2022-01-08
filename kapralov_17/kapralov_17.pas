(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 06.12.2021
 *)
program kapralov_17;
uses obj, files, sort;

var
  towns, tmpTowns: arrOfTowns;
  result: arrOfRes;
  name: string;
  n, demo, seq, comps, changes: integer;

begin
  (*
   * writeln('First sorting method: ', abs((711 + 546) mod 5) + 1); //= 3
   * writeln('Second sorting method: ', abs((711 + 212) mod 4) + 6); //= 9
   * writeln('Working data: ', abs((711 + 123) mod 11) + 1); //= 10
   *)

 (*attributes section****************************************************************)
  n:= 10 - 1;   (*array 0..99 *)
  seq:= 1;     (*number of file to read*)
  name:= '';   (*just initialization*)
  demo:= 0;    (*demo mode*)
  comps:= 0;   (*comparisons counter*)
  changes:= 0; (*changes counter*)
 (*end of attributes section*********************************************************)

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

  tmpTowns:= towns;
  bubble_sort(tmpTowns, comps, changes, n, demo);
  //if (demo = 0) then print(tmpTowns, n);
  writeln('Bubble sort.  Results for ', name, ': n=', n+1, ', comparisons ', comps, ', changes ', changes, '. Total of ', comps + changes, ' iterations.');

  tmpTowns:= towns;
  N_Srt(tmpTowns, comps, changes, n, demo);
  writeln('Natural sort. Results for ', name, ': n=', n+1, ', comparisons ', comps, ', changes ', changes, '. Total of ', comps + changes, ' iterations.');
  writeln;

readln
end.
