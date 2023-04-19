package switchcase;

import javax.swing.JOptionPane;

public class SwitchCase {

    public static void main(String[] args) {
        
        String diadasemana;
        int dia = Integer.parseInt(JOptionPane.showInputDialog("Informe um valor entre 1 e 7: "));

        if (dia < 1 || dia > 7) {
            JOptionPane.showMessageDialog(null, "Você informou um valor inválido!");
        } else {

            diadasemana = switch (dia) {
                case 1 ->
                    "Domingo";
                case 2 ->
                    "Segunda-Feira";
                case 3 ->
                    "Terça-Feira";
                case 4 ->
                    "Quarta-Feira";
                case 5 ->
                    "Quinta-Feira";
                case 6 ->
                    "Sexta-Feira";
                case 7 ->
                    "Sabado";
                default ->
                    "";
            };

            JOptionPane.showMessageDialog(null, "Hoje é: " + diadasemana);

        }
    }
}
