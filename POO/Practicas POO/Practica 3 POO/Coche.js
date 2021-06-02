//import _motor from './Motor'
class Coche {
    constructor (nombre, modelo) {
        this.nombre = nombre;
        this.modelo = modelo;
    }
    _motor = new Motor();
    _puerta = new Puerta();
    _rueda = new Rueda();
    _ventana = new Ventana();

    autoencendido() {
        return this.nombre +' '+ this.modelo 
               + ' encendido...'+'\n' 
               + this._motor.arrancarMotor() +'\n'
               + this._puerta.cerrarPuerta(1) +'\n'
               + this._puerta.cerrarPuerta(2) +'\n'
               + this._rueda.ruedaInflada(1) +'\n'
               + this._rueda.ruedaInflada(2) +'\n'
               + this._rueda.ruedaInflada(3) +'\n'
               + this._rueda.ruedaInflada(4) +'\n';
    }
}

class Motor {
    arrancarMotor() {
        return 'Motor arrancado';
    }

    apagarMotor() {
        return 'Motor apagado';
    }
}

class Puerta {
    _ventana = new Ventana(1);

    abrirPuerta(n) {
        return `Abriendo Puerta ${n}`;
    }

    cerrarPuerta(n) {
        return `Cerrando Puerta ${n}`;
    }
}

class Rueda {
    inflarRueda() {
        return 'Inflando Rueda';
    }

    desinflarRueda() {
        return 'Desinflando Rueda';
    }

    ruedaInflada(n) {
        return `Rueda ${n} inflada`;
    }
}

class Ventana {
    constructor(n) {
        this.n = n;
    }
    
    abrirVentana() {
        return 'Abriendo Ventana';
    }

    cerrarVentana() {
        return 'Cerrando Ventana';
    }
}

let c1 = new Coche('McClaren', 'P1');
console.log(c1.autoencendido());