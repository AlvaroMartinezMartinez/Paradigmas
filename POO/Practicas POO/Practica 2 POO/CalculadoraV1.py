class Calculadora:
    def __init__(self, a, b):
        self.a = int(a)
        self.b = int(b)
    def suma(self):
        print("La suma: ", self.a + self.b)
    def resta(self):
        print("La resta: ", self.a - self.b)
    def multiplicacion(self):
        print("La multiplicacion: ", self.a * self.b)
    def division(self):
        print("La division: ", self.a / self.b)
        
ban = True
while ban:
    try:
        # Menu
        print("------- Menu: -------")
        print("1.- Suma")
        print("2.- Resta")
        print("3.- Mutiplicacion")
        print("4.- Division")
        print("5.- Salir")
        opc = int(input(": "))
        if opc == 5:
            exit
            ban = False
        else:
            # Entrada de datos
            n1 = int(input("n1: "))
            n2 = int(input("n2: "))
            ob = Calculadora(n1, n2)
            print("---------------------")
            # Llamada de metodos
            if opc == 1:
                ob.suma()
            if opc == 2:
                ob.resta()
            if opc == 3:
                ob.multiplicacion()
            if opc == 4:
                ob.division()
    except:
        print("Ocurrio un error!")
