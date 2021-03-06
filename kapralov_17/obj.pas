(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 12.12.2021
 *)
unit obj;

interface
type
  element = record
    town: string[15];
    heigth: integer;
    c: char;
    measure: string[1];
  end;
  arrOfTowns = array [0..99] of element;
    
  res = record
    method: integer;
    comps: integer;
    changes: integer;
  end;
  arrOfRes = array [0..4] of res;

implementation

end.