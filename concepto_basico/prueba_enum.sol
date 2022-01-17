//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;

contract prueba_enumeraciones{
    //primer ejemplo

    //interrumptor
    enum estado {ON, OFF}

     //variable tipo enum
    estado var_state;

    function encender() public{
        var_state = estado.ON;
    }

    function fijar_estado (uint _k) public {
    var_state = estado(_k)
    }

    function estado() public view returns(estado){
        return var_state;
    }
    enum direcciones {ARRIBA, ABAJO, IZQUIERDA, DERECHA

    direcciones direccion = direcciones.ARRIBA

    function encender() public{
        var_state = estado.ON;
    }

    function encender() public{
        var_state = estado.ON;
    }

}
