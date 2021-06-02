from Punto import Punto


class Linea:
    def __init__(self, _pA=Punto(), _pB=Punto()):
        if _pA is None and _pB is None:
            self._pA = Punto(0, 0)
            self._pB = Punto(0, 0)
        else:
            self._pA = _pA
            self._pB = _pB

    def mueveDerecha(self, mov):
        setattr(self._pA, 'x', self._pA._A + mov)
        setattr(self._pB, 'x', self._pB._A + mov)

    def mueveIzquierda(self, mov):
        setattr(self._pA, 'x', self._pA._A - mov)
        setattr(self._pB, 'x', self._pB._A - mov)

    def mueveArriba(self, mov):
        setattr(self._pA, 'y', self._pA._B + mov)
        setattr(self._pB, 'y', self._pB._B + mov)

    def mueveAbajo(self,mov):
        setattr(self._pA, 'y', self._pA._B - mov)
        setattr(self._pB, 'y', self._pB._B - mov)

    def mostrar(self):
        print(self._pA.mostrarC(), self._pB.mostrarC())

l1 = Linea(0.0,5.0)
l1.mostrar()