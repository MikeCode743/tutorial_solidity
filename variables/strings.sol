pragma solidity >0.4.4;
pragma experimental ABIEncoderV2;

contract variables{
    //cadena de texto
    string mi_primer_string;
    string public saludo = "Hola Mundo"; //Inicializada    
    string vacion = "";

    //Variables Boolean
    bool mi_primer_bool;
    bool public verdadero = true;
    bool public falso = false;

    //Variables de tipo Bytes
    bytes32 mi_primer_bytes;
    bytes4 mi_segundo_bytes;
    string public nombre = "Miguel";
    bytes32 public hash = keccak256(abi.encodePacked(nombre));
    bytes4 public identificador;

    //Ejemplo
    function ejemploBytes() public{
        identificador = msg.sig;
    }

    address mi_primer_address;
    address public direccion_local = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}