// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IUintEvents} from "./IUintEvents.sol";

contract UintEmitter is IUintEvents {
    uint8 private uint8Val;
    uint16 private uint16Val;
    uint24 private uint24Val;
    uint32 private uint32Val;
    uint40 private uint40Val;
    uint48 private uint48Val;
    uint56 private uint56Val;
    uint64 private uint64Val;
    uint72 private uint72Val;
    uint80 private uint80Val;
    uint88 private uint88Val;
    uint96 private uint96Val;
    uint104 private uint104Val;
    uint112 private uint112Val;
    uint120 private uint120Val;
    uint128 private uint128Val;
    uint136 private uint136Val;
    uint144 private uint144Val;
    uint152 private uint152Val;
    uint160 private uint160Val;
    uint168 private uint168Val;
    uint176 private uint176Val;
    uint184 private uint184Val;
    uint192 private uint192Val;
    uint200 private uint200Val;
    uint208 private uint208Val;
    uint216 private uint216Val;
    uint224 private uint224Val;
    uint232 private uint232Val;
    uint240 private uint240Val;
    uint248 private uint248Val;
    uint256 private uint256Val;

    uint8[3] private uint8Array = [0, 1, 2];
    uint16[3] private uint16Array = [0, 1, 2];
    uint24[3] private uint24Array = [0, 1, 2];
    uint32[3] private uint32Array = [0, 1, 2];
    uint40[3] private uint40Array = [0, 1, 2];
    uint48[3] private uint48Array = [0, 1, 2];
    uint56[3] private uint56Array = [0, 1, 2];
    uint64[3] private uint64Array = [0, 1, 2];
    uint72[3] private uint72Array = [0, 1, 2];
    uint256[3] private uint256Array = [0, 1, 2];

    uint8[] private uint8Slice = [0, 1, 2];
    uint16[] private uint16Slice = [0, 1, 2];
    uint24[] private uint24Slice = [0, 1, 2];
    uint32[] private uint32Slice = [0, 1, 2];
    uint40[] private uint40Slice = [0, 1, 2];
    uint48[] private uint48Slice = [0, 1, 2];
    uint56[] private uint56Slice = [0, 1, 2];
    uint64[] private uint64Slice = [0, 1, 2];
    uint72[] private uint72Slice = [0, 1, 2];
    uint256[] private uint256Slice = [0, 1, 2];

    function emitUintEvents() external {
        emit Uint8Event(uint8Val);
        emit Uint16Event(uint16Val);
        emit Uint24Event(uint24Val);
        emit Uint32Event(uint32Val);
        emit Uint40Event(uint40Val);
        emit Uint48Event(uint48Val);
        emit Uint56Event(uint56Val);
        emit Uint64Event(uint64Val);
        emit Uint72Event(uint72Val);
        emit Uint80Event(uint80Val);
        emit Uint88Event(uint88Val);
        emit Uint96Event(uint96Val);
        emit Uint104Event(uint104Val);
        emit Uint112Event(uint112Val);
        emit Uint120Event(uint120Val);
        emit Uint128Event(uint128Val);
        emit Uint136Event(uint136Val);
        emit Uint144Event(uint144Val);
        emit Uint152Event(uint152Val);
        emit Uint160Event(uint160Val);
        emit Uint168Event(uint168Val);
        emit Uint176Event(uint176Val);
        emit Uint184Event(uint184Val);
        emit Uint192Event(uint192Val);
        emit Uint200Event(uint200Val);
        emit Uint208Event(uint208Val);
        emit Uint216Event(uint216Val);
        emit Uint224Event(uint224Val);
        emit Uint232Event(uint232Val);
        emit Uint240Event(uint240Val);
        emit Uint248Event(uint248Val);
        emit Uint256Event(uint256Val);
    }

    function emitUintIndexedEvents() external {
        emit Uint8EventIndexed(uint8Val);
        emit Uint16EventIndexed(uint16Val);
        emit Uint24EventIndexed(uint24Val);
        emit Uint32EventIndexed(uint32Val);
        emit Uint40EventIndexed(uint40Val);
        emit Uint48EventIndexed(uint48Val);
        emit Uint56EventIndexed(uint56Val);
        emit Uint64EventIndexed(uint64Val);
        emit Uint72EventIndexed(uint72Val);
        emit Uint80EventIndexed(uint80Val);
        emit Uint88EventIndexed(uint88Val);
        emit Uint96EventIndexed(uint96Val);
        emit Uint104EventIndexed(uint104Val);
        emit Uint112EventIndexed(uint112Val);
        emit Uint120EventIndexed(uint120Val);
        emit Uint128EventIndexed(uint128Val);
        emit Uint136EventIndexed(uint136Val);
        emit Uint144EventIndexed(uint144Val);
        emit Uint152EventIndexed(uint152Val);
        emit Uint160EventIndexed(uint160Val);
        emit Uint168EventIndexed(uint168Val);
        emit Uint176EventIndexed(uint176Val);
        emit Uint184EventIndexed(uint184Val);
        emit Uint192EventIndexed(uint192Val);
        emit Uint200EventIndexed(uint200Val);
        emit Uint208EventIndexed(uint208Val);
        emit Uint216EventIndexed(uint216Val);
        emit Uint224EventIndexed(uint224Val);
        emit Uint232EventIndexed(uint232Val);
        emit Uint240EventIndexed(uint240Val);
        emit Uint248EventIndexed(uint248Val);
        emit Uint256EventIndexed(uint256Val);
    }

    function emitUintArrayEvents() external {
        emit Uint8ArrayEvent(uint8Array);
        emit Uint16ArrayEvent(uint16Array);
        emit Uint24ArrayEvent(uint24Array);
        emit Uint32ArrayEvent(uint32Array);
        emit Uint40ArrayEvent(uint40Array);
        emit Uint48ArrayEvent(uint48Array);
        emit Uint56ArrayEvent(uint56Array);
        emit Uint64ArrayEvent(uint64Array);
        emit Uint72ArrayEvent(uint72Array);
        emit Uint256ArrayEvent(uint256Array);
    }

    function emitUintArrayIndexedEvents() external {
        emit Uint8ArrayEventIndexed(uint8Array);
        emit Uint16ArrayEventIndexed(uint16Array);
        emit Uint24ArrayEventIndexed(uint24Array);
        emit Uint32ArrayEventIndexed(uint32Array);
        emit Uint40ArrayEventIndexed(uint40Array);
        emit Uint48ArrayEventIndexed(uint48Array);
        emit Uint56ArrayEventIndexed(uint56Array);
        emit Uint64ArrayEventIndexed(uint64Array);
        emit Uint72ArrayEventIndexed(uint72Array);
        emit Uint256ArrayEventIndexed(uint256Array);
    }

    function emitUintSliceEvents() external {
        emit Uint8SliceEvent(uint8Slice);
        emit Uint16SliceEvent(uint16Slice);
        emit Uint24SliceEvent(uint24Slice);
        emit Uint32SliceEvent(uint32Slice);
        emit Uint40SliceEvent(uint40Slice);
        emit Uint48SliceEvent(uint48Slice);
        emit Uint56SliceEvent(uint56Slice);
        emit Uint64SliceEvent(uint64Slice);
        emit Uint72SliceEvent(uint72Slice);
        emit Uint256SliceEvent(uint256Slice);
    }

    function emitUintSliceIndexedEvents() external {
        emit Uint8SliceEventIndexed(uint8Slice);
        emit Uint16SliceEventIndexed(uint16Slice);
        emit Uint24SliceEventIndexed(uint24Slice);
        emit Uint32SliceEventIndexed(uint32Slice);
        emit Uint40SliceEventIndexed(uint40Slice);
        emit Uint48SliceEventIndexed(uint48Slice);
        emit Uint56SliceEventIndexed(uint56Slice);
        emit Uint64SliceEventIndexed(uint64Slice);
        emit Uint72SliceEventIndexed(uint72Slice);
        emit Uint256SliceEventIndexed(uint256Slice);
    }
}
