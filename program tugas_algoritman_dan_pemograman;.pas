program tugas_algoritman_dan_pemograman;
uses crt;
var
tgb,jenkel,bbi:Real;
nm:string;

begin
clrscr;	

	writeln(' Program Menghitung Berat Badan Ideal Milik Kelompok 10 ');
	writeln;
	writeln('Nama-Nama Anggota Kelompok');
  writeln('1.Dave Adonia Hizkia');
	writeln('2.Septiana');
  writeln('3.Wahyu');
	writeln('4.Vieri dwi maulidin.');
  writeln('5.Adib Al-sunni');
	writeln;
  write('Tinggi Badan Anda:');
	readln(tgb);
  writeln;
 	writeln('Apa Jenis Kelamin Anda?');
	writeln('Masukan 1 Jika Anda Laki-Laki');
  writeln('Masukan 2 Jika Anda Perempuan');
	writeln('TEKAN ANGKA 1 ATAU 2');
  readln(jenkel);
  
  	
  if (jenkel=1) then bbi:=(tgb-100)-(tgb-100)*0.1
  else if (jenkel=2) then bbi:=(tgb-100)-(tgb-100)*0.15
  else bbi:=0;
  writeln('Berat Badan Ideal Anda Adalah:', bbi:4:2,'Kg');
  	
  readkey;

end.