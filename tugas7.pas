program tarif_parkir;
uses crt;
var
  kode : char;
  jam : integer;
  tarif : integer;
begin
  clrscr;
  write('masukkan kode kendaraan:  ');
  readln(kode);
  write('masukkan waktu parkir:  ');
  readln(jam);

  kode := upcase(kode);
  tarif := 0;

  case kode of
    'M' : begin
            if jam > 10 then
              tarif := 30000
            else
              tarif := 5000 + (jam - 1) * 3000;
            writeln('Jenis kendaraan : Mobil');
          end;
    'K' : begin
            if jam > 10 then
              tarif := 10000
            else
              tarif := 2000 + (jam - 1) * 1000;
            writeln('Jenis kendaraan : Motor');
          end;
    'B' : begin
            if jam > 10 then
              tarif := 50000
            else
              tarif := 10000 + (jam - 1) * 5000;
            writeln('Jenis kendaraan : Bus');
          end;
  else
    writeln('Kode kendaraan tidak valid!');
  end;

  if tarif > 0 then
  begin
    writeln('Lama parkir     : ', jam, ' jam');
    writeln('Total tarif     : Rp', tarif);
  end;
end.