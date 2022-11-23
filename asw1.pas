program Menghitung_BMI;
    uses crt;
    type
    TMember = record

 
        nama,keterangan : string[20];
        bb :integer;
        bbi,tb : real;
    end;
    var
    member : array [0..10] of TMember;
    i,r,tr,hr,menuinput: integer;
   
    const
    title = '========================== APLIKASI CEK BERAT BADAN IDEAL =============================';
    line  = '=======================================================================================';
    line3 = '---------------------------------------------------------------------------------------';
   
    procedure cetak(x :integer; y :integer; text:string);
    begin
        gotoxy(x,y); writeln(text);
    end;
   
    procedure hint(x:integer; y:integer; s: string);
    begin
        ClrEol;gotoxy(x,y);ClrEol;TextColor(15);TextBackground(4); writeln(s);TextBackground(1);TextColor(15);
    end;
   
    procedure hitungbmi(x:integer);
    begin
        clrscr;
        r  := 8;
        tr := 6;
        hr := 9;
        writeln(line);writeln(title);writeln(line);
        writeln;writeln(line3);
       
        cetak(2,tr,'Nama');
        cetak(22,tr,'| Berat Badan');
        cetak(35,tr,'| Tinggi Badan');
        cetak(50,tr,'| Body Mass Index');
        cetak(70,tr,'| Keterangan');
        writeln(line3);
        for i:= 1 to x do
        begin
            if i > 1 then
                hint(   2,hr,'Isi nama sesuai dengan nama kembali') else
                hint(2,hr,'Isi sesuai dengan nama');
        gotoxy(2,r);readln(member[i].nama);gotoxy(2,r);writeln(member[i].nama); 
        hint(25,hr,'Isi sesuai dengan berat badan (Angka Saja & dalam KG)');

 

        gotoxy(25,r);readln(member[i].bb);gotoxy(25,r);writeln(member[i].bb,' kg');
        hint(38,hr,'Isi sesuai dengan tinggi badan (Angka Saja & dalam CM)');
        gotoxy(38,r);readln(member[i].tb);gotoxy(38,r);writeln(member[i].tb:0:0,' cm');
        {member[i].tb := member[i].tb / 100;}
        member[i].bbi := (member[i].tb - 110) + (member[i].bb * 10 / 100);
        {member[i].bbi := member[i].bbi / member[i].tb;}
      
        if (member[i].bbi < 18) then
            member[i].keterangan := 'Underweight'
    else if (member[i].bbi >= 30) then
            member[i].keterangan := 'Obesitas'
    else if (member[i].bbi > 25) then
            member[i].keterangan := 'Overweight'
    else
            member[i].keterangan := 'Normal';
            gotoxy(53,r);write(member[i].bbi:0:0);
            gotoxy(73,r);writeln(member[i].keterangan);
            r  := r+1;
            hr := hr+1;
        end;
        ClrEol;writeln(line);
        gotoxy(3,4);ClrEol;
        hint(3,20,'Tekan Enter Jika ingin kembali ke menu utama');
        readln;
       
    end;
    
   
   
    begin
        TextColor(15);
        TextBackground(1);
      write('   Jumlah data yang ingin di cek : ');readln(menuinput);
      hitungbmi(menuinput);
end.
