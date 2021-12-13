(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 12.12.2021
 *)
unit files;

interface

uses
  obj;
  
  procedure rFile(var arr: arrOfTowns; n: integer; fName: string);
  procedure print(towns: arrOfTowns; n: integer);

implementation
procedure rFile(var arr: arrOfTowns; n: integer; fName: string);
var
  tf: text;
  i: integer;
begin
  assign(tf, fName);
  reset(tf);
    for i:= 1 to n do
      readln(tf, arr[i].town, arr[i].heigth, arr[i].measure);
    close(tf);
end;
{*********************************************************************************************************}
procedure print(towns: arrOfTowns; n: integer);
var
  i: integer;
begin
  for i:= 0 to n do
    writeln(towns[i].town, towns[i].heigth, towns[i].measure)
end;
  
end.