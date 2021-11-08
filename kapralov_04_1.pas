program backwardNumber;

var
  res, x1, x2, x3: Single;
  n: Integer;
  w: String;

begin
  write('Please enter 3 digits integer: '); readln(n);
  if (n < 0) then n:= n * -1; //makes integer positive
  begin
   str(n, w); //gets string to measure its length
   writeln;
   if (length(w) <> 3) then write('Integer not 3 digits!') else

   begin //output digits in column
   res:= n;
   x3:= frac(res / 10) * 10;
   write('Third integer: ', x3:1:0); writeln;
   x2:= frac(int(res / 10) / 10) * 10;
   write('Second integer: ', x2:1:0); writeln;
   x1:= int(res / 100);
   write('First integer: ', x1:1:0);
   end;
  end;

readln;
end.
