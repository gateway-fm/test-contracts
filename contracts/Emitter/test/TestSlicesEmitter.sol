// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ITestSlicesEmitter} from "./ITestSlicesEmitter.sol";

contract TestSlicesEmitter is ITestSlicesEmitter {
    function emitIntSlicesEvents(IntSlicesStruct memory s) external {
        emit IntSlicesEvent1(
            s.int8slice,
            s.int16slice,
            s.int24slice,
            s.int32slice,
            s.int40slice,
            s.int48slice,
            s.int56slice,
            s.int64slice,
            s.int72slice,
            s.int80slice
        );
        emit IntSlicesEvent2(
            s.int88slice,
            s.int96slice,
            s.int104slice,
            s.int112slice,
            s.int120slice,
            s.int128slice,
            s.int136slice,
            s.int144slice,
            s.int152slice,
            s.int160slice
        );
        emit IntSlicesEvent3(
            s.int168slice,
            s.int176slice,
            s.int184slice,
            s.int192slice,
            s.int200slice,
            s.int208slice,
            s.int216slice,
            s.int224slice,
            s.int232slice,
            s.int240slice,
            s.int248slice,
            s.int256slice
        );
    }

    function emitUintSlicesEvents(UintSlicesStruct memory s) external {
        emit UintSlicesEvent1(
            s.uint8slice,
            s.uint16slice,
            s.uint24slice,
            s.uint32slice,
            s.uint40slice,
            s.uint48slice,
            s.uint56slice,
            s.uint64slice,
            s.uint72slice,
            s.uint80slice
        );
        emit UintSlicesEvent2(
            s.uint88slice,
            s.uint96slice,
            s.uint104slice,
            s.uint112slice,
            s.uint120slice,
            s.uint128slice,
            s.uint136slice,
            s.uint144slice,
            s.uint152slice,
            s.uint160slice
        );
        emit UintSlicesEvent3(
            s.uint168slice,
            s.uint176slice,
            s.uint184slice,
            s.uint192slice,
            s.uint200slice,
            s.uint208slice,
            s.uint216slice,
            s.uint224slice,
            s.uint232slice,
            s.uint240slice,
            s.uint248slice,
            s.uint256slice
        );
    }

    function emitBytesSlicesEvents(BytesSlicesStruct memory s) external {
        emit BytesSlicesEvent1(
            s.bytes1slice,
            s.bytes2slice,
            s.bytes3slice,
            s.bytes4slice,
            s.bytes5slice,
            s.bytes6slice,
            s.bytes7slice,
            s.bytes8slice,
            s.bytes9slice,
            s.bytes10slice
        );
        emit BytesSlicesEvent2(
            s.bytes11slice,
            s.bytes12slice,
            s.bytes13slice,
            s.bytes14slice,
            s.bytes15slice,
            s.bytes16slice,
            s.bytes17slice,
            s.bytes18slice,
            s.bytes19slice,
            s.bytes20slice
        );
        emit BytesSlicesEvent3(
            s.bytes21slice,
            s.bytes22slice,
            s.bytes23slice,
            s.bytes24slice,
            s.bytes25slice,
            s.bytes26slice,
            s.bytes27slice,
            s.bytes28slice,
            s.bytes29slice,
            s.bytes30slice,
            s.bytes31slice,
            s.bytes32slice
        );
    }

    function emitMixedArraysEvent(MixedSlicesStruct memory s) external {
        emit MixedSlicesEvent(s.boolSlice, s.stringSlice, s.bytesSlice);
    }
}
