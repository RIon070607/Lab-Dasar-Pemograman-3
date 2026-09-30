
program lonncat;
uses crt;

label
  a,b,c,d,e,f,g,h,i;

begin
  clrscr;

  goto f;

  d:
  write('ilmu ');
  goto h;

  b:
  write('jurusan ');
  goto d;

  c:
  write('sumatra ');
  goto g;

  a:
  write('mahasiswa ');
  goto b;

  e:
  write('universitas ');
  goto c;

  f:
  write('saya ');
  goto a;

  g:
  write('utara');
  goto i;

  h:
  write('komputer ');
  goto e;

  i:
  readln;
end.