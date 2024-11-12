// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface ITestValueEmitter {
    struct MixedStruct {
        bool boolVal;
        string stringVal;
        bytes bytesVal;
    }

    struct IntStruct {
        int8 int8val;
        int16 int16val;
        int24 int24val;
        int32 int32val;
        int40 int40val;
        int48 int48val;
        int56 int56val;
        int64 int64val;
        int72 int72val;
        int80 int80val;
        int88 int88val;
        int96 int96val;
        int104 int104val;
        int112 int112val;
        int120 int120val;
        int128 int128val;
        int136 int136val;
        int144 int144val;
        int152 int152val;
        int160 int160val;
        int168 int168val;
        int176 int176val;
        int184 int184val;
        int192 int192val;
        int200 int200val;
        int208 int208val;
        int216 int216val;
        int224 int224val;
        int232 int232val;
        int240 int240val;
        int248 int248val;
        int256 int256val;
    }

    struct UintStruct {
        uint8 uint8val;
        uint16 uint16val;
        uint24 uint24val;
        uint32 uint32val;
        uint40 uint40val;
        uint48 uint48val;
        uint56 uint56val;
        uint64 uint64val;
        uint72 uint72val;
        uint80 uint80val;
        uint88 uint88val;
        uint96 uint96val;
        uint104 uint104val;
        uint112 uint112val;
        uint120 uint120val;
        uint128 uint128val;
        uint136 uint136val;
        uint144 uint144val;
        uint152 uint152val;
        uint160 uint160val;
        uint168 uint168val;
        uint176 uint176val;
        uint184 uint184val;
        uint192 uint192val;
        uint200 uint200val;
        uint208 uint208val;
        uint216 uint216val;
        uint224 uint224val;
        uint232 uint232val;
        uint240 uint240val;
        uint248 uint248val;
        uint256 uint256val;
    }

    struct BytesStruct {
        bytes1 bytes1val;
        bytes2 bytes2val;
        bytes3 bytes3val;
        bytes4 bytes4val;
        bytes5 bytes5val;
        bytes6 bytes6val;
        bytes7 bytes7val;
        bytes8 bytes8val;
        bytes9 bytes9val;
        bytes10 bytes10val;
        bytes11 bytes11val;
        bytes12 bytes12val;
        bytes13 bytes13val;
        bytes14 bytes14val;
        bytes15 bytes15val;
        bytes16 bytes16val;
        bytes17 bytes17val;
        bytes18 bytes18val;
        bytes19 bytes19val;
        bytes20 bytes20val;
        bytes21 bytes21val;
        bytes22 bytes22val;
        bytes23 bytes23val;
        bytes24 bytes24val;
        bytes25 bytes25val;
        bytes26 bytes26val;
        bytes27 bytes27val;
        bytes28 bytes28val;
        bytes29 bytes29val;
        bytes30 bytes30val;
        bytes31 bytes31val;
        bytes32 bytes32val;
    }

    event UintEvent1(
        uint8 uint8val,
        uint16 uint16val,
        uint24 uint24val,
        uint32 uint32val,
        uint40 uint40val,
        uint48 uint48val,
        uint56 uint56val,
        uint64 uint64val,
        uint72 uint72val,
        uint80 uint80val
    );

    event UintEvent2(
        uint88 uint88val,
        uint96 uint96val,
        uint104 uint104val,
        uint112 uint112val,
        uint120 uint120val,
        uint128 uint128val,
        uint136 uint136val,
        uint144 uint144val,
        uint152 uint152val,
        uint160 uint160val
    );

    event UintEvent3(
        uint168 uint168val,
        uint176 uint176val,
        uint184 uint184val,
        uint192 uint192val,
        uint200 uint200val,
        uint208 uint208val,
        uint216 uint216val,
        uint224 uint224val,
        uint232 uint232val,
        uint240 uint240val,
        uint248 uint248val,
        uint256 uint256val
    );

    event IntEvent1(
        int8 int8val,
        int16 int16val,
        int24 int24val,
        int32 int32val,
        int40 int40val,
        int48 int48val,
        int56 int56val,
        int64 int64val,
        int72 int72val,
        int80 int80val
    );

    event IntEvent2(
        int88 int88val,
        int96 int96val,
        int104 int104val,
        int112 int112val,
        int128 int120val,
        int128 int128val,
        int136 int136val,
        int144 int144val,
        int152 int152val,
        int160 int160val
    );

    event IntEvent3(
        int168 int168val,
        int176 int176val,
        int184 int184val,
        int192 int192val,
        int200 int200val,
        int208 int208val,
        int216 int216val,
        int224 int224val,
        int232 int232val,
        int240 int240val,
        int248 int248val,
        int256 int256val
    );

    event BytesEvent1(
        bytes1 bytes1val,
        bytes2 bytes2val,
        bytes3 bytes3val,
        bytes4 bytes4val,
        bytes5 bytes5val,
        bytes6 bytes6val,
        bytes7 bytes7val,
        bytes8 bytes8val,
        bytes9 bytes9val,
        bytes10 bytes10val
    );

    event BytesEvent2(
        bytes11 bytes11val,
        bytes12 bytes12val,
        bytes13 bytes13val,
        bytes14 bytes14val,
        bytes15 bytes15val,
        bytes16 bytes16val,
        bytes17 bytes17val,
        bytes18 bytes18val,
        bytes19 bytes19val,
        bytes20 bytes20val
    );

    event BytesEvent3(
        bytes21 bytes21val,
        bytes22 bytes22val,
        bytes23 bytes23val,
        bytes24 bytes24val,
        bytes25 bytes25val,
        bytes26 bytes26val,
        bytes27 bytes27val,
        bytes28 bytes28val,
        bytes29 bytes29val,
        bytes30 bytes30val,
        bytes31 bytes31val,
        bytes32 bytes32val
    );

    event MixedEvent(bool boolVal, string stringVal, bytes bytesVal);
}
