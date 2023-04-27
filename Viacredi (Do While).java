
package pkgwhile;

import javax.swing.JOptionPane;

public class Viacredi {
   
    public static void main(String[] args) {
        
        int op = 0;
        float valorDigitado = 0;
        int numeroConta = Integer.parseInt(JOptionPane.showInputDialog("Qual o numero da conta?"));
        String nomeCliente = JOptionPane.showInputDialog("Qual o seu nome?");
        float depositoInicial = Float.parseFloat(JOptionPane.showInputDialog("Qual o valor do deposito inicial?"));
        float valorDeposito = 0.0f, valorSaque = 0.0f, saldo = depositoInicial;
               
        do {
        
            op = Integer.parseInt(JOptionPane.showInputDialog("Qual sera a operacao?" +
                    "\n1 - Deposito" +
                    "\n2 - Saque" +
                    "\n3 - Saldo" +
                    "\n4 - Encerrar"));
     
            valorDigitado = switch (op) {
                
                case 1 ->
                    saldo += valorDeposito = Float.parseFloat(JOptionPane.showInputDialog("Deposito: R$"));
                    
                case 2 ->
                    saldo -= valorSaque = Float.parseFloat(JOptionPane.showInputDialog("Saque: R$"));
                case 3 ->
                    saldo;
                default ->
                    op = 4;
            };
        
        if (op !=4) {
            
            JOptionPane.showMessageDialog(null, "Seu saldo e RS" + valorDigitado);
            
        } else {
            
            JOptionPane.showMessageDialog(null, "Obrigada por utilizar nosso banco!");
            
        }
        
        } while (op !=4);
        
        JOptionPane.showMessageDialog(null, "Banco do Barril" + 
        "\nTitular da conta: " + nomeCliente + 
        "\nNumero da conta: " + numeroConta + 
        "\nDeposito Inicial: " + depositoInicial + 
        "\nFoi sacado: " + valorSaque + 
        "\nSaldo atual: " + saldo);
        
        System.exit(0);
    }
}