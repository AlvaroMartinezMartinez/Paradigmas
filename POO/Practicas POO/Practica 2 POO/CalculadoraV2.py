class Calculadora:
    def __init__(self, a, b):
        self.a = int(a)
        self.b = int(b)
    
    def suma(self):
        cont = 0
        cont += self.a + self.b
        print("La suma:",cont)
        while ban:
            try:
                newn = int(input(" + "))
                if not newn: break
                else:
                    cont += newn
                    print("La suma:",cont)
            except:
                break
    def resta(self):
        cont = 0
        cont += self.a - self.b
        print("La resta:",cont)
        while ban:
            try:
                newn = int(input(" - "))
                if not newn: break
                else:
                    cont -= newn
                    print("La resta:",cont)
            except:
                break
    def multiplicacion(self):
        cont = 0
        cont += self.a * self.b
        print("La multiplicacion:",cont)
        while ban:
            try:
                newn = int(input(" * "))
                if not newn: break
                else:
                    cont *= newn
                    print("La multiplicacion:",cont)
            except:
                break
    def division(self):
        print("La division: ", self.a / self.b)
    def modulo(self):
        print("El modulo: ", self.a % self.b)
        
ban = True
while ban:
    try:
        # Menu
        print("------- Menu: -------")
        print("1.- Suma")
        print("2.- Resta")
        print("3.- Mutiplicacion")
        print("4.- Division")
        print("5.- Modulo")
        print("6.- Salir")
        opc = int(input(": "))
        if opc == 6:
            exit
            ban = False
        if opc > 0 & opc < 6:
            # Entrada de datos
            n1 = int(input("n1: "))
            n2 = int(input("n2: "))
            ob = Calculadora(n1, n2)
            print("")
            print("- Enter para salir -")
            # Llamada de metodos
            if opc == 1:
                ob.suma()
            if opc == 2:
                ob.resta()
            if opc == 3:
                ob.multiplicacion()
            if opc == 4:
                ob.division()
            if opc == 5:
                ob.modulo()
    except:
        print("Ocurrio un error!")
