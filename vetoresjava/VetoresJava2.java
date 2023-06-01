package vetoresjava;

import javax.swing.JOptionPane;

public class VetoresJava2 {

    public static void main(String[] args) {

        String[] frutas = new String[5];
        float[] valores = new float[5];
        int[] qtFrutas = new int[5];

        for (int i = 0; i < 3; i++) {

            frutas[i] = JOptionPane.showInputDialog("Nome da fruta?");
            valores[i] = Float.parseFloat(JOptionPane.showInputDialog("Valor da " + frutas[i] + "?"));
            qtFrutas[i] = Integer.parseInt(JOptionPane.showInputDialog("Quantidade da " + frutas[i] + "?"));

        }

        for (int i = 0; i < 3; i++) {

            JOptionPane.showMessageDialog(null, "Fruta: " + frutas[i] + "\n" + valores[i] + " R$\n" + qtFrutas[i] + " UN");

        }
    }
}
