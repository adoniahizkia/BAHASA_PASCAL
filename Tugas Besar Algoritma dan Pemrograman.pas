program Tugas_Besar_Matkul_Algoritman_Dan_Pemrograman;
var 
x,y,hasil,j,lanjut:real;
jawab:char;
begin

j:=1;
while (j<2) do
  begin
    writeln(' =====Program Kalkulator Sederhana Milik Kelompok 10===== ');
    writeln;
    writeln('Nama-Nama Anggota Kelompok');
    writeln('1.Dave Adonia Hizkia');
    writeln('2.Septiana');
    writeln('3.Wahyu');
    writeln('4.Vieri Dwi Maulidin.');
    writeln('5.Adib Al-sunni');
    writeln;
    write ('Masukan Angka Ke-1:');readln (x);
    write ('Pilih Operator: (+)/(-)/(*)/(/):');readln (jawab);
    write ('Masukan Angka Ke-2:');readln (y);
    case (jawab) of
      '+' :
          begin
          hasil:= x+y;
          end;
      '-' :
          begin
          hasil:= x-y;
          end;
      '*' :
          begin
          hasil:= x*y;
          end;
      '/' :
          begin
          hasil:= x/y;
          end;
    end;
    
    writeln ('Hasilnya: ',(hasil):5:2);
    writeln;
    writeln('Apakah Anda Ingin Memulai Program Ini Dari Awal?');
    writeln('Masukan Angka 1 Untuk Memulai Atau Angka 2 Untuk Stop');
    readln(lanjut);
           
    if(lanjut=1) then j:=j
    else j:=j+1;
  end;
end.