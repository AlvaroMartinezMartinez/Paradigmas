enfermo_de(alva, gripe).
tiene_sintoma(alee, cansancio).
sintoma_de(fiebre, gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
elimina(vitaminas,cansancio).
elimina(aspirina,fiebre).
elimina(jarabe,tos).
recetar_a(X,Y):-enfermo_de(Y,A),alivia(X,A).
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).
enfermo_de(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y).
