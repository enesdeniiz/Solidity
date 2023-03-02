// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract FunctionVisibility {
    
     int public val;

     
  // Private: Bu fonksiyona sadece bu kontrat ulaşabilir. Dışarıdan kimse bu fonksiyona ulaşamaz
    function privateFunc(int newVal) private  {
        val = newVal;
    }
  // Internal: sadece miras alan kontratlar bu fonksiyonu çağırabilir. Dışarıdan kullanıcı çağıramaz.
    function internalFunc(int newVal) internal {
        privateFunc(newVal);
    }
  // Public: fonksiyonu  herkes çağırabilir ; hem dışarıdan accountlar çağırabilir hemde kontrat çağırabilir.
    function publicFunc(int newVal) public {        
        internalFunc(newVal);       
        //this.externalFunc(newVal);
    }
  // External : Burada ise dışarıdan kullanıcalar çağırabilir fakat kontrat içerisnde çağırlmaz.
    function externalFunc(int newVal) external {
        internalFunc(newVal);
    }
}

  

    

