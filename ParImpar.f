                program ParImpar
        implicit none
        integer :: numero
        
        print *, "Ingrese un numero: "
        read *, numero
        
        if (mod(numero, 2) == 0) then
           print *, "el n£mero ", numero, " es par."
        else
           print *, "el n£mero ", numero, " es impar."
        end if
        
        pause

            end program ParImpar
