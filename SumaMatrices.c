#include <stdio.h>
#include <stdlib.h>

int main() {
    int filas, columnas;
    
    printf("Ingrese el número de filas de las matrices: ");
    scanf("%d", &filas);
    printf("Ingrese el número de columnas de las matrices: ");
    scanf("%d", &columnas);
    
    int **matrizA = (int **)malloc(filas * sizeof(int *));
    int **matrizB = (int **)malloc(filas * sizeof(int *));
    int **matrizC = (int **)malloc(filas * sizeof(int *));
    
    for (int i = 0; i < filas; i++) {
        matrizA[i] = (int *)malloc(columnas * sizeof(int));
        matrizB[i] = (int *)malloc(columnas * sizeof(int));
        matrizC[i] = (int *)malloc(columnas * sizeof(int));
    }
    
    printf("\nIngrese valores de MATRIZ A:\n");
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("A[%d][%d]: ", i, j);
            scanf("%d", &matrizA[i][j]);
        }
    }
    
    printf("\nIngrese valores de MATRIZ B:\n");
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("B[%d][%d]: ", i, j);
            scanf("%d", &matrizB[i][j]);
        }
    }
    
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            matrizC[i][j] = matrizA[i][j] + matrizB[i][j];
        }
    }

    printf("\nEl resultado de la matriz es: \n");
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("%d\t", matrizC[i][j]);
        }
        printf("\n");
    }
    
    return 0;
}