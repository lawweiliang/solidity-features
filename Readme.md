1. Deleting contract

- Delete smart contract by calling selfdestruct function
- Notes, after deleting the contract, it will send the balance of current contract
  the sender(both user and contract).
- For contract, even without fallback function, the destruct function will somehow send balance into that contract

Security wise, it was pretty scary.
