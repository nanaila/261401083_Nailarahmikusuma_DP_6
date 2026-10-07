program JumlahHariBulan;
uses crt;
var
  tahun, bulan, hari: integer;
  kabisat: boolean;
begin
clrscr;
  write('masukkan tahun: ');
  readln(tahun);
  write('masukkan nomor bulan: ');
  readln(bulan);

  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  hari := 0;
  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11:           hari := 30;
    2: if kabisat then hari := 29 else hari := 28;
  else
    writeln('nomor bulan tidak valid!');
  end;

  if hari > 0 then
  begin
    if kabisat then
      writeln('tahun ', tahun, ' adalah tahun kabisat.')
    else
      writeln('tahun ', tahun, ' bukan tahun kabisat.');
    writeln('jumlah hari pada bulan ', bulan, ' tahun ', tahun, ': ', hari, ' hari');
  end;
end.