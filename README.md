Project Title
MyToken - A Basic Fungible Token

Simple Overview
A simplified implementation of a fungible token contract for learning and experimentation.  The main function is to mint and burn tokens to demonstrate token creation and destruction.

Description
This project is a basic Solidity smart contract designed to help beginners understand the core concepts of token creation and management on the Ethereum blockchain. It simulates a simple token with the following features:

Token Information: The contract stores the token's name (JaskaranSingh), abbreviation (JKS), and total supply.
Minting: The mint function allows the creation of new tokens and their allocation to a specified address.
Burning: The burn function enables the destruction of tokens from a specific address, reducing the total supply.
Balance Tracking: The contract uses a mapping (bal) to track the token balances of each address.
While this project is not a fully-fledged ERC-20 token implementation (it lacks transfer and approval functions), it provides a valuable starting point for understanding how tokens work at a fundamental level.

Getting Started
Installing
This project does not require any installation as it is designed to be deployed and interacted with on the Ethereum blockchain using tools like Remix or Hardhat.

Executing Program
Deployment:

Open Remix or your preferred Ethereum development environment.
Copy and paste the contract code into the editor.
Compile the contract to check for errors.
Deploy the contract to an Ethereum network (local testnet or mainnet).
Minting:

After deployment, you'll have access to the contract's functions.
Call the mint function to create new tokens.
Provide the recipient's address (_address) and the desired amount of tokens to mint (_value).
Burning:

To destroy tokens, call the burn function.
Provide the address of the account holding the tokens to burn (_address) and the amount to burn (_value).
Example Commands (Remix):

Mint: MyToken.mint("0x123...", 100) (replace with recipient address and desired amount)
Burn: MyToken.burn("0x123...", 50) (replace with token holder's address and desired amount)
Help
If you encounter issues, ensure:

You have enough funds in the account that deploys the contract to cover gas costs.
You are using a compatible Solidity compiler version (0.8.18 or newer).
The address you are interacting with has sufficient balance for the burn function.
Author
Jaskaran Singh

License
This project is licensed under the MIT License. See the LICENSE file for details.
