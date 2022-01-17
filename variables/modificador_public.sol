/*
si añadimos el modificador public al declarar una variable, se creara una funcion getter

funciona tanto dentro como fuera del contrato

getter: una funcion que nos permite obtener los datos.

<tipo_dato> [public]* <nombre_variable>;

* Paramentro opcional

private: las variables pribvate solo son visibles desde dentro del contrato. 
internal: las variables internal solo son accesibles internamente, solo pueden ser llamadas internamente y contratos que deberiben de el.
public:  Las variables son svisibles en cualquier parte del contrato, forma parte del contrato
*/

pragma solidity >=0.4.4;
pragma experimental ABIEncoderV2;

contract public_private_internal{
    //modificador public
    uint public mi_entero = 45;
    string public mi_string = "Miguel";
    address public owner;

    constructor() public{
        owner = msg.sender;
    }

    //modificador private 
    uint private mi_entero_privado = 10;
    bool private bandera = true;
    
    function test(uint _k) public{
        mi_entero_privado = _k;
    }

    //modificador internal
    
    bytes32 internal hash = keccak256(abi.encodePacked("Hola"));
    address internal direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


}
