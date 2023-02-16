// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Owner {

    address private owner;
    
    event OwnerSet(address indexed oldOwner, address indexed newOwner);
    
    //throws an error if user is not owner.
    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        // throws an error when require is false.
        _;
    }
    
    constructor() {
        owner = msg.sender; 
        emit OwnerSet(address(0), owner);
    } 
    //this function is owner adress change new owner adress.
    function changeOwner(address newOwner) public isOwner {
        emit OwnerSet(owner, newOwner);
        owner = newOwner;
    }
   // this function is normal get function.Show address with return.
    function getOwner() external view returns (address) {
        return owner;
    }
}
