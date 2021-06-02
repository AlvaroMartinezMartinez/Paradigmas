mujer(genny).
mujer(lily).
mujer(henny).
mujer(rose).
mujer(molly).
mujer(andy).
mujer(lucy).
mujer(flor).
mujer(victoria).
mujer(roxanne).
mujer(dalia).
mujer(molly).
mujer(angelina).
hombre(arturo).
hombre(beto).
hombre(luis).
hombre(ted).
hombre(pedro).
hombre(jorge).
hombre(fred).
hombre(alberto).
hombre(james).
hombre(alva).
hombre(raul).
hombre(hugo).

madre(molly,beto).
madre(molly,pedro).
madre(molly,george).
madre(molly,genny).
madre(molly,raul).
madre(flor,victoria).
madre(flor,dalia).
madre(flor,luis).
madre(andy,lucy).
madre(andy,molly).
madre(angelina,fred).
madre(angelina,roxanne).
madre(ginny,james).
madre(ginny,lily).
madre(ginny,alva).
madre(henny,hugo).
madre(henny,rose).
padre(arturo,beto).
padre(arturo,pedro).
padre(arturo,jorge).
padre(arturo,genny).
padre(arturo,raul).
padre(beto,victoria).
padre(beto,dalia).
padre(beto,luis).
padre(pedro,lucy).
padre(pedro,molly).
padre(george,fred).
padre(george,roxanne).
padre(alberto,james).
padre(alberto,lily).
padre(alberto,alva).
padre(ron,hugo).
padre(ron,rose).
padre(ron,ted).

paa(Padre, Hijo) :- padre(Padre,Hijo).
paa(Madre, Hijo) :- madre(Madre, Hijo).
bro(H1, H2) :- hombre(H1),((madre(_,H1), madre(_,H2));(padre(_,H1),padre(_,H2))).
bros(H1, H2) :- padre(paa, H1) ; padre(paa, H2) ; (madre(paa, H1); madre(paa, H2)).
broda(H1, H2) :- mujer(H1),((madre(_,H1), madre(_,H2));(padre(_,H1),padre(_,H2))).
viejo(Nieto, Abuelo) :- padre(Padre,Nieto), padre(Abuelo, Padre).
viejo(Nieto, Abuelo) :- madre(Madre,Nieto), madre(Abuelo, Madre).
