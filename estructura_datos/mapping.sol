/*
    MAPPINGS: Asociacion clave-valor para guardar y ver datos.
    Key: Puede ser casi cualquier cosa excepto un mapping.
    Value: Puede ser cualquier cosa hasta otro mapping

    #Guardar Datos:
    nombre_mapping [_key] = _value;
    #Ver Datos
    nombre_mapping [_key];
*/
pragma solidity >=0.4.4;

contract mapping_contrato{
    //Declaracion de mapping

    mapping (address => uint) public elegir_numero;

    function elegir_numero_function(uint _numero) public{
        elegir_numero[msg.sender] = _numero;
    }

    function consultar_numero() public view returns(uint){
        return elegir_numero[msg.sender];
    }


    //mapping que relaciona el nombre de una persona con su cantidad de dinero
    mapping (string => uint) public cantidad_dinero;

    function dinero(string memory _nombre, uint _cantidad)public {
        cantidad_dinero[_nombre] = _cantidad;
    }


    function consultar_dinero(string  memory _nombre) public view returns(uint){
        return cantidad_dinero[_nombre];
    }

    //Ejemplo mapping para tipo de datos complejos
    struct persona{
        string nombre;
        uint edad;
    }

    mapping(uint => persona) personas;

    function dui_personas(uint _numerodui, string memory _nombre, uint _edad) public {
        personas[_numerodui] = persona(_nombre, _edad);
    }

    function consultar_persona(uint _dui) public view returns (persona memory){
        return personas[_dui];
    }

}


