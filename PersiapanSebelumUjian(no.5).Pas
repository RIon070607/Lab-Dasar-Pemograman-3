//nama:Victor Chaste Nababan
//kom: B
//nim:261401064
program PembayaranMakanan;
uses crt;

    var
        angka,jumlah,status,member,non_member:integer;
        harga,harga_awal,persen,total_akhir:real;
        proses:char;

        begin
            repeat
            clrscr;
                textcolor(green);
                writeln('==================================================');
                writeln('=        DAFTAR MENU        =        KODE        =');
                writeln('==================================================');
                writeln('= * NASI GORENG  : Rp 20000 =         (1)        =');
                writeln('= * MIE GORENG   : Rp 18000 =         (2)        =');
                writeln('= * AYAM GEPREK  : Rp 25000 =         (3)        =');
                writeln('= * STEAK        : RP 50000 =         (4)        =');
                writeln('==================================================');


                    writeln;
                    repeat
                    textcolor(yellow);
                    write('masukkan kode makanan: ');
                    readln(angka);
                        if (angka >4) or (angka <=0) then
                            begin
                                textcolor(red);
                                writeln('kode tidak valid,pilih kode 1-4');
                            end;
                    until (angka >0) and (angka <5);
                    
                        writeln;
                        textcolor(yellow);
                        case angka of
                        1:begin
                            writeln(' NASI GORENG  :Rp 20000');
                            harga:= 20000;
                        end;
                        
                        2:begin
                            writeln(' MIE GORENG   :Rp 18000');
                            harga:= 18000;
                        end;
                        3:begin
                            writeln(' AYAM GEPREK  :Rp 25000');
                            harga:= 25000;
                        end;
                        4:begin
                            writeln(' STEAK        :Rp 50000');
                            harga:= 50000;
                            end

                        else
                        begin
                            textcolor(red);
                            writeln('kode tidak valid');
                        end;
                        END;

                                writeln;
                                repeat
                                textcolor(yellow);
                                write('masukkan jumlah pesanan: ');
                                readln(jumlah);

                                    textcolor(blue);
                                    if jumlah <=0 then
                                        begin
                                            textcolor(red);
                                            writeln('kode tidak valid');
                                        end;
                                until jumlah > 0;

                                    writeln;
                                    if jumlah >10 then
                                        begin
                                        write('pesanan terlalu banyak');
                                        end
                                    else if jumlah <=0 then
                                        begin
                                            write('jumlah pesanan tidak valid');
                                        end
                                    else
                                        begin
                                            write('Jumlah pesanan Normal');
                                        end;
                                            
                                            writeln;
                                            writeln;
                                            harga_awal:= harga * jumlah;
                                            writeln('harga awal: ',harga_awal:0:2);



                                                writeln;
                                                textcolor(green);
                                                writeln('================================================');
                                                writeln('=          STATUS PELANGGAN     =      KODE    =');
                                                writeln('================================================');
                                                WRITELN('= * MEMBER                      =      (1)     =');
                                                WRITELN('= * NON MEMBER                  =      (2)     =');
                                                WRITELN('================================================');


                                                            writeln;
                                                           writeln('=====================================================');
                                                           writeln('=   STATUS     = DAN =              DISKON          =');
                                                           writeln('=====================================================');
                                                           writeln('= * MEMBER     =     = (>= Rp 100000) = diskon 15%  =');
                                                           writeln('= * MEMBER     =     = (>= Rp 50000)   = diskon 10% =');
                                                           writeln('= * MEMBER     =     = (<  Rp 50000)   = diskon  5% =');
                                                           writeln('=====================================================');
                                                           writeln('= * NON MEMBER =     = (>= Rp 100000)  = diskon  5% =');
                                                           writeln('= * NON MEMBER =     =  SELAIN ITU     = NO DISKON  =');
                                                           WRITELN('=====================================================');

                                                            writeln;
                                                            repeat
                                                            textcolor(yellow);
                                                            write('masukkan kode status: ');
                                                            readln(status);
                                                                if (status <=0) or (status>2) then
                                                                    begin
                                                                        textcolor(red);
                                                                        writeln('kode tidak valid');
                                                                    end;
                                                            until (status<=2)and(status>=1);

                                                                        writeln;
                                                                        textcolor(blue);
                                                                        case status of
                                                                            1:begin   
                                                                                writeln('PEMESAN TERMASUK MEMBER');
                                                                                    IF harga_awal >= 100000 then
                                                                                    begin
                                                                                        persen:= harga_awal * 0.15 ;
                                                                                        writeln('total diskon: ',persen:0:2);
                                                                                        total_akhir:= harga_awal - persen;
                                                                                        
                                                                                    end

                                                                                    else if harga_awal >= 50000 then
                                                                                    begin
                                                                                        persen:= harga_awal*0.1;
                                                                                        writeln('total diskon: ',persen:0:2);
                                                                                        total_akhir:= harga_awal - persen;
                                                                                        
                                                                                    end

                                                                                    else if harga_awal < 50000 then
                                                                                    begin
                                                                                        persen:= harga_awal*0.05 ;
                                                                                        writeln('total diskon: ',persen:0:2);
                                                                                        total_akhir:= harga_awal - persen ;
                                                                                        
                                                                                    end;

                                                                                End;
                                                                      
                                                                            2:begin
                                                                                writeln('PEMESAN TIDAK TERMASUK MEMBER');
                                                                                    IF harga_awal >= 100000 then
                                                                                    begin
                                                                                        persen:= harga_awal * 0.05;
                                                                                        writeln('total diskon: ',persen:0:2);
                                                                                        total_akhir:= harga_awal - persen;
                                                                                     
                                                                                    end

                                                                                    else
                                                                                    begin
                                                                                        writeln('tidak dapat diskon');
                                                                                        persen:= 0;
                                                                                        writeln('total diskon: ',persen:0:2);
                                                                                        total_akhir:= harga_awal - 0;
                                                                                        
                                                                                    end;
                                                                                end;
                                                                            end;

                                                                                            writeln;
                                                                                            textcolor(yellow);
                                                                                            writeln('total harga akhir: ',total_akhir:0:2);
                                                                                        
                                                                                                writeln;
                                                                                                textcolor(green);
                                                                                                writeln('====================================================');
                                                                                                writeln('=                 STRUCK PEMBELIAN                 =');
                                                                                                writeln('====================================================');
                                                                                                writeln('* Harga makanan        = nasi goreng : Rp ',harga:0:2);
                                                                                                writeln('* Total harga awal     = Rp ',harga_awal:0:2);
                                                                                                writeln('* Total Diskon         = ',persen:0:2);
                                                                                                writeln('* Total harga akhir    = Rp ',total_akhir:0:2);
                                                                                                writeln('====================================================');

                                                                                                    writeln;
                                                                                                    repeat
                                                                                                        textcolor(yellow);
                                                                                                        write('proses lagi? (y/t): ');
                                                                                                            readln(proses);
                                                                                                        if not (proses in ['Y','y','T','t']) then
                                                                                                            begin
                                                                                                                textcolor(red);
                                                                                                                writeln('jawab dengan Y atau T saja');
                                                                                                            end;

                                                                                                    until proses in ['y','Y','T','t'];

                                                                                                until (proses= 'T') or (proses = 't');
                                                                                                                writeln;
                                                                                                                textcolor(blue);
                                                                                                                writeln('TERIMA KASIH SUDAH BERBELANJA DIKEDAI KAMI');
                                                                            
        end.
