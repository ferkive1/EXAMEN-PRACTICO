import java.util.Scanner;

public class ContadorVocalesConsonantes {
    public static void main(String[] args) {

        System.out.print("Ingrese una palabra: ");

        Scanner scanner = new Scanner(System.in);
        String palabra = scanner.nextLine().toLowerCase();
        
        int vocales = 0;
        int consonantes = 0;
        
        for (int i = 0; i < palabra.length(); i++) {
            char letra = palabra.charAt(i);
            
            if (letra >= 'a' && letra <= 'z') {
                
                if (letra == 'a' || letra == 'e' || letra == 'i' || 
                    letra == 'o' || letra == 'u') {
                    vocales++;
                } else {
                    consonantes++;
                }
            }
        }
        
        System.out.println("Vocales: " + vocales);
        System.out.println("Consonantes: " + consonantes);
        
        scanner.close();
    }
}