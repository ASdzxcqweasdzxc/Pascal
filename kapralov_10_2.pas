program sorting_words;
//cut string into words procedure
procedure cut(s: string; var arr: array of string; var n: integer);
  var
    i: integer;
  begin
    insert(',', s, pos('.', s));
    for i:= 1 to length(s) do if (s[i] = ',') then n:= n + 1;
    
    for i:= 1 to n do begin
      arr[i - 1]:= copy(s, 1, pos(',', s) - 1);
      delete(s, 1, pos(',', s))
    end
  end; //end of procedure

type
  slovo = string[60];

var
  s: slovo;
  k: string[5] = '';
  arr: array[1..10] of string;
  i, n, x: integer;

begin
i:= 0;
n:= 0;
write('Please enter 1 to 10 words of 1 to 5 letters, separeted by commas, ends with dot: '); readln(s);

cut(s, arr, n);

write('Got words: ');
for i:= 1 to n do write(arr[i], ' ');
writeln;
writeln;

writeln('a) Words written backwards:');
for i:= n downto 1 do write(arr[i], ' ');
writeln;

for x:= 0 to n - 1 do begin //make additional cicle for sorting
  for i:= 1 to n - 1 - x do begin //main sorting cicle
      if (arr[i] > arr[i + 1]) then begin
        k:= arr[i];
        arr[i]:= arr[i + 1];
        arr[i + 1]:= k;
      end;
  end;
end;

writeln;
writeln('b) Words written in alphabetical order:');
for i:=1 to n do write(arr[i], ' ');

readln;
end.
