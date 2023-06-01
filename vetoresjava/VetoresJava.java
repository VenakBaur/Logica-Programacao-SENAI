package vetoresjava;

import javax.swing.JOptionPane;

public class VetoresJava {

    public static void main(String[] args) {
        
        int [] x = new int [4];
        
        x[1] = 7;
        
        float [] nota = new float[3];
        
        String [] nome = new String [3];
        
        nota[0] = Float.parseFloat(JOptionPane.showInputDialog("Nota [0]: "));
        nota[1] = Float.parseFloat(JOptionPane.showInputDialog("Nota [1]: "));
        nota[2] = Float.parseFloat(JOptionPane.showInputDialog("Nota [2]: "));


        JOptionPane.showMessageDialog(null, "O valor da nota [0] e " + nota [0]);
        JOptionPane.showMessageDialog(null, "O valor da nota [1] e " + nota [1]);
        JOptionPane.showMessageDialog(null, "O valor da nota [2] e " + nota [2]);
        
        nome[0] = JOptionPane.showInputDialog("Nome [0]: ");
        nome[1] = JOptionPane.showInputDialog("Nome [1]: ");
        nome[2] = JOptionPane.showInputDialog("Nome [2]: ");
        
        JOptionPane.showMessageDialog(null, "O nome do aluno [0] e " + nome [0]);
        JOptionPane.showMessageDialog(null, "O nome do aluno [1] e " + nome [1]);
        JOptionPane.showMessageDialog(null, "O nome do aluno [2] e " + nome [2]);
      
        
        
    }  
}
