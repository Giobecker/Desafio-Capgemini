import javax.swing.JOptionPane;

public class Desafio 
{
     public static void main (String []  args) {
     int valorInvestido = Integer.parseInt(
              JOptionPane.showInputDialog ("informe o valor investido"));
     int pessoasVisualizam = valorInvestido * 30;
     int pessoasClicam = pessoasVisualizam / 100 * 12;
     int pessoasCompatilham = pessoasClicam / 20 * 3;

     int pessoasVisualizamCompartilhamento1 = pessoasCompatilham * 40;
     int pessoasClicamCompartilhamento1 = pessoasVisualizamCompartilhamento1 / 100 * 12;
     int pessoasCompatilhamCompartilahemento1 = pessoasClicamCompartilhamento1 / 20 * 30;

     int pessoasVisualizamCompartilhamento2 = pessoasCompatilhamCompartilahemento1 * 40;
     int pessoasClicamCompartilhamento2 = pessoasVisualizamCompartilhamento2 / 100 * 12;
     int pessoasCompartilhamCompartilhamento2 = pessoasClicamCompartilhamento2 / 20 * 3;

     int pessoasVisualizamCompartilhamento3 =  pessoasCompartilhamCompartilhamento2 * 40;

     int totalVisualizacoes = pessoasVisualizam + pessoasVisualizamCompartilhamento1 +
      pessoasVisualizamCompartilhamento2 + pessoasVisualizamCompartilhamento3;

JOptionPane.showInputDialog(null, "o valor investido de R$ "+valorInvestido+" gerou total de"
+ totalVisualizacoes + " Visualizacoes sendo:"
+ "\n Visualizacao original:  " + pessoasVisualizam
+ "\n Visualizacao compartilhamento1: " + pessoasVisualizamCompartilhamento1
+ "\n Visualizacao compartilhamento2: " + pessoasVisualizamCompartilhamento2
+ "\n Visualizacao compartilhamento3: " + pessoasVisualizamCompartilhamento3
) ;    
}
}


