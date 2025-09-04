import java.util.Scanner;

public class PuntosPalabra {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int puntos = 0;
        
        System.out.println("CALCULADORA DE PUNTOS DE PALABRAS");
        System.out.println("La A vale 1, B vale 2, C vale 3, etc...");
        System.out.println("El programa termina cuando la palabra vale 100 puntos");
        System.out.println(" ");
        
        while (puntos != 100) {
            System.out.print("Ingresa una palabra, solo letras, sin espacios ni números: ");
            String palabra = scanner.nextLine().toUpperCase();
            
            puntos = 0;
            for (int i = 0; i < palabra.length(); i++) {
                char letra = palabra.charAt(i);
                if (letra >= 'A' && letra <= 'Z') {
                    puntos += (letra - 'A' + 1);
                }
            }
            
            System.out.println("La palabra '" + palabra + "' vale " + puntos + " puntos");
            System.out.println(" ");
            
            if (puntos == 100) {
                System.out.println("Ya haz conseguido los 100 puntos.");
            }
        }
        
        scanner.close();
    }
}
