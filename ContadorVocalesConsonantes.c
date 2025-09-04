#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char palabra[100];
    int vocales = 0, consonantes = 0;
    
    printf("Ingrese una palabra: ");
    fgets(palabra, sizeof(palabra), stdin);
    
    for (int i = 0; i < strlen(palabra); i++) {
        char letra = tolower(palabra[i]);
        
        if (letra >= 'a' && letra <= 'z') {
            if (letra == 'a' || letra == 'e' || letra == 'i' || 
                letra == 'o' || letra == 'u') {
                vocales++;
            } else {
                consonantes++;
            }
        }
    }
    
    printf("Vocales: %d\n", vocales);
    printf("Consonantes: %d\n", consonantes);
    
    return 0;
}