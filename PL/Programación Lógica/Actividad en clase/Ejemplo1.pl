%ejemplo%

hombre(paa).
hombre(alva).
hombre(christian).
hombre(jaciel).
mujer(maa).

esposos(maa, paa).
esposos(paa, maa).

padre(paa, alva).
padre(paa, christian).
padre(paa, jaciel).
madre(maa, alva).
madre(maa, christian).
madre(maa, jaciel).

hermano(A, B) :- padre(C, A), padre(C, B).
