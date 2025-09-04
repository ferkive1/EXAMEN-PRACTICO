program ContadorVocalesConsonantes;

uses crt;

var palabra: string;
    i, vocales, consonantes: integer;
    letra: char;

function LowerCase(c: char): char;
begin
     if (c >= 'A') and (c <= 'Z') then
        LowerCase := Chr(Ord(c) + 32)
     else
         LowerCase := c;
end;

begin
     ClrScr;
     write('Ingrese una palabra: ');
     readln(palabra);

     vocales := 0;
     consonantes := 0;

     for i := 1 to Length(palabra) do
     begin
          letra := LowerCase(palabra[i]);

          if ((letra >= 'a') and (letra <= 'z')) then
          begin

               if (letra = 'a') or (letra = 'e') or (letra = 'i') or
                  (letra = 'o') or (letra = 'u') then
                   vocales := vocales + 1
               else
                   consonantes := consonantes + 1;
          end;
     end;

     writeln('Vocales: ', vocales);
     writeln('Consonantes: ', consonantes);
     readln;
end.


