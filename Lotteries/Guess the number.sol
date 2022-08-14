pragma solidity ^0.4.21;

contract GuessTheNumberChallenge{
    function GuessTheNumberChallenge() public payable {}

    function isComplete() public view returns (bool) {}

    function guess(uint8 n) public payable {}
}

contract EXP {
    constructor (address _addr) public payable{
        GuessTheNumberChallenge victim = GuessTheNumberChallenge(_addr);
        victim.guess.value(1 ether)(42);
    }
}
