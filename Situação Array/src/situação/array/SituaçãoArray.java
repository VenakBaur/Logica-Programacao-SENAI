package situação.array;

import javax.swing.JOptionPane;    
    
public class SituaçãoArray {
    
    //Uma loja de porcelanatos resolveu criar códigos referencia nos produtos, mas precisa de ajuda para guardar as informações.

    //Crie um vetor que armazene os códigos e exiba-os

    static int acao = 0;
    static float[] codigosInseridos = new float [999];
    static int indice = 0;
    static int contador = 0;
    
    public static void main(String[] args) {
        
        login(args);
        
        menu(args);
        
    }
    
    public static void login(String[] args) {
        
        String login = "adm", senha = "adm";
        String testeLogin, testeSenha = "";
        
        testeLogin = JOptionPane.showInputDialog("Digite o login");
        testeSenha = JOptionPane.showInputDialog("Digite a senha");
        
        if (testeLogin.equals(login) && testeSenha.equals(senha)) {
            
            JOptionPane.showMessageDialog(null, "Login inserido com sucesso!");
            
        } else {
            
            JOptionPane.showMessageDialog(null, "Login incorreto");
            System.exit(0);
                
        }
        
    }
    
    public static void menu(String[] args) {
        
        do {
        
            System.out.println("*****MENU*****");
            System.out.println("\n1 - Lançar Código Produto");
            System.out.println("2 - Exibir Códigos");
            System.out.println("3 - Encerrar");
            
            acao = Integer.parseInt(JOptionPane.showInputDialog("O que deseja fazer?"));
            
            switch (acao) {
                case 1:
                    codigos(args);
                    break;
                case 2:
                    printNotas(args);
                case 3:
                    System.exit(0);
                default:
                    JOptionPane.showMessageDialog(null, "Número Inválido");
                    
            }
        } while (acao != 3);    
    }
    
    public static void codigos(String[] args) {
        
        float codigo = 0;
        codigo = Float.parseFloat(JOptionPane.showInputDialog("Insira o Código"));
        
        codigosInseridos[indice] = codigo; 
        
        indice++;
        contador++;
                
    }
    
    public static void printNotas(String[] args) {
        
        for (int i = 0; i < contador; i++) {
            
            System.out.println("codigo: " + codigosInseridos[i] + "\n");
            
        }
        
    }
    
}