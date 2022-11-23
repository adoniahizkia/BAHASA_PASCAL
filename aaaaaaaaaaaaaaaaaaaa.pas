program menghitung_gaji_karyawan;
var

   gol, jkerja, jlembur, gapok, glembur, tun_pengabdian : longint;
   pajakgapok, pajaklembur, totpajak,gajibersih : real;
   
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
    readln;
    readln;
end.