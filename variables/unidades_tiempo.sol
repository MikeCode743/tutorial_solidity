pragma solidity >=0.4.4;

contract tiempo{

    //Unidades de tiempo
    // uint public tiempo_actual = now; NOW esta Despreciado
    uint public tiempo_actual = block.timestamp;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuentas_dias = 50 days;
    uint public una_semana = 1 weeks;


    function mas_segundos() public view returns(uint){
        return block.timestamp + 50 seconds;
    }

    function mas_horas() public view returns(uint){
        return block.timestamp + 48 hours;
    }

    function mas_dias() public view returns(uint){
        return block.timestamp + 5 days;
    }

    function mas_semanas() public view returns(uint){
        return block.timestamp + 1 weeks;
    }    

}