class Rectangulo:
    def __init__(self,v1,v2,v3,v4):
        self.v1 = v1
        self.v2 = v2
        self.v3 = v3
        self.v4 = v4
    def desplace(self):
        print("Perimetro: ",self.v1 + self.v2 + self.v3 + self.v4)
class Rectangulo2:
    def __init__ (self,base,altura):
        self.altura = altura
        self.base = base
        
    def superficie(self):
        print("Superficie: ",self.altura * self.base)

def main():
    rec = Rectangulo(0.0, 2.0, 6.2, 4.0)
    rec2 = Rectangulo2(10,5)
    
    rec.desplace()
    rec2.superficie()
main()