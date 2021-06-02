class Persona:
    nombre = "Alva"
    edad = "20"
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def mostrar():
        return 

class Empleado(Persona):
    sueldo_bruto = 1500

    def __init__(self, sueldo_bruto):
        super().__init__()
        self.sueldo_bruto = sueldo_bruto

    Persona.mostrar();

    def calcular_salario_neto(self):
        return self

class Cliente(Persona):
    nombre_empresa='idk'
    telefono_de_contacto='272'

    def __init__(self, nombre_empresa, telefono_de_contacto):
        super().__init__()
        self.nombre_empresa = nombre_empresa
        self.telefono_de_contacto = telefono_de_contacto

    Persona.mostrar();
        
class Directivo(Empleado):
    categoria = "Superior"

    def __init__(self, categoria):
        super().__init__()
        self.categoria = categoria
        
    Persona.mostrar();

class Empresa():
    nombre = "MatGroup"