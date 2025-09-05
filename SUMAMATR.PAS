program SumaMatrices;
uses Crt;

const
    MAX_FILAS = 20;
    MAX_COLUMNAS = 20;

var 
    filas, columnas, i, j: integer;
    matrizA, matrizB, matrizC: array[0..MAX_FILAS-1, 0..MAX_COLUMNAS-1] of integer;

begin
    ClrScr;

    write('Ingrese el numero de filas de las matrices: ');
    readln(filas);
    write('Ingrese el numero de columnas de las matrices: ');
    readln(columnas);

    writeln;
    writeln('Ingrese valores de MATRIZ A: ');
    for i := 0 to filas - 1 do
    begin
         for j := 0 to columnas - 1 do
         begin
              write('A[', i, '][', j, ']: ');
              readln(matrizA[i][j]);
         end;
    end;

    writeln;
    writeln('Ingrese valores de MATRIZ B: ');
    for i := 0 to filas - 1 do
    begin
         for j := 0 to columnas - 1 do
         begin
              write('B[', i, '][', j, ']: ');
              readln(matrizB[i][j]);
         end;
    end;

    for i := 0 to filas - 1 do
    begin
         for j := 0 to columnas - 1 do
         begin
              matrizC[i][j] := matrizA[i][j] + matrizB[i][j];
         end;
    end;

    writeln;
    writeln('El resultado de la matriz es: ');
    for i := 0 to filas - 1 do
    begin
         for j := 0 to columnas - 1 do
         begin
              write(matrizC[i][j]:8);
         end;
         writeln;
    end;

    readln;
end.