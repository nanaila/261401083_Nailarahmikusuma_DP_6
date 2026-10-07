program JualBarang;
uses crt;
var
  n, i: integer;
  harga, total, diskon, bayar, persen: real;
begin
clrscr;
  write('Jumlah barang yang dibeli: ');
  readln(n);

  total := 0;
  writeln('Rincian belanja');
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  if total < 100000 then
    persen := 0
  else if total < 500000 then
    persen := 10
  else
    persen := 20;

  diskon := total * persen / 100;
  bayar := total - diskon;

  writeln('Total Sebelum Diskon : Rp', total:0:0);
  writeln('Besar Diskon (', persen:0:0, '%) : Rp', diskon:0:0);
  writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end.