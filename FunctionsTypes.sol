// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract View {
    uint Number = 123;
    
//veri okunur ama üzerinde değişiklik yapamaz 
    function show() public view returns(uint){
    
        return Number;
    }
    
 //hem veri okunmaz hem de değişiklik yapamaz  
    function add(uint a, uint b) public pure returns(uint){

        return a + b;
    }
}

//public: Herhangi bir akıllı kontrat ve hesap çağırabilir.
//private: Yalnızca fonksiyonun tanımlı olduğu kontratın içerisinde çağırılabilir.
//internal: Tanımlı olduğu kontrat ile birlikte miras olarak alındığı kontrat tarafından da çağırılabili.,
//external: Yalnızca diğer akıllı kontratlar ve hesaplar tarafından çağıralabilir.
