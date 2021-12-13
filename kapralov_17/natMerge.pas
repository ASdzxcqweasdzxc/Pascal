(*
 * Project: kapralov_17
 * User: alexkapralov
 * Date: 13.12.2021
 *)
unit natMerge;

interface
uses obj;

implementation
  procedure Natural_Merging_Sort(arr, ); 
begin
void Natural_Merging_Sort (char *name){
  int s1, s2, a1, a2, mark;
  FILE *f, *f1, *f2;
  s1 = s2 = 1;
  while ( s1 > 0 && s2 > 0 ){
    mark = 1;
    s1 = 0;
    s2 = 0;
    f = fopen(name,"r");
    f1 = fopen("nmsort_1","w");
    f2 = fopen("nmsort_2","w");
    fscanf(f,"%d",&a1);
    if ( !feof(f) ) {
      fprintf(f1,"%d ",a1);
    }
if ( !feof(f) ) fscanf(f,"%d",&a2);
while ( !feof(f) ){
      if ( a2 < a1 ) {
        switch (mark) {
          case 1:{fprintf(f1,"' "); mark = 2; s1++; break;}
case 2:{fprintf(f2,"' "); mark = 1; s2++; break;}
}
}
if ( mark == 1 ) { fprintf(f1,"%d ",a2); s1++; }
else { fprintf(f2,"%d ",a2); s2++;}
a1 = a2;
fscanf(f,"%d",&a2);
}
if ( s2 > 0 && mark == 2 ) { fprintf(f2,"'");}
if ( s1 > 0 && mark == 1 ) { fprintf(f1,"'");}
fclose(f2);
fclose(f1);
fclose(f);

cout << endl;
Print_File(name);
Print_File("nmsort_1");
Print_File("nmsort_2");
cout << endl;

f = fopen(name,"w");
f1 = fopen("nmsort_1","r");
f2 = fopen("nmsort_2","r");
if ( !feof(f1) ) fscanf(f1,"%d",&a1);
if ( !feof(f2) ) fscanf(f2,"%d",&a2);
bool file1, file2;
while ( !feof(f1) && !feof(f2) ){
      file1 = file2 = false;
      while ( !file1 && !file2 ) {
        if ( a1 <= a2 ) {
          fprintf(f,"%d ",a1);
          file1 = End_Range(f1);
          fscanf(f1,"%d",&a1);
        }
else {
          fprintf(f,"%d ",a2);
          file2 = End_Range(f2);
          fscanf(f2,"%d",&a2);
        }
}
while ( !file1 ) {
        fprintf(f,"%d ",a1);
        file1 = End_Range(f1);
        fscanf(f1,"%d",&a1);
      }
while ( !file2 ) {
        fprintf(f,"%d ",a2);
        file2 = End_Range(f2);
        fscanf(f2,"%d",&a2);
      }
}
file1 = file2 = false;
while ( !file1 && !feof(f1) ) {
      fprintf(f,"%d ",a1);
      file1 = End_Range(f1);
      fscanf(f1,"%d",&a1);
    }
while ( !file2 && !feof(f2) ) {
      fprintf(f,"%d ",a2);
      file2 = End_Range(f2);
      fscanf(f2,"%d",&a2);
    }
fclose(f2);
fclose(f1);
fclose(f);
}
remove("nmsort_1");
remove("nmsort_2");
}
//определение конца блока
bool End_Range (FILE * f){
  int tmp;
  tmp = fgetc(f);
  tmp = fgetc(f);
  if (tmp != '\'') fseek(f,-2,1);
  else fseek(f,1,1);
  return tmp == '\'' ? true : false;
}
end;

end.