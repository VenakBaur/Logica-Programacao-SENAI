package testesjava1;

import java.util.Scanner;

public class ScannerPessoa {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        byte idade = 0;
        float altura = 0f;
        char sexo;
        float salario = 0;
        
        System.out.print("Quantos anos voce tem? ");
        idade = sc.nextByte();
        System.out.println("A sua idade e " + idade + " anos");
        
        System.out.print("Qual a sua altura? ");
        altura = sc.nextFloat();
        System.out.println("A sua altura e " + altura + "m");
        
        System.out.print("Masculino ou feminino? ");
        sexo = sc.next().charAt(0);
        System.out.println("Voce e " + sexo);
        
        System.out.print("Qual o seu salario? ");
        salario = sc.nextFloat();
        System.out.println("Seu salario e " + salario + "R$");
                
    }

    }
