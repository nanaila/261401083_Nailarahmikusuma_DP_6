program verifikasisandi;
uses crt;
const
  sandi = 'nailacantik';
var
  input : string;
  kesempatan : integer;
  berhasil : boolean;
begin
clrscr;
  kesempatan := 0;
  berhasil := false;

  repeat
    kesempatan := kesempatan + 1;
    write('masukkan kata sandi : ');
    readln(input);

    if input = sandi then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah, kesempatan ke-', kesempatan, ' dari 3');
  until kesempatan = 3;

  if berhasil = false then
    writeln('Akses Ditolak! Akun Terkunci.');
end.