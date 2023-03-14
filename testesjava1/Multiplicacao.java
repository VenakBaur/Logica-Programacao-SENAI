package testesjava1;

import java.util.Scanner;

public class Multiplicacao {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int num1, num2, multiplicacao;
        
        System.out.print("Informe o valor do num1: ");
        num1 = sc.nextInt();
        
        System.out.print("Informe o valor do num2: ");
        num2 = sc.nextInt();
        
        multiplicacao = (num1 * num2);
        
        System.out.println("O resultado da multiplicacao e " + multiplicacao);
        
    }
}
