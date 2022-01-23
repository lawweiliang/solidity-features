// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


/*
1) The different is
   encode -> Provide more data
   encodePacked -> Provide less data(compact)
*/

contract UnderstandEncode{

    function funcEncode (string memory text1, uint num, string memory text2) external pure returns (bytes memory){
        return abi.encode(text1, num, text2);
    }

    function funcEncodePacked(string memory text1, string memory text2) external pure returns (bytes memory){
        return abi.encodePacked(text1, text2);
    }

    //Different input generate same hash "AAAA", "BBB" and "AAA", "ABBB"
    function hashColision(string memory text1, string memory text2) external pure returns(bytes32){
        return keccak256(abi.encodePacked(text1, text2));
    }

    function hash(string memory text1, uint num1, string memory text2) external pure returns(bytes32){
        return keccak256(abi.encodePacked(text1, num1, text2));
    }
}