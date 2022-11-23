program Milik_SIGI;
var
no:integer;
tgb,jenkel,bbi,j,lanjut,tugas,uts,uas,na,k,lanjut1:Real;
ket:string;  
grade:char;
x,y,hasil:real;
jawab:char;
gol, jkerja, jlembur, gapok, glembur, tun_pengabdian : longint;
pajakgapok, pajaklembur, totpajak,gajibersih : real;
suhu : integer;
lagi : char;
f : real;
r,klv : real;
begin
  k:=1;
  while (k<2) do
  begin
  writeln(' =====Program Milik SIGI===== ');
  writeln;
  writeln('Pilihan-Pilihan Program:');
  writeln('1.Menghitung Berat Badan Ideal.');
  writeln('2.Menghitung Nilai Akhir.');
  writeln('3.Melajutkan Kalkulator Sederhana.');
  writeln('4.Menghitung Gaji Karyawan Perusahaan Kita. ');
  writeln('5.Mengkonversi Suhu Dari Celcius Ke Kelvin, Fahreinheit, Reamur. ');
  write('Silakan Masukan No Yang Anda Pilih:');
  readln(no);
  case(no) of
    1:begin
        j:=1;
        while (j<2) do
        begin
          
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
         
          if(lanjut=1) then j:=j
          else j:=j+1;


        end;
      end;
    2 : begin
          j:=1;
          while (j<2) do
          begin
            
           write('Masukan Nilai tugas Anda:');
           readln(tugas);
           write('Masukan Nilai UTS Anda:');
           readln(uts);
           write('Masukan Nilai UAS Anda:');
           readln(uas);

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
           
           
           writeln('Apakah Anda Ingin Melajutkan Program Ini?');
           writeln('Masukan Angka 1 Untuk Lanjut Atau Angka 2 Untuk Stop');
           readln(lanjut);
           
           if(lanjut=1) then j:=j
           else j:=j+1;

          end;
      end;
    3:begin
        j:=1;
        while (j<2) do
        begin
          write ('masukan angka ke-1:');readln (x);
          write ('pilih operator: (+)/(-)/(*)/(/):');readln (jawab);
          write ('masukan angka ke-2:');readln (y);
          if ( jawab= '+') then
          begin
            hasil:= x+y
          end;
          if ( jawab = '-') then
          begin
            hasil:= x-y
          end;
          if ( jawab = '*') then
          begin
            hasil:= x*y
          end;
          if (jawab='/') then
          begin
            hasil:= x/y
          end;
          writeln ('Hasilnya: ',(hasil):5:2);
        
          writeln('Apakah Anda Ingin Melajutkan Program Ini?');
          writeln('Masukan Angka 1 Untuk Lanjut Atau Angka 2 Untuk Stop');
          readln(lanjut);
          if(lanjut=1) then j:=j
          else j:=j+1;

        end;
        
      end;
      4 : begin
          j:=1;
          while (j<2) do
          begin

  
           writeln('Program Menghitung Gaji Karyawan Perusahaan Kita ');
           writeln('Pilihan-Pilihan Golongan');
           writeln('Golongan 1');
           writeln('Gaji Pokok=1000000');
           writeln('Tunjangan=250000');
           writeln('Golongan 2');
           writeln('Gaji Pokok=2000000');
           writeln('Tunjangan=300000');
           writeln('Golongan 3');
           writeln('Gaji Pokok=3000000');
           writeln('Tunjangan=350000');
           writeln('Golongan 4');
           writeln('Gaji Pokok=4000000');
           writeln('Tunjangan=400000');

          

           write('Masukan golongan (1-4): ');read(gol);
           write('Masukan jam kerja (Dalam 1 Bulan) : ');read(jkerja);

           case (gol) of
              1 :
                  begin
                  gapok:=1000000;
                  tun_pengabdian:=250000;
                  end;
              2 :
                  begin
                  gapok:=2000000;
                  tun_pengabdian:=300000;
                  end;
              3 :
                  begin
                  gapok:=3000000;
                  tun_pengabdian:=350000;
                  end;
              4 :
                  begin
                  gapok:=4000000;
                  tun_pengabdian:=400000;
                  end;
           end;
           
            if (jkerja>173) then
                  begin
                  jlembur:=jkerja-173;
                  end
            else
                  begin
                  jlembur:=0;
                  end;
                  
            glembur:=jlembur*20000;
            pajakgapok:=0.05*gapok;
            pajaklembur:=0.05*glembur;
            totpajak:=pajakgapok+pajaklembur;
            gajibersih:=((gapok+tun_pengabdian+glembur)-totpajak);
            
            writeln('Gaji Pokok           : ',gapok,' Rupiah');
            writeln('Gaji Lembur          : ',glembur,' Rupiah');
            writeln('Pajak Gaji Pokok     : ',pajakgapok:4:6,' Rupiah');
            writeln('Pajak Lembur         : ',pajaklembur:4:6,' Rupiah');
            writeln('Total Pajak          : ',totpajak:4:6,' Rupiah');
            writeln('Tunjangan Pengabdian : ',tun_pengabdian,' Rupiah');
            writeln('Gaji Diterima        : ',gajibersih:4:6,' Rupiah');
            writeln('Apakah Anda Ingin Melajutkan Program Ini?');
            writeln('Masukan Angka 1 Untuk Lanjut Atau Angka 2 Untuk Stop');
            readln(lanjut);
            if(lanjut=1) then j:=j
            else j:=j+1;
        end;
      end;
      5:begin
          repeat
           
            writeln('   _______________________________________ ');
             
            writeln('         KONVERSI SUHU DARI CELCIUS       ');
             
            writeln('   _______________________________________ ');
             
            writeln;
             
            write('Silahkan Ketik Angka Suhu Derajat Celcius : ');
            readln(suhu);
            writeln;
            f := 1.8 * suhu + 32;
            writeln('Suhu dalam Fahreinheit = ',f:4:2);
            r := 0.8 * suhu + 32;
            writeln('Suhu Dalam Reamur = ',r:4:2);
            klv := suhu + 273;
            writeln('Suhu Dalam Kelvin = ',klv:4:2);
            writeln;
            write('Tekan Y Untuk Menghitung Suhu 1 Kali Lagi atau T Untuk Keluar = ');
            readln(lagi);
            writeln;
          until UPCASE(lagi) <> 'Y';
        end;

    end;  
    writeln('Apakah Anda Ingin Memulai Program Ini Dari Awal?');
    writeln('Masukan Angka 1 Untuk Lanjut Atau Angka 2 Untuk Stop');
    readln(lanjut1);
  
    if(lanjut1=1) then k:=k
    else k:=k+1;  
  end;
  
end.