// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitives {
    bool public boo = true; //bool is true or false

    /*
    Signed and unsigned integers of various sizes meaning non negative integers
    different sizes are available. For example ;
        uint8   ranges from 0 to 2 ** 8 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    
    int public i256 = 45126;
    int public i = -1312; // int is same as int256
    

    /*
    address: Holds a 20 byte value (size of an Ethereum address).
    address payable: Same as address, but with the additional members transfer and send.
    */

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
