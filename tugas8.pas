program gaji_karyawan;
uses crt;
var
  golongan : char;
  jam : integer;
  gaji_pokok, lembur, bonus, total : longint;
begin
clrscr;
  write('masukkan golongan (a/b/c) : ');
  readln(golongan);
  write('masukkan total jam kerja  : ');
  readln(jam);

  golongan := upcase(golongan);
  gaji_pokok := 0;
  lembur := 0;
  bonus := 0;

  case golongan of
    'A' : gaji_pokok := 1500000;
    'B' : gaji_pokok := 2000000;
    'C' : gaji_pokok := 2500000;
  else
    writeln('golongan tidak valid!');
  end;

  if gaji_pokok > 0 then
  begin
    if jam > 40 then
      lembur := (jam - 40) * 20000;

    if (golongan = 'C') and (jam > 50) then
      bonus := 100000;

    total := gaji_pokok + lembur + bonus;

    writeln('gaji Pokok       : Rp', gaji_pokok);
    writeln('lembur           : Rp', lembur);
    writeln('bonus            : Rp', bonus);
    writeln('total Gaji Akhir : Rp', total);
  end;
end.