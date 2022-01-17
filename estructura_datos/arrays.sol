/*
    Cada elemento del array debe ser del mismo tipo
    
    **Longitud Fisica
        var_array [3] public* nombre_array
    
    **Longitud dinamico
        var_array [] public* nombre_array

    **Inicializacion
        var_array [] public* nombre_array = [123];
    Se escriben dentro de los corchetes los valores y posiciones que se desea inicializar.


    **Funcion PUSH: Añade un valor al final del array dinamico(NO SE PUEDE USAR CON ARRAYS FIJOS)
        nombre_array.push(123);    

    **FUNCION LENGTH: devuelve la longitud del array
        nombre_array.length;

    Se pueden inicializar todo el conjunto o un solo subconjunto
*/

pragma solidity >=0.4.4;

contract contracto_array{
    //declaracion de arrays

    uint[5] public array_enteros = [1,2,3];
    string[15] array_string;
    uint[7] array_enteros_32_bits;

    uint[] public array_dinamico_enteros;
    struct struct_persona{
        string nombre;
        uint edad;
    }

    struct_persona[] public array_dinamico_personas;

    function modificiar_array(uint _k) public {
        array_dinamico_enteros.push(_k);
    }


    function modificiar_persona(string memory _nombre, uint _k) public {
        array_dinamico_personas.push(struct_persona(_nombre, _k));
    }

    function obtener_persona(uint _i)public view returns(struct_persona memory){
        return array_dinamico_personas[_i];
    }

}

