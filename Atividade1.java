package switchcase;

import javax.swing.JOptionPane;

public class Atividade1 {
    
    public static void main(String[] args) {
        
        String cargos = "";
        
        float salario = Float.parseFloat(JOptionPane.showInputDialog("Informe o seu salario: "));
        int codigo = Integer.parseInt(JOptionPane.showInputDialog("Informe o codigo do cargo: "));
        float novoSalario = 0.0f, aumentoSalario = 0.0f;
        
        if (codigo < 1 || codigo > 4) {
            
            JOptionPane.showMessageDialog(null, "Você informou um codigo inválido!");
            
        } else {
            
            cargos = switch (codigo) {
                
                case 1 ->
                    "Servicos Gerais" + " teve um aumento de " + (aumentoSalario = (salario * 50) / 100) + 
                    "\nO novo salario e de " + (novoSalario = salario + aumentoSalario) + " reais";
                case 2 ->
                    "Vigia" + " teve um aumento de " + (aumentoSalario = (salario * 50) / 100) + 
                    "\nO novo salario e de " + (novoSalario = salario + aumentoSalario) + novoSalario + " reais";
                case 3 ->
                    "Recepcionista" + " teve um aumento de " + (aumentoSalario = (salario * 50) / 100) + 
                    "\nO novo salario e de " + (novoSalario = salario + aumentoSalario) + novoSalario + " reais";
                case 4 ->
                    "Vendedor" + " teve um aumento de " + (aumentoSalario = (salario * 50) / 100) + 
                    "\nO novo salario e de " + (novoSalario = salario + aumentoSalario) + novoSalario + " reais";
                default ->
                    "";
            };
                
        }
        
        JOptionPane.showMessageDialog(null, cargos);
        
    }     
}