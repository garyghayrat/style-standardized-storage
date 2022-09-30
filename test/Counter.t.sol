// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol"; /// Use absolute paths and named imports.
import {MockERC20} from "solmate/test/utils/mocks/MockERC20.sol";
import {CounterHarness} from "test/CounterHarness.t.sol";
import {CounterScript} from "script/CounterScript.s.sol";
import {Counter} from "src/Counter.sol";

contract CounterTest is Test {
  Counter public counter;

  function setUp() public {
    counter = new Counter();
    counter.setNumber(0);
  }

  function testIncrement() public {
    counter.increment();
    assertEq(counter.number(), 1);
  }

  function testSetNumber(uint x) public {
    counter.setNumber(x);
    assertEq(counter.number(), x);
  }
}
