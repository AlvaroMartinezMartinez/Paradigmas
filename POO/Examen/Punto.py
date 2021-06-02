class Punto:
    def __init__(self, _A = None, _B = None):
        if _A == None and _B == None:
            self._A = 0
            self._B = 0
        else:
            self._A = _A
            self._B = _B

    def mostrar(self):
        print(self._A,' , ',self._B)
    def mostrarC(self):
        return "({},{})".format(self._A,self._B)