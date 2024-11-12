// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { ITestArraysEmitter } from "./ITestArraysEmitter.sol";

contract TestArraysEmitter is ITestArraysEmitter {
    function emitIntArraysEvents(IntArraysStruct memory s) external {
        emit IntArraysEvent1(
            s.int8array,
            s.int16array,
            s.int24array,
            s.int32array,
            s.int40array,
            s.int48array,
            s.int56array,
            s.int64array,
            s.int72array,
            s.int80array
        );
        emit IntArraysEvent2(
            s.int88array,
            s.int96array,
            s.int104array,
            s.int112array,
            s.int120array,
            s.int128array,
            s.int136array,
            s.int144array,
            s.int152array,
            s.int160array
        );
        emit IntArraysEvent3(
            s.int168array,
            s.int176array,
            s.int184array,
            s.int192array,
            s.int200array,
            s.int208array,
            s.int216array,
            s.int224array,
            s.int232array,
            s.int240array,
            s.int248array,
            s.int256array
        );
    }

    function emitUintArraysEvents(UintArraysStruct memory s) external {
        emit UintArraysEvent1(
            s.uint8array,
            s.uint16array,
            s.uint24array,
            s.uint32array,
            s.uint40array,
            s.uint48array,
            s.uint56array,
            s.uint64array,
            s.uint72array,
            s.uint80array
        );
        emit UintArraysEvent2(
            s.uint88array,
            s.uint96array,
            s.uint104array,
            s.uint112array,
            s.uint120array,
            s.uint128array,
            s.uint136array,
            s.uint144array,
            s.uint152array,
            s.uint160array
        );
        emit UintArraysEvent3(
            s.uint168array,
            s.uint176array,
            s.uint184array,
            s.uint192array,
            s.uint200array,
            s.uint208array,
            s.uint216array,
            s.uint224array,
            s.uint232array,
            s.uint240array,
            s.uint248array,
            s.uint256array
        );
    }

    function emitBytesArraysEvents(BytesArraysStruct memory s) external {
        emit BytesArraysEvent1(
            s.bytes1array,
            s.bytes2array,
            s.bytes3array,
            s.bytes4array,
            s.bytes5array,
            s.bytes6array,
            s.bytes7array,
            s.bytes8array,
            s.bytes9array,
            s.bytes10array
        );
        emit BytesArraysEvent2(
            s.bytes11array,
            s.bytes12array,
            s.bytes13array,
            s.bytes14array,
            s.bytes15array,
            s.bytes16array,
            s.bytes17array,
            s.bytes18array,
            s.bytes19array,
            s.bytes20array
        );
        emit BytesArraysEvent3(
            s.bytes21array,
            s.bytes22array,
            s.bytes23array,
            s.bytes24array,
            s.bytes25array,
            s.bytes26array,
            s.bytes27array,
            s.bytes28array,
            s.bytes29array,
            s.bytes30array,
            s.bytes31array,
            s.bytes32array
        );
    }

    function emitMixedArraysEvent(MixedArraysStruct memory s) external {
        emit MixedArraysEvent(s.boolArray, s.stringArray, s.bytesArray);
    }
}
