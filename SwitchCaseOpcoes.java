package switchcaseopcoes;

import javax.swing.JOptionPane;

public class SwitchCaseOpcoes {

    public static void main(String[] args) {
       
        Object [] cargos = {"Servicos Gerais", "Vigia", "Recepcionista", "Vendedor"};
        Object selectedCargos = JOptionPane.showInputDialog(null, "Informe o seu cargo: ", "Cargo", JOptionPane.WARNING_MESSAGE, null, cargos, cargos[0]);
        float salario = Float.parseFloat(JOptionPane.showInputDialog("Informe seu salario R$"));
        
        String codigo = (String) selectedCargos;
        
        String novoSalario;
        novoSalario = switch (codigo) {
            
            case "Servicos Gerais" ->
                "Servicos Gerais R$ " + (salario + (salario * 50 / 100));
                
            case "Vigia" ->
                "Vigia R$ " + (salario + (salario * 30 / 100));
                
            case "Recepcionista" ->
                "Recepcionista R$ " + (salario + (salario * 25 / 100));
                
            case "Vendedor" ->
                "Vendedor R$ " + (salario + (salario * 15 / 100));
                
            default ->    
                "Cargo Inexistente";
                
        };
        
        JOptionPane.showMessageDialog(null, novoSalario);
        
    }
    
}
