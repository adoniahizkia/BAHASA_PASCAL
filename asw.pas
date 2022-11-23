program menghitung_nilai_akhir;
uses crt;
var
tugas,uts,uas,na:real;
ket:string;
grade:char;

begin
clrscr;

  tugas:=80;
  uts   :=75;
  uas  :=100;

  writeln(' Program Menghitung Nilai Akhir ');
  writeln;
  writeln(' Nilai Tugas : ',tugas:0:0);
  writeln(' Nilai UTS   : ',uts:0:0);
  writeln(' Nilai UAS   : ',uas:0:0);

  na:=(tugas*0.2)+(uts*0.3)+(uas*0.5);

       if (na>=80) then grade:='A'
  else if (na>=70) then grade:='B'
  else if (na>=60) then grade:='C'
  else if (na>=50) then grade:='D'
  else grade:='E';
  
     if (na>=50) then ket:='LULUS'
  else ket:='TIDAK LULUS';

  writeln(' Nilai Akhir   : ',na:4:2);
  writeln(' Keterangan  : ',ket);
  writeln(' Grade         : ',grade);
 readln;
end.