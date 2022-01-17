//Son una manera para el usuario de crear su propio tipo de dato

/*
    declarar una variable de tipo enum
    <nombre_enumeracion><nombre_variable>

    debe tener almenos un miembro.

    NO SE DEBE TERMINAR CON UN ";"

    Modificar el valor de una variable
    -Especificando la opcion de la enumeracion
        <nombre_variable> = <nombre_enumeracion>.<valor_enumeacion>
*/

//Indicarla la version
pragma solidity >=0.4.4;

contract ejemplo_enumeracion {
    //Enumracion de interruptor

    enum estado { ON, OFF}
    
    //Variables de tipo de enum
    estado state;
    
    function encender() public {
        state = estado.ON;
    }
    
    function fijar_estado(uint _k) public {
        state = estado(_k); 
    }

    function estado_function() public view returns(estado){
        return state;
    }

    //Enumeracion de direcciones
    enum direcciones {ARRIBA, ABAJO, DERECHA, IZQUIERDA}

    //Variables de tipo enum (direcciones)
    direcciones direccion = direcciones.ARRIBA;

    function arriba_function() public{
        direccion = direcciones.ARRIBA;
    }

    function abajo_function() public{
        direccion = direcciones.ABAJO;
    }

    function derecha_function() public{
        direccion = direcciones.DERECHA;
    }

    function izquierda_function() public{
        direccion = direcciones.IZQUIERDA;
    }

    function fijar_direcciones(uint _k) public{
        direccion = direcciones(_k);
    }

    function direcciones_function() public view returns(direcciones){
        return direccion;
    }
}