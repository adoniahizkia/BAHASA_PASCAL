program hadeh;
var
lanjut:integer;
	
begin
	write('Tekan 1 Untuk Lanjut Atau 2 Untuk Stop');
	readln(lanjut);
	case(lanjut) of
		1 : write('lanjut');
		2 : write('stop');
	end;

	readln;
end.