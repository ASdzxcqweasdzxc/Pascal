program words;

type
  slovo = string[60];

var
  s: slovo;
  k: string[5];
  arr, sort: array[1..10] of string;
  i, n, x, y: integer;

begin
i:= 0;
n:= 0;
write('Please enter 1 to 10 words of 1 to 5 letters, separeted by commas, ends with dot: '); readln(s);

for i:= 1 to length(s) do begin  //split whole string by words
  if (n = 10) then break;  //leave cicle if n > 10
  if (s[i] = '.') then begin  //making last word
    n:= n + 1;
    arr[n]:= k;
    break
    end
  else begin
    if (s[i] = ',') then begin  //adding word to next array position
      n:= n + 1;
      arr[n]:= k;
      k:= '';
      continue
    end
    else
    k:= k + s[i]  //making word for array
  end
end;

write('Got words: ');
for i:= 1 to n do begin
write(arr[i], ', ');
end;
writeln;
writeln;

writeln('a) Words written backwards:');
for i:= n downto 1 do begin
  write(arr[i], ' ')
end;
writeln;

x:= 1;  //set x
repeat  //make additional cicle for sorting
for i:= 1 to n - 1 do begin //main sorting cicle
    if (arr[i] > arr[i + 1]) then begin
      k:= arr[i];
      arr[i]:= arr[i + 1];
      arr[i + 1]:= k;
    end;
end;
if (arr[x] > arr[x + 1]) then x:= 1
else
 x:= x + 1;
until (arr[x] < arr[x + 1]);

writeln;
writeln('b) Words written in alphabetical order:');
for i:=1 to n do begin
  write(arr[i], ' ')
end;

readln;
end.