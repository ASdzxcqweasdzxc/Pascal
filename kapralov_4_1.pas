program backwardNumber;
// ������ ���� ���짮��⥫� ����� 楫�� �᫮. �᫨ �᫮ ��姭�筮� (������⥫쭮� ��� ����⥫쭮�),
// � �뢮����� ��⠢���饥 ��� ���� � �⮫��� �� ����� � � ���⭮� ���浪�.
// �᫨ ����� ���������� ���짮��⥫�� 楫��� �᫠ �⫨筠 �� ��� ������,
// � �뢮����� ᮮ�饭��: "��᫮ �� ��姭�筮�!"
var
  res, x1, x2, x3: Single;
  n: Integer;
  w: String;

begin
  write('������ 楫�� ��姭�筮� �᫮: '); readln(n);
  if (n < 0) then n:= n * -1; // �८�ࠧ�� � ������⥫쭮�, �᫨ �᫮ ����⥫쭮�
  begin
   str(n, w); //�८�ࠧ�� �᫮ � ⥪��, �⮡� ������� ��� �����
   writeln;
   if (length(w) <> 3) then write('��᫮ �� ��姭�筮�!') else

   begin //�뢮� ��� �� �����, � �⮫���
   res:= n;
   x3:= frac(res / 10) * 10;
   write('����� ���: ', x3:1:0); writeln;
   x2:= frac(int(res / 10) / 10) * 10;
   write('���� ���: ', x2:1:0); writeln;
   x1:= int(res / 100);
   write('��ࢠ� ���: ', x1:1:0);
   end;
  end;
  readln;

end.
