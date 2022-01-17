/*
    Estructuras: Las estructuras nos permiten definir tipos de datos mas complejas.

    struct nombre_estructura {
        string modelo;
        uint cant_ruedas; 
    }
*/

pragma solidity >=0.4.4;

contract estructuras{
    //Cliente pagina web de pago

    struct cliente{
        uint id;
        string nombre;
        string dui;
        string email;
        uint telefono;
        uint tarjeta_credito;
        uint secreto_ccv;
    }

    cliente cliente_uno = cliente(1, "Miguel", "1231231231", "miguel@mai.com", 70009999,1234123412341234,123);

    //Cualquier pagina de compra-venta
    struct producto{
        string nombre;
        uint precio;
    }
    
    producto dulces = producto("bianchi",1);

    //Proyecto coopertativo de ONG para ayudar en diversas causas
    struct organizacion_ong{
        address ong;
        string nombre;
    }  

    organizacion_ong pj_sonrisa = organizacion_ong(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7,"Sonrisa");

    //Causas
    struct causa{
        uint id;
        string nombre;
        uint precio_objetivo;
    }

    causa medicamentos = causa(1,"acetaminofen",1200);


}