program apaaja;
uses crt;

    var
    i,j,n:integer;

        begin
            clrscr;

                write('masukkan jumlah baris: ');
                readln(n);

                    for i:= 5 downto n do 
                    begin
                        for j:= 1 to i do
                        begin
                            write('*');
                        end;
                        writeln;
                    end;


        end.