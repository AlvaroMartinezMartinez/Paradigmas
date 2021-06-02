cancionestupida(0):-nl,write('Gomo ya no queda shevvezza , -hic- be boy a ddming...').
cancionestupida(N):-N>1,nl,write(N),write('botellas de cerveza en el suelo'),nl,
    write(N),write('botellas de de cerveza '),nl,write('cojo una  y me la bebo'),nl,
    A is N-1,cancionestupida(A).
cancionestupida(N):-N=1,nl,write(N),write('bodellia de shegvezza en el zsuelo'),nl,
    write(N),write('botella de shegvezza '),nl,
    A is N-1, cancionestupida(A).
