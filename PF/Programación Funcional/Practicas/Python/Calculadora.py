
# Cada funcion hace todo por si misma (Pedir numero individualmente)
def suma():
    x = int(input("x: "))
    y = int(input("y: "))
    return x + y

def resta():
    x = int(input("x: "))
    y = int(input("y: "))
    return x - y

def multiplicacion():
    x = int(input("x: "))
    y = int(input("y: "))
    return x * y

def division():
    x = float(input("x: "))
    y = float(input("y: "))
    return x / y

def modulo():
    x = float(input("x: "))
    y = float(input("y: "))
    return x % y

# cumple con el paradigma funcional

# Menu
ban = True
while(ban):
    try:
        print('     Menu     \n'
            + '1 Suma\n'
            + '2 Resta\n'
            + '3 Multiplicacion\n'
            + '4 Division\n'
            + '5 Modulo\n'
            + '6 Salir\n')
        opc = int(input('Opcion : '))

        # Cada metodo es llamado de manera directa e individual y no por un constructor
        if opc == 1:
            print('La suma es: ',suma(),'\n')
        if opc == 2:
            print('La resta es: ', resta(),'\n')
        if opc == 3:
            print('La multiplicacion es: ', multiplicacion(),'\n')
        if opc == 4:
            print('La division es: ', division(),'\n')
        if opc == 5:
            print('El modulo es: ', modulo(),'\n')
        if opc == 6:
            ban = False
            print('Programa finalizado')

    # Posibles errores capturados
    except:
        print('Algo salio mal...\n')      
