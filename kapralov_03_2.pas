program distance;

var
  x1, x2, y1, y2, res: real;

begin
  write('Please enter x1: '); readln(x1);
  write('Please enter y1: '); readln(y1);
  write('Please enter x2: '); readln(x2);
  write('Please enter y2: '); readln(y2);

  res:= sqrt(sqr(x2 - x1) + sqr(y2 - y1));

  write('Distance between dots is: ', res:3:5);


readln;
end.