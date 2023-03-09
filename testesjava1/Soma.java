package testesjava1;

import java.util.Scanner;

public class Soma {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int num1, num2, soma;
        
        System.out.print("Informe o valor do num1: ");
        num1 = sc.nextInt();
        
        System.out.print("Informe o valor do num2: ");
        num2 = sc.nextInt();
        
        soma = (num1 + num2);
        System.out.println("A soma e igual a " + soma);
        
    }
}
