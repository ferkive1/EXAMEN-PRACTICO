program PuntosPalabra;
uses Crt;

var palabra: string;
    puntos, i: integer;
    letra: char;

begin
     puntos := 0;

     ClrScr;
     writeln('CALCULADORA DE PUNTOS DE PALABRAS');
     writeln('La A vale 1, B vale 2, C vale 3, etc...');
     writeln('El programa termina cuando la palabra vale 100 puntos');
     writeln(' ');

     while puntos <> 100 do
     begin
          write('Ingresa una palabra, solo letras: ');
          readln(palabra);

          puntos := 0;
          for i := 1 to Length(palabra) do
          begin
               letra := UpCase(palabra[i]);
               if (letra >= 'A') and (letra <= 'Z') then
               begin
                    puntos := puntos + (Ord(letra) - Ord('A') + 1);
               end;
          end;

          writeln('La palabra ''', palabra, ''' vale ', puntos, ' puntos');
          writeln(' ');

          if puntos = 100 then
          begin
               writeln('Ya haz conseguido los 100 puntos.');
          end;
     end;

     readln;
end.






