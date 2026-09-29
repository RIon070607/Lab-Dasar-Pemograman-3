program HitungHargaTiket;
uses crt;

var
  angka, tiket: integer;
  total_awal, harga, total_tambah, total_diskon, harga_akhir: real;
  lagi: char;

begin
  repeat                                 
    clrscr;

        textcolor(green);
        writeln('==========================================');
        writeln('=            DAFTAR JENIS FILM           =');
        writeln('==========================================');
        writeln('=  REGULER = Rp 30000            KODE(1) =');
        writeln('=  3D      = Rp 45000            KODE(2) =');
        writeln('=  IMAX    = Rp 60000            KODE(3) =');
        writeln('==========================================');

  
            writeln;
            repeat
            textcolor(yellow);
            write('Masukkan Kode Angka: ');
            readln(angka);
            if (angka < 1) or (angka > 3) then
            begin
            textcolor(red);
            writeln('Maaf Angka Tidak Valid, coba lagi');
            end;
            until (angka >= 1) and (angka <= 3);

                writeln;
                textcolor(blue);
                case angka of
                
                1: begin
                    writeln('Reguler: 30000');
                    harga := 30000;
                    end;
                2: begin
                    writeln('3D     : 45000');
                    harga := 45000;
                    end;
                3: begin
                    writeln('IMAX   : 60000');
                    harga := 60000;
                    end;

                end;

                        textcolor(green);
                        writeln('==========================================');
                        writeln('=    PENAMBAHAN HARGA TERGANTUNG HARI    =');
                        writeln('==========================================');
                        writeln('= SABTU-MINGGU = +10000 PERTIKET KODE(1) ');
                        writeln('= JUMAT        = +5000  PERTIKET KODE(2) ');
                        writeln('= SENIN-KAMIS  =  TIDAK TAMBAHAN KODE(3) ');
                        writeln('==========================================');

                            repeat
                            textcolor(yellow);
                            write('Masukkan Kode Hari: ');
                            readln(angka);
                            if (angka < 1) or (angka > 3) then
                            begin
                                textcolor(red);
                                writeln('Maaf kode tidak valid, coba lagi');
                            end;
                            until (angka >= 1) and (angka <= 3);

                                textcolor(blue);
                                case angka of
                                1: begin
                                    writeln('harga tiket + 10000');
                                    total_tambah := harga + 10000;
                                    writeln('total setelah penambahan harga: ', total_tambah:0:2);
                                end;
                                2: begin
                                    writeln('harga tiket + 5000');
                                    total_tambah := harga + 5000;
                                    writeln('total harga: ', total_tambah:0:2);
                                    end;
                                3: begin
                                    writeln('harga tiket + 0');
                                    total_tambah := harga;
                                    writeln('total harga: ', total_tambah:0:2);
                                    end;
                                end;

                                        repeat
                                        textcolor(yellow);
                                        write('masukkan jumlah tiket: ');
                                        readln(tiket);
                                        if tiket <= 0 then
                                        begin
                                            textcolor(red);
                                            writeln('jumlah tidak valid, coba lagi');
                                        end;
                                        until tiket > 0;

   
                                            textcolor(green);
                                            writeln('=======================================================');
                                            writeln('=                DISKON HARGA PEMBELIAN               =');
                                            writeln('=======================================================');
                                            writeln('* TOTAL HARGA BARANG >=200000  : MENDAPAT DISKON 10%  ');
                                            writeln('* TOTAL HARGA BARANG >=100000  : MENDAPAT DISKON 5%   ');
                                            writeln('* TOTAL HARGA BARANG < 100000  : TIDAK MENDAPAT DISKON');
                                            writeln('=======================================================');

                                                textcolor(yellow);
                                                total_awal := total_tambah * tiket;
                                                writeln('total harga awal: ', total_awal:0:2);

                                                    textcolor(blue);
                                                    if total_awal >= 200000 then
                                                    begin
                                                        writeln('mendapat diskon 10%');
                                                        total_diskon := total_awal * 0.1;
                                                    end
                                                
                                                    else if total_awal >= 100000 then
                                                    begin
                                                        writeln('mendapat diskon 5%');
                                                        total_diskon := total_awal * 0.05;
                                                    end
                                                    
                                                    else
                                                    begin
                                                        writeln('tidak mendapat diskon');
                                                        total_diskon := 0;
                                                    end;

                                                        harga_akhir := total_awal - total_diskon;
                                                        writeln('total diskon didapat: ', total_diskon:0:2);
                                                        writeln('total akhir: ', harga_akhir:0:2);

    
                                                            textcolor(green);
                                                            writeln('===============================================');
                                                            writeln('=                STRUK PEMBELIAN              =');
                                                            writeln('===============================================');
                                                            writeln('* TOTAL HARGA AWAL         : ', total_awal:0:2);
                                                            writeln('* Total diskon didapat     : ', total_diskon:0:2);
                                                            writeln('* TOTAL YANG HARUS DIBAYAR : ', harga_akhir:0:2);
                                                            writeln('===============================================');

   
                                                                writeln;
                                                                repeat
                                                                textcolor(yellow);
                                                                write('Beli lagi? (y/t): ');
                                                                readln(lagi);
      
                                                                if not (lagi in ['y', 'Y', 't', 'T']) then
                                                                begin
                                                                    textcolor(red);
                                                                    writeln('Jawab dengan y atau t saja');
                                                                end;
                                                                until lagi in ['y', 'Y', 't', 'T'];

                                                                until (lagi = 't') or (lagi = 'T');     { PERULANGAN BESAR: selesai }

                                                                textcolor(blue);
                                                                 writeln('Terima kasih');
end.