(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 06.12.2021
 *)
program kapralov_17;
uses obj, files, sort, natMerge, newMerge, natMrg;

var
  towns: arrOfTowns;
  result: arrOfRes;
  name: string;
  n, demo, seq, comps, changes: integer;
  
begin
  (*
   * writeln('First sorting method: ', abs((711 + 546) mod 5) + 1); //= 3
   * writeln('Second sorting method: ', abs((711 + 212) mod 4) + 6); //= 9
   * writeln('Working data: ', abs((711 + 123) mod 11) + 1); //= 10
   *)
  n:= 5 - 1;
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
  N_Srt(towns, comps, changes, n, demo);
  //Nat_sort(towns, comps, changes, n, demo);
  writeln;
  print(towns, n);
  N_Srt(towns, comps, changes, n, demo);
  writeln;
  print(towns, n);
  N_Srt(towns, comps, changes, n, demo);
  writeln;
  print(towns, n); 
ReadLn
end.  