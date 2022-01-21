1. Deleting contract

- Delete smart contract by calling `selfdestruct` function
- Notes, after deleting the contract, it will send the balance of current contract
  the sender(both user and contract).
- For contract, even without fallback function, the destruct function will somehow send balance into that contract

Security wise, it was pretty scary.

2. Fallback function

- Fallback function is used when function called does not exist

- There are two types of fallback

  - fallback() - Receive ether with data over msg.data
  - receive() - Receive ether with no data over msg.data
