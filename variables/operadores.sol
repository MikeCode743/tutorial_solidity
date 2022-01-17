pragma solidity >=0.4.4;

contract operadores{

    //Operadores Matematicos
    uint a = 32;
    uint b = 4;

    uint public suma = a+b;
    uint public resta = a-b;
    uint public division = a/b;
    uint public multiplicacion = a*b;
    uint public residuo = a%b;
    uint public exponenciacion = a**b;

    //Comparar Enteros
    uint c= 3;
    uint d= 3;

    bool public test1 = a>b;
    bool public test2 = a<b;  
    bool public test3 = c==d;
    bool public test4 = a==d;
    bool public test5 = a!=b;
    bool public test6 = a>=b;

    //Operadores Booleanos

    //Criterios de divisibilidad entre 5:

    function divisibilidad(uint _k) public pure returns(bool){
        uint ultima_cifra = _k%10;
        if((ultima_cifra == 0) || (ultima_cifra == 5)){
            return true;
        }else {
            return false;
        }
    }

    function divisibilidad_2(uint _k) public pure returns(bool){
        uint ultima_cifra = _k%10;
        if((ultima_cifra !=0)&&(ultima_cifra!=5)){
            return false;
        }else {
            return true;
        }
    }
    
}
