program days_in_month;

type
  month = (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);
 // m = Array [1..12] of month;

var
  d: 28..31;
  m: month;
  i, n: integer;

begin
  write('choose a month (1-12): '); readln(i);
  //writeln;

(*  if ((i < 1) or (i > 12)) then
    begin
      writeln('Not a valid number of month');
      readln;
      exit;
    end
  else *)
    begin
      case i of
      1: m:= m.jan;
      2: m:= m.feb;
      3: m:= m.mar;
      4: m:= m.apr;
      5: m:= m.may;
      6: m:= m.jun;
      7: m:= m.jul;
      8: m:= m.aug;
      9: m:= m.sep;
      10: m:= m.oct;
      11: m:= m.nov;
      12: m:= m.dec;
      else
      write('Such number of month does not exist!');
      readln;
      exit;
      end;
      n:= ord(m) + 1;
      case m of
      jan, mar, may, jul, aug, oct, dec: d:=31;
      feb: d:=28;
      apr, jun, sep, nov: d:=30;
      end;

      case d of
      28, 30: write('‚ ¬¥áïæ¥ ', m, ' - ', d, ' ¤­¥©');
      31: write('‚ ¬¥áïæ¥ ', m, ' - ', d, ' ¤¥­ì');
      end;
    end;

readln;
end.
