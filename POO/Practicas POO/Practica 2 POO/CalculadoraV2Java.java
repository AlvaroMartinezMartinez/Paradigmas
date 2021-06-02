import java.util.Scanner;

/**
 * CalculadoraJava
 */
public class CalculadoraJava {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean ban = true;
        while (ban) {
            try {
                // Menu
                System.out.println("------- Menu: -------");
                System.out.println("1.- Suma");
                System.out.println("2.- Resta");
                System.out.println("3.- Mutiplicacion");
                System.out.println("4.- Division");
                System.out.println("5.- Modulo");
                System.out.print("6.- Salir" + "\n: ");
                int opc = sc.nextInt();
                if (opc == 6) {
                    ban = false;
                } else {
                    try {
                        // Entrada de datos
                        System.out.print("n1: ");
                        int n1 = sc.nextInt();
                        System.out.print("n2: ");
                        int n2 = sc.nextInt();
                        CalculadoraJava ob = new CalculadoraJava(n1, n2);
                        System.out.println("");
                        // Llamada de metodos
                        if (opc == 1) {
                            ob.suma(); }
                        if (opc == 2) {
                            ob.resta(); }
                        if (opc == 3) {
                            ob.multiplicacion(); }
                        if (opc == 4) {
                            ob.division(); }
                        if (opc == 5) {
                            ob.modulo(); }
                    } catch (Exception e) {
                        System.out.println("Solo numeros!");
                    }
                }
            } catch (Exception e) {
                System.out.println("Ocurrio un error!");
                sc.close();
            }
        }
    }
        // OPERACIONES
        Scanner sc = new Scanner(System.in);
        int a, b, cont = 0;
        boolean ban = true;

        public CalculadoraJava(int a, int b) {
            this.a = a;
            this.b = b;
        }

        public void suma() {
            System.out.println("-- Enter para salir --");
            cont += a + b;
            System.out.println("La suma: " + cont);
            while (ban) {
                try {
                    System.out.print(" + ");
                    String newn = sc.nextLine();
                    if (newn.equals("")) { 
                        break;
                    } else {
                        cont += Integer.parseInt(newn);
                        System.out.println("La suma: " + cont);
                    }
                } catch (Exception e) {
                    break;
                }
            }
        }

        public void resta() {
            System.out.println("-- Enter para salir --");
            cont += a - b;
            System.out.println("La resta: " + cont);
            while (ban) {
                try {
                    System.out.print(" - ");
                    String newn = sc.nextLine();
                    if (newn.equals("")) { break;
                    } else {
                        cont -= Integer.parseInt(newn);
                        System.out.println("La resta: " + cont);
                    }
                } catch (Exception e) {
                    break;
                }
            }
        }

        public void multiplicacion() {
            System.out.println("-- Enter para salir --");
            cont += a * b;
            System.out.println("La multiplicacion: " + cont);
            while (ban) {
                try {
                    System.out.print(" * ");
                    String newn = sc.nextLine();
                    if (newn.equals("")) { break;
                    } else {
                        cont *= Integer.parseInt(newn);
                        System.out.println("La multiplicacion: " + cont);
                    }
                } catch (Exception e) {
                    break;
                }
            }
        }

        public void division() {
            cont += a / b;
            System.out.println("La division: " + (float)cont);
        }

        public void modulo() {
            cont += a % b;
            System.out.println("La modulo: " + cont);
        }
}