pragma solidity ^0.4.21;

contract GuessTheSecretNumberChallenge {
    bytes32 answerHash = 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365;

    function GuessTheSecretNumberChallenge() public payable {}
    
    function isComplete() public view returns (bool) {}

    function guess(uint8 n) public payable {}
}


contract guessHash {
    bytes32 answerHash = 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365;

    function brute_force () public view returns (uint8) {
        for (uint8 i=0; i<256; i++) {
            if (keccak256(i) == answerHash) {
                return i;
            }
        }
    }
}

contract EXP {
    constructor(address _addr) payable{
        GuessTheSecretNumberChallenge victim = GuessTheSecretNumberChallenge(_addr);
        victim.guess.value(1 ether)(170);
    }
}
