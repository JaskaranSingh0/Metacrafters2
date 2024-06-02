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
