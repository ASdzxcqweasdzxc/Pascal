program educated_students;

type
  students = set of 1..30;

var
  all, eng, ger, fra, educated, non_educated: students;
  i, x: integer;

begin
randomize;
repeat  //making 20 eng students
  x:= random(30) + 1;
  if (x in eng) then continue
    else begin
      include(eng, x);
      i:= i + 1;
    end
until (i = 20);

i:= 0;  //reset i
repeat  //making 15 ger students
  x:= random(30) + 1;
  if (x in ger) then continue
  else begin
    include(ger, x);
    i:= i + 1;
  end
until (i = 15);

i:= 0;  //reset i
repeat  // making 10 fra students
  x:= random(30) + 1;
  if (x in fra) then continue
  else begin
    include(fra, x);
    i:= i + 1;
  end
until (i = 10);

write('eng students: ');
for i in eng do  //print eng students
write(i, ' ');
writeln;
write('ger students: ');
for i in ger do  //print ger students
write(i, ' ');
writeln;
write('fra students: ');
for i in fra do  //print fra students
write(i, ' ');
writeln;

write('three language students: ');
educated:= eng * ger * fra;
for i in educated do  //print educated students
write(i, ' ');
writeln;

for i:= 1 to 30 do include(all, i);
write('students knowing no language: ');
non_educated:= all - eng - ger - fra;
for i in non_educated do  //print non educated students
write(i, ' ');

readln;
end.
