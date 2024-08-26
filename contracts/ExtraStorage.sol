// SPDX-LICENSE-Identifier:GPL-3.0
pragma solidity 0.8.8;
import "./SimpleStorage.sol";
contract ExtraStorage is SimpleStorage{
    function store(uint256 n) public override {
        number=n+5;
    }
}