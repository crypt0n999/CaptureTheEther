pragma solidity ^0.4.21;

interface FuzzyIdentityChallenge{
     function test1() external returns (bool);
}


contract IName{

    function exp(address _addr) public {
        FuzzyIdentityChallenge victim;
        victim = FuzzyIdentityChallenge(_addr);
        victim.test1();
    } 

    function name() external view returns (bytes32){
        return bytes32("smarx");
    }
}

/*
const util = require('ethereumjs-util');
const rlp = require('rlp');
const generate = require('ethjs-account').generate;
seed='892h@fs8sk^2hSFR*\/8s8shfs.jk39hsoi@hohskd51D1Q8E1%^;DZ1-=.@WWRXNI()VF6/*Z%$C51D1QV*<>FE8RG!FI;"./+-*!DQ39hsoi@hoFE1F5^7E%&*QS'//生成地址所用的种子
function fuzz(){
    for(var k=0;k<50000;k++){
        seed=seed+Math.random().toString(36).substring(12);//为避免重复，生成一定数目后对种子进行更新
        for(var i=0;i<1000;i++){
            res=generate(seed);
            for (var j=0;j<10;j++){
                encodedRlp = rlp.encode([res.address, j]);// 进行rlp编码
                buf = util.sha3(encodedRlp);
                contractAddress =buf.slice(12).toString('hex');//取buffer第12个字节后面的部分作为地址

                if(contractAddress.match("badc0de")){
                    console.log(res);
                    console.log(j);
                    return;
                }
            }
        //console.log(i);
        }
    }
}
fuzz();
*/
