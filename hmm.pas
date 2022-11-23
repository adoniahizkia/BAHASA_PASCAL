program tugas_algoritman_dan_pemograman;
uses crt;
var
tgb,jenkel,bbi,j,lanjut:Real;
nm:string;

begin
  j:=1;
  while (j<2) do
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
    else bbi:=666;
    writeln('Berat Badan Ideal Anda Adalah:', bbi:4:2,'Kg');
    writeln('Apakah Anda Ingin Melajutkan Program Ini?');
    writeln('Masukan Angka 1 Untuk Lanjut Atau Angka 2 Untuk Stop');
    readln(lanjut);
    writeln('Silakan Tekan Enter 1 Kali Lagi Untuk Melanjutkan');
  readkey;
  if(lanjut=1) then j:=j;
  if(lanjut=2) then j:=j+1;



  



  end;
end.