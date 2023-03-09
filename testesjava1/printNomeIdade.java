package testesjava1;

import java.util.Scanner;

public class printNomeIdade {

    public static void main(String[] args)   {
        
        Scanner sc = new Scanner(System.in);
        
        int idade = 0;
        
        System.out.print("Informe a sua idade: ");
        idade = sc.nextInt();
        
        System.out.println("Voce tem " + idade + " anos");
                
                
    }
}
