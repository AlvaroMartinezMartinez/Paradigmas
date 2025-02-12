start :-nl,
write('RESPONDE A LAS SIGUIENTES PREGUNTAS'),
nl,
nl,
sera(Animal),
nl,
nl,
write('****************************************'),
nl,
write('Creo que el animal es '),
write(Animal),
nl,
write('****************************************'),
nl,
nl,
/*if hemos acertado el animal*/
write('�He acertado? (s/n) '),
read(Respuesta),
nl,
/*else intentamos introducir una regla para su aprendizaje*/
( (Respuesta == s)
->
borrar,
seguir_jugando ;
write('�Qu� animal es? '),
read(Respuesta1),
nl,
write('Dime una pregunta para '),
write(Respuesta1),
write('que lo diferencie de '),
write(Animal),
write(': '),
read(Respuesta2),
nl,
nl,
asserta( (sera(Respuesta1) :- Animal, verificar(Respuesta2)) ) ,
borrar,
seguir_jugando).
/*Base de conocimiento */
sera(tucan) :- tucan,
!. sera(canguro) :- canguro,
!. sera(koala) :- koala,
!. sera(jirafa) :- jirafa,
!. sera(conejo) :- conejo,
!. sera(oso) :- oso,
!. sera(tigre) :- tigre,
!. sera(aguila) :- aguila,
!. sera(pato) :- pato,
!. sera(gallina) :- gallina,
!. sera(avestruz) :- avestruz,
!. sera(leon) :- leon,
!. sera(elefante) :- elefante,
!. sera(perro) :- perro,
!. sera(gato) :- gato,
!. sera(hipopotamo) :- hipopotamo,
!. sera(caballo) :- caballo,
!. sera(pinguino) :- pinguino.
/* Base de conocimiento identificadores de distintos animales */
/*Cuadrupedos*/
cuadrupedo:- verificar(camina_en_cuatro_patas).
jirafa :- cuadrupedo,
    verificar(tiene_cuello_largo).
conejo :- cuadrupedo,
    verificar(salta).
oso :- cuadrupedo,
    verificar(es_de_gran_tama�o).
tigre :- cuadrupedo,
    verificar(tiene_rayas).
leon :- cuadrupedo,
    verificar(tiene_melena).
elefante :- cuadrupedo,
    verificar(tiene_una_trompa).
perro :- cuadrupedo,
    verificar(ladra).
gato :- cuadrupedo,
    verificar(maulla).
hipopotamo :- cuadrupedo,
    verificar(tiene_una_gran_boca).
caballo :- cuadrupedo,
    verificar(se_puede_montar).
/*Marsupiales*/
marsupial:- verificar(tiene_marsupio).
canguro :- marsupial,
    verificar(salta).
koala:- marsupial,
    verificar(come_eucalipto).
/*Aves*/
ave :- verificar(tiene_alas).
aguila :- ave,
    verificar(es_ave_rapaz).
pato :- ave,
    verificar(nada).
gallina :- ave,
    verificar(es_domestico).
avestruz :- ave,
    verificar(corre_veloz).
pinguino :- ave,
    verificar(viven_en_la_antartida).
tucan :- ave,
    verificar(tiene_pico_grande).

verificar(S) :-
    (cumple(S)
    ->
    true ;
    (no_cumple(S)
    ->
    fail ;
    preguntar(S))).
preguntar(Pregunta) :-
    write(Pregunta),
    write('? (s/n) '),
    read(Respuesta),
    nl,
    ( (Respuesta == s)
    ->
    assert(cumple(Pregunta)) ;
    assert(no_cumple(Pregunta)), fail).

seguir_jugando :-
    write('�Quieres seguir jugando?  '),
    read(Respuesta3),
    ( (Respuesta3 == s)
    ->   start ;
    nl,
    nl,
    write('Hasta luego.'),
    nl,
    nl,
    write('ADIOS'),
    nl).
:- dynamic cumple/1,no_cumple/1,sera/1,verificar/1.
/* Borramos todos los valores */
borrar :- retract(cumple(_)),fail.
borrar :- retract(no_cumple(_)),fail.
borrar.





























