#include <stdio.h>

int main() {
    int numero;
    
    printf("Ingrese un número: ");
    scanf("%d", &numero);
    
    if (numero % 2 == 0) {
        printf("el número %d es par.\n", numero);
    } else {
        printf("el número %d es un número impar.\n", numero);
    }
    
    return 0;
}