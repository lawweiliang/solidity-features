// SPDX-Licensed-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
1) Delete smart contract by calling selfdestruct function
2) Notes, after deleting the contract, it will send the balance of current contract to the sender(both user and contract).
3) For contract, even without fallback function, the destruct function will somehow send balance into that contract

Security wise, it is pretty scary. 
*/

  contract DeleteContractTesting{

     constructor () payable{}

     function destroyContract() external{
         selfdestruct(payable(msg.sender));
     }

    function getValue() external pure returns(uint){
        return 456;
    }
  }


  //Hacking, for the owner part, can use modifier
  contract HackingContract{

    address owner = msg.sender;

    function getBalance() external view returns (uint){
       return address(this).balance;
    }
     
     function hackDeleteContract(DeleteContractTesting _deleteContract) external{
         _deleteContract.destroyContract();
     }

     function withdraw() external {
         require(msg.sender == owner, 'not ownder');
         payable(msg.sender).transfer(address(this).balance);
     }


  }