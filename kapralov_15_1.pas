(*
 * Project: kapralov_15_1
 * User: alexkapralov
 * Date: 05.12.2021
 *)
//unit kapralov_15_1;
program kapralov_15_1;

type
  pelement = ^sp;
  sp = record
    ivalue: integer;
    next: pelement;
  end;

  {sort for second element}
procedure sortIf2(var list: pelement; var item: pelement);

begin
  if (item^.ivalue < list^.ivalue) then
  begin
    item^.next:= list;
    list:= item;
  end else begin
    list^.next:= item;
  end
end;

  {main sort}
procedure sort(var list: pelement; var item: pelement);
  var
  pi: pelement;

  begin
    pi:= nil;
    if (list^.next = nil) then sortIf2(list, item) else begin
      if (item^.ivalue < list^.ivalue) then
      begin
        item^.next:= list;
        list:= item;
        exit
      end;
    pi:= list;
    while (pi^.next <> nil) do

    begin
      if (item^.ivalue < pi^.next^.ivalue) then
      begin
        item^.next:= pi^.next;
        pi^.next:= item;
        exit
      end;
      pi:= pi^.next;  //writeln('list ', pi^.ivalue);
    end;
    pi^.next:= item
    end
  end;

  {print list}
procedure print(list: pelement);
  var
    new_item: pelement;

  begin
    new_item:= nil;
    new_item:= list;
    while (new_item^.next <> nil) do
    begin
      write(new_item^.ivalue, ' ');
      new_item:= new_item^.next
    end; writeln(new_item^.ivalue)
  end;


var
  L1, L2, new_item, x: pelement;
  i, rnd, c: integer;

begin
  Randomize();
  i:= 5;
  rnd:= 11;

  {declaring L1}
//new(L1);
  //L1^.next:= nil;
  //L1^.ivalue:=0;
  for i:= 1 to i do begin
    new(new_item); inc(c);
    new_item^.next:= nil;
    new_item^.ivalue:= Random(rnd);
    if (i = 1) then L1:= new_item else
    begin
    sort(L1, new_item);
    //new_item:= nil;
    end
  end;

  {declaring L2}
//new(L2);
  //L2^.next:= nil;
  //L2^.ivalue:=0;

  for i:= 1 to i do begin
    new(new_item); inc(c);
    new_item^.next:= nil;
    new_item^.ivalue:= Random(rnd);
    if (i = 1) then L2:= new_item else
    begin
    sort(L2, new_item);
    //new_item:= nil; Dispose(new_item)
    end
  end;

  {print new lists}
  write('L1: ');
  print(L1);
  write('L2: ');
  print(L2);

  {sorting lists}
  //x:= nil;
  x:=L2;
  while (x^.next <> nil) do
  begin
    //new(new_item); inc(c);
    //new_item^.next:= nil;
    //new_item^.ivalue:= x^.ivalue;
    sort(L1, new_item);
    //new_item:= nil; Dispose(new_item); dec(c)
    x:= x^.next;
    Dispose(L2); L2:= x

  end;
  Dispose(x); x:= nil; dec(c);

  write('L1: ');
  print(L1);

  {delete L1}
  x:= L1;
  while (x^.next <> nil) do
  begin
    x:= x^.next;
    Dispose(L1); L1:= x;
  end;
  
  Dispose(L1); L1:= nil;
  Dispose(L2); L2:= nil;
  Dispose(x); x:= nil;

readln
end.
