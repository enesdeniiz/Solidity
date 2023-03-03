// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
   //Durum değişkenleri blok zincirinde saklanır.
   
    string public text = "Merhaba";
    uint public num = 12345;

    function doSomething() public {
        //Yerel değişkenler blok zincirine kaydedilmez.
        uint i = 456;

        // Global değişkenler
        uint timestamp = block.timestamp; // blok zaman damgası
        address sender = msg.sender; // 
    }
}


//Solidity'de 3 tip değişken vardır.
//yYEREL
//bir işlev içinde bildirildi
//blok zincirinde saklanmaz
//DURUM
//bir fonksiyonun dışında ilan edildi
//blok zincirinde saklanan
//GLOBAL  (blok zinciri hakkında bilgi sağlar)
