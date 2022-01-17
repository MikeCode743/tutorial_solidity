/*
Casteo de variables 
podemos transformar un int o un uint con y numero de bits a un bits a un uint ( o un int) con x numeros de bits.

uint <x> (dato_uint<y>);
int <x> (dato_int<y>);
*/

pragma solidity >=0.4.4;

contract casteo {
    //Ejemplo de casteo de variables

    uint8 entero_8_bits = 42;
    uint64 entero_64_bits = 60000;
    uint entero_256_bits = 1000000;
    
    int16 entero_16_bits = 156;
    int120 entero_120_bits = 900000;
    int entero = 5000000;

    //Casteo de las variables
    uint64 public casteo_1 = uint64(entero_8_bits);
    uint64 public casteo_2 = uint64(entero_256_bits); 
//    uint8 public casteo_3 = uint8(entero_16_bits);  //no se puede convertir a inferior cantidad de bits
    int public casteo_4 = int(entero_120_bits);
    int public casteo_5 = int(entero_256_bits);

    function convertir(uint8 _k) public pure returns(uint64){ 
        return uint64(_k);
    }

}