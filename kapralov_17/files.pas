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

implementation
procedure rFile(var arr: arrOfTowns; n: integer; fName: string);
var
  t_file: text;
  i: integer;
begin
  assign(t_file, fName);
  reset(t_file);
    for i:= 0 to n do
      readln(t_file, arr[i].town, arr[i].heigth, arr[i].c, arr[i].measure);
    close(t_file);
end;

end.
