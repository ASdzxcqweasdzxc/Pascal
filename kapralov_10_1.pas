program simbols;

const v = 'aeiou';

type
  stroka = string[20];

var
  s: stroka;
  k: 0..20;
  i1, i2: integer;

begin
write('Please enter string of any 20 letters: '); readln(s);

for i1:= 1 to 20 do begin
  for i2:= 1 to 5 do begin
    if (s[i1] = v[i2]) then k:= k + 1
  end;
end;
write('Entered string contains ', k, ' entries from check const.');
readln;
end.