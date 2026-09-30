program repeet;
uses crt;

    var
    password:string;

        begin
            clrscr;
            repeat

            write('masukkan password: ');
            readln(password);

            if password <> '12345' then
            write('password salah');

            until password = '12345';
            writeln('password benar!');
            writeln('selamat datang');


        end.
