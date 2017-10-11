pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Test is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Test(address _owner)  UpgradeableToken(_owner) {
    name = "Test";
    symbol = "tst";
    totalSupply = 1000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}