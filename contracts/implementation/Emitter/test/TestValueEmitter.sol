// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { ITestValueEmitter } from "./ITestValueEmitter.sol";

contract TestValueEmitter is ITestValueEmitter {
    function emitIntEvents(IntStruct memory s) external {
        emit IntEvent1(
            s.int8val,
            s.int16val,
            s.int24val,
            s.int32val,
            s.int40val,
            s.int48val,
            s.int56val,
            s.int64val,
            s.int72val,
            s.int80val
        );
        emit IntEvent2(
            s.int88val,
            s.int96val,
            s.int104val,
            s.int112val,
            s.int120val,
            s.int128val,
            s.int136val,
            s.int144val,
            s.int152val,
            s.int160val
        );
        emit IntEvent3(
            s.int168val,
            s.int176val,
            s.int184val,
            s.int192val,
            s.int200val,
            s.int208val,
            s.int216val,
            s.int224val,
            s.int232val,
            s.int240val,
            s.int248val,
            s.int256val
        );
    }

    function emitUintEvents(UintStruct memory s) external {
        emit UintEvent1(
            s.uint8val,
            s.uint16val,
            s.uint24val,
            s.uint32val,
            s.uint40val,
            s.uint48val,
            s.uint56val,
            s.uint64val,
            s.uint72val,
            s.uint80val
        );

        emit UintEvent2(
            s.uint88val,
            s.uint96val,
            s.uint104val,
            s.uint112val,
            s.uint120val,
            s.uint128val,
            s.uint136val,
            s.uint144val,
            s.uint152val,
            s.uint160val
        );

        emit UintEvent3(
            s.uint168val,
            s.uint176val,
            s.uint184val,
            s.uint192val,
            s.uint200val,
            s.uint208val,
            s.uint216val,
            s.uint224val,
            s.uint232val,
            s.uint240val,
            s.uint248val,
            s.uint256val
        );
    }

    function emitBytesEvents(BytesStruct memory s) external {
        emit BytesEvent1(
            s.bytes1val,
            s.bytes2val,
            s.bytes3val,
            s.bytes4val,
            s.bytes5val,
            s.bytes6val,
            s.bytes7val,
            s.bytes8val,
            s.bytes9val,
            s.bytes10val
        );

        emit BytesEvent2(
            s.bytes11val,
            s.bytes12val,
            s.bytes13val,
            s.bytes14val,
            s.bytes15val,
            s.bytes16val,
            s.bytes17val,
            s.bytes18val,
            s.bytes19val,
            s.bytes20val
        );

        emit BytesEvent3(
            s.bytes21val,
            s.bytes22val,
            s.bytes23val,
            s.bytes24val,
            s.bytes25val,
            s.bytes26val,
            s.bytes27val,
            s.bytes28val,
            s.bytes29val,
            s.bytes30val,
            s.bytes31val,
            s.bytes32val
        );
    }

    function emitMixedEvent(MixedStruct memory s) external {
        emit MixedEvent(s.boolVal, s.stringVal, s.bytesVal);
    }
}
