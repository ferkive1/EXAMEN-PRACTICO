import java.util.Scanner;

public class ParImpar {
    public static void main(String[] args) {
        System.out.print("Ingrese un número: ");

        Scanner scanner = new Scanner(System.in);
        int numero = scanner.nextInt();
        
        if (numero % 2 == 0) {
            System.out.println("el número " + numero + " es par.");
        } else {
            System.out.println("el número" + numero + " es impar.");
        }
        
        scanner.close();
    }
}

