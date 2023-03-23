package aula.pkg22.pkg03;

import java.util.Scanner;

public class ContaBancaria {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        float conta = 0f;
        float saldo, saldo2;
        float deposito;
        float saque;
        
        System.out.println("O saldo inicial e: " + conta);
        System.out.println("Qual o valor do deposito?");
        deposito = sc.nextFloat();
        
        saldo = conta + deposito;
        System.out.println("O saldo atual e de " + saldo);
        
        System.out.println("Qual o valor do saque?");
        saque = sc.nextFloat();
        saldo2 = saldo - saque;
        
        System.out.println("O saldo da conta e de " + saldo2);
    }
}