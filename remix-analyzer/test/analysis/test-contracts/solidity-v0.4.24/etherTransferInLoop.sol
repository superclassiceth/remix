pragma solidity ^0.4.24;

contract etherTransferInLoop {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function transferInForLoop(uint index) public  {
        for (uint i = index; i < 10; i++) {
            owner.transfer(i);
        }
    }

    function transferInWhileLoop(uint index) public  {
        uint i = index;
        while (i < 10) {
            owner.transfer(i);
            i++;
        }
    }

    function transferInDoWhileLoop(uint index) public  {
        uint i = index;
        do {
            owner.transfer(i);
            i++;
        } while (i < 10);
    }
}