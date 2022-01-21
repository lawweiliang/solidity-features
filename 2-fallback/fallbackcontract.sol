  // SPDX-Licensed-Identifier: GPL-3.0

  pragma solidity >=0.7.0 <0.9.0;


  /*
  1) Fallback function is used when function called does not exist
  2) There are two types of fallback 
    - fallback() - Receive ether with data over msg.data
    - receive() - Receive ether with no data over msg.data

  */

  contract FallBackContract{

     event Log(string functionName, address senderAddress, uint amountReceived, bytes transactionData);

     fallback() external payable{
         emit Log("fallback", msg.sender, msg.value, msg.data);
     }

     receive() external payable{
         emit Log("receive", msg.sender, msg.value, "");
     }

  }