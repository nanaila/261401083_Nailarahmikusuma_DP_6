program NilaiAkhirMatkul;
uses crt;
var
  tugas, uts, uas, hadir, akhir: real;
  indeks: char;
begin
  clrscr;
  write('nilai tugas: ');
  readln(tugas);
  write('nilai UTS: ');
  readln(uts);
  write('nilai UAS: ');
  readln(uas);
  write('kehadiran (%): ');
  readln(hadir);

  akhir := 0.3 * tugas + 0.3 * uts + 0.4 * uas;

  if akhir >= 85 then
    indeks := 'A'
  else if akhir >= 75 then
    indeks := 'B'
  else if akhir >= 60 then
    indeks := 'C'
  else if akhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln('Nilai Akhir  : ', akhir:0:2);
  writeln('Indeks Huruf : ', indeks);
  if (akhir >= 60) and (hadir >= 80) then
    writeln('Status       : LULUS')
  else
    writeln('Status       : TIDAK LULUS');
end.