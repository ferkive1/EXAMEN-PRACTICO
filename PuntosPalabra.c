#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char palabra[100];
    int puntos = 0;
    
    printf("CALCULADORA DE PUNTOS DE PALABRAS:\n");
    printf("La A vale 1, B vale 2, C vale 3, etc...\n");
    printf("El programa termina cuando la palabra vale 100 puntos\n");
    printf(" \n");
    
    while (puntos != 100) {
        printf("Ingresa una palabra, solo letras, sin espacios ni números: ");
        scanf("%s", palabra);
        
        puntos = 0;
        for (int i = 0; i < strlen(palabra); i++) {
            char letra = toupper(palabra[i]);
            if (letra >= 'A' && letra <= 'Z') {
                puntos += (letra - 'A' + 1);
            }
        }
        
        printf("La palabra '%s' vale %d puntos\n", palabra, puntos);
        printf(" \n");
        
        if (puntos == 100) {
            printf("Ya haz conseguido los 100 puntos.\n");
        }
    }
    
    return 0;
}