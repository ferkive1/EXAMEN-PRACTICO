program ParImpar;

uses crt;

var numero: integer;

begin
    write('Ingrese un numero: ');
    readln(numero);

    if (numero mod 2 = 0) then
       writeln('el numero ', numero, ' es par')
    else
       writeln('el numero ', numero, ' es impar');
       readln;

end.