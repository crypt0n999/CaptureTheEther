contract EXP {
    constructor(address _addr) payable{
        GuessTheSecretNumberChallenge victim = GuessTheSecretNumberChallenge(_addr);
        victim.guess.value(1 ether)(238);
    }
}
