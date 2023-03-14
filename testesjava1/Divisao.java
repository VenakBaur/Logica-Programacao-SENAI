package testesjava1;

import java.util.Scanner;

public class Divisao {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        float num1, num2, divisao;
        
        System.out.print("Informe o valor do num1: ");
        num1 = sc.nextFloat();
        
        System.out.print("Informe o valor do num2: ");
        num2 = sc.nextFloat();
        
        divisao = (num1 / num2);
        
        System.out.println("O resultado da divisao e " + divisao);
    }
}
