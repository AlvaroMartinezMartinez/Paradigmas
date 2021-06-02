class Puerta {
    constructor(n) {
        this.n = n;
    }
    
    ventana = new Ventana(1);

    abrirPuerta() {
        return 'Abriendo Puerta';
    }

    cerrarPuerta() {
        return 'Cerrando Puerta';
    }
}