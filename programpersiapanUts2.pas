program beasiswa;
uses crt;

    var
    ipk:real;
    prestasi:integer;
    gaji:longint;
    nama:string;
    proses:char;

        begin
            repeat
            clrscr;

                
                textcolor(green);
                write('masukkan nama mahasiswa: ');
                readln(nama);
                
                

                writeln;
                repeat
                    textcolor(yellow);
                    write('masukkan total IPK: ');
                    readln(ipk);
                        if (ipk <= 0) or (ipk >4) then
                        begin
                            textcolor(red);
                            writeln('maaf angka tidak valid');
                        end; 
                until (ipk > 0) and (ipk <= 4);

                writeln;
                repeat
                    textcolor(yellow);
                    write('masukkan total prestasi: ');
                    readln(prestasi);
                        if (prestasi <=0) then
                            begin
                                textcolor(red);
                                writeln('maaf angka tidak valid');
                            end;
                until (prestasi >=1);
                
                writeln;
                repeat
                    textcolor(yellow);
                    write('masukkan total Gaji orang tua: ');
                    readln(gaji);
                        if (gaji<=0) then
                            begin
                                textcolor(red);
                                writeln('maaf angka tidak valid');
                            end;
                until gaji >0;

                    writeln;
                    if (ipk >=3.75) and (Gaji <= 5000000) and  (prestasi >= 2) then
                       begin
                            textcolor(blue);
                            writeln('Mahasiswa ',nama,' Mendapat Beasiswa penuh');
                        end

                    else if (ipk >= 3.50) and (gaji <= 7000000) and (prestasi >=1) then
                        begin
                            textcolor(blue);
                            writeln('Mahasiswa ',nama,' mendapat beasiswa sebagian');
                        end
                    
                    else if (ipk < 2.75) then
                        begin
                            textcolor(red);
                            writeln('IPK tidak memenuhi syarat');
                        end

                    else if (ipk >= 2.75) and (gaji >7000000 ) then
                        begin
                            textcolor(red);
                            writeln('Penghasilan tidak memenuhi syarat');
                        end
                    
                    else 
                        begin
                            textcolor(red);
                            writeln('tidak mendapat beasiswa');
                        end;

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

                                        textcolor(blue);
                                        writeln('terima kasih');

                    


        end.
