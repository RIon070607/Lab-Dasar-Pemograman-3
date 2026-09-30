program whilte;
uses crt;

    var
    angka:integer;

        begin
            clrscr;

            write('masukkan angka: ');
            readln(angka);

                while angka > 0 do 

                begin
                writeln('angka', angka ,'adalah bilangan positif');

                write('masukkan angka lagi (0 untuk berhenti)');
                readln(angka);
                end;

                    writeln('program selesai');
                    end.
                    
               