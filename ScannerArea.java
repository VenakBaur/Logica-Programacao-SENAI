package aula.pkg22.pkg03;

import java.util.Scanner;

public class ScannerArea {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        float altura;
        float largura;
        float area;
        
        System.out.println("Qual a altura?");
        altura = sc.nextFloat();
        System.out.println("Qual a largura");
        largura = sc.nextFloat();
        
        area = altura * largura / 2;
        
        System.out.println("A area e igual a: " + area);
    }
}
