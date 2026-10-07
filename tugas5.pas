program rekap_nilai;
uses crt;
var
  m, n, i, j : integer;
  nilai, jumlah, rata : real;
  lulus, tidak_lulus : integer;
begin
  clrscr;
  write('masukkan jumlah mahasiswa: ');
  readln(m);
  write('masukkan jumlah tugas: ');
  readln(n);

  lulus := 0;
  tidak_lulus := 0;

  for i := 1 to m do
  begin
    writeln;
    writeln('mahasiswa ke-', i);
    jumlah := 0;

    for j := 1 to n do
    begin
      write('nilai tugas ke-', j, ' : ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;

    rata := jumlah / n;
    writeln('rata-rata : ', rata:0:2);

    if rata >= 65 then
    begin
      writeln('status    : LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('status    : TIDAK LULUS');
      tidak_lulus := tidak_lulus + 1;
    end;
  end;

  writeln;
  writeln('total mahasiswa LULUS       : ', lulus);
  writeln('total mahasiswa TIDAK LULUS : ', tidak_lulus);
  readln;
end.