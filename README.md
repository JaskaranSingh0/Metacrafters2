# MyToken - A Basic Fungible Token

A simplified implementation of a fungible token contract for learning and experimentation.  The main function is to mint and burn tokens to demonstrate token creation and destruction.

## Description

This project is a basic Solidity smart contract designed to help beginners understand the core concepts of token creation and management on the Ethereum blockchain. It simulates a simple token with the following features:

Token Information: The contract stores the token's name (JaskaranSingh), abbreviation (JKS), and total supply.
Minting: The mint function allows the creation of new tokens and their allocation to a specified address.
Burning: The burn function enables the destruction of tokens from a specific address, reducing the total supply.
Balance Tracking: The contract uses a mapping (bal) to track the token balances of each address.

While this project is not a fully-fledged ERC-20 token implementation (it lacks transfer and approval functions), it provides a valuable starting point for understanding how tokens work at a fundamental level.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public Name = "JaskaranSingh";
    string public Abbrv = "JKS";
    uint256 public Supply = 0;

    mapping(address=>uint256) public bal;

    function mint(address _address, uint256 _value) public {
        Supply += _value;
        bal[_address] += _value;
    }

    function burn(address _address, uint256 _value) public { 
        require(bal[_address] >= _value,"Insufficient balance"); 
        Supply -= _value;
        bal[_address] -= _value;
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by copying the address available in the upper tabs and then you can mint and burn the tokens as per your requirements.

## Authors

Jaskaran Singh
[@Jaskaran_990]([https://twitter.com/Jaskaran_990])


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
