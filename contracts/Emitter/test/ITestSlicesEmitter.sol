// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface ITestSlicesEmitter {
    struct MixedSlicesStruct {
        bool[] boolSlice;
        string[] stringSlice;
        bytes[] bytesSlice;
    }

    struct IntSlicesStruct {
        int8[] int8slice;
        int16[] int16slice;
        int24[] int24slice;
        int32[] int32slice;
        int40[] int40slice;
        int48[] int48slice;
        int56[] int56slice;
        int64[] int64slice;
        int72[] int72slice;
        int80[] int80slice;
        int88[] int88slice;
        int96[] int96slice;
        int104[] int104slice;
        int112[] int112slice;
        int120[] int120slice;
        int128[] int128slice;
        int136[] int136slice;
        int144[] int144slice;
        int152[] int152slice;
        int160[] int160slice;
        int168[] int168slice;
        int176[] int176slice;
        int184[] int184slice;
        int192[] int192slice;
        int200[] int200slice;
        int208[] int208slice;
        int216[] int216slice;
        int224[] int224slice;
        int232[] int232slice;
        int240[] int240slice;
        int248[] int248slice;
        int256[] int256slice;
    }

    struct UintSlicesStruct {
        uint8[] uint8slice;
        uint16[] uint16slice;
        uint24[] uint24slice;
        uint32[] uint32slice;
        uint40[] uint40slice;
        uint48[] uint48slice;
        uint56[] uint56slice;
        uint64[] uint64slice;
        uint72[] uint72slice;
        uint80[] uint80slice;
        uint88[] uint88slice;
        uint96[] uint96slice;
        uint104[] uint104slice;
        uint112[] uint112slice;
        uint120[] uint120slice;
        uint128[] uint128slice;
        uint136[] uint136slice;
        uint144[] uint144slice;
        uint152[] uint152slice;
        uint160[] uint160slice;
        uint168[] uint168slice;
        uint176[] uint176slice;
        uint184[] uint184slice;
        uint192[] uint192slice;
        uint200[] uint200slice;
        uint208[] uint208slice;
        uint216[] uint216slice;
        uint224[] uint224slice;
        uint232[] uint232slice;
        uint240[] uint240slice;
        uint248[] uint248slice;
        uint256[] uint256slice;
    }

    struct BytesSlicesStruct {
        bytes1[] bytes1slice;
        bytes2[] bytes2slice;
        bytes3[] bytes3slice;
        bytes4[] bytes4slice;
        bytes5[] bytes5slice;
        bytes6[] bytes6slice;
        bytes7[] bytes7slice;
        bytes8[] bytes8slice;
        bytes9[] bytes9slice;
        bytes10[] bytes10slice;
        bytes11[] bytes11slice;
        bytes12[] bytes12slice;
        bytes13[] bytes13slice;
        bytes14[] bytes14slice;
        bytes15[] bytes15slice;
        bytes16[] bytes16slice;
        bytes17[] bytes17slice;
        bytes18[] bytes18slice;
        bytes19[] bytes19slice;
        bytes20[] bytes20slice;
        bytes21[] bytes21slice;
        bytes22[] bytes22slice;
        bytes23[] bytes23slice;
        bytes24[] bytes24slice;
        bytes25[] bytes25slice;
        bytes26[] bytes26slice;
        bytes27[] bytes27slice;
        bytes28[] bytes28slice;
        bytes29[] bytes29slice;
        bytes30[] bytes30slice;
        bytes31[] bytes31slice;
        bytes32[] bytes32slice;
    }

    event UintSlicesEvent1(
        uint8[] uint8slice,
        uint16[] uint16slice,
        uint24[] uint24slice,
        uint32[] uint32slice,
        uint40[] uint40slice,
        uint48[] uint48slice,
        uint56[] uint56slice,
        uint64[] uint64slice,
        uint72[] uint72slice,
        uint80[] uint80slice
    );
    event UintSlicesEvent2(
        uint88[] uint88slice,
        uint96[] uint96slice,
        uint104[] uint104slice,
        uint112[] uint112slice,
        uint120[] uint120slice,
        uint128[] uint128slice,
        uint136[] uint136slice,
        uint144[] uint144slice,
        uint152[] uint152slice,
        uint160[] uint160slice
    );
    event UintSlicesEvent3(
        uint168[] uint168slice,
        uint176[] uint176slice,
        uint184[] uint184slice,
        uint192[] uint192slice,
        uint200[] uint200slice,
        uint208[] uint208slice,
        uint216[] uint216slice,
        uint224[] uint224slice,
        uint232[] uint232slice,
        uint240[] uint240slice,
        uint248[] uint248slice,
        uint256[] uint256slice
    );

    event IntSlicesEvent1(
        int8[] int8slice,
        int16[] int16slice,
        int24[] int24slice,
        int32[] int32slice,
        int40[] int40slice,
        int48[] int48slice,
        int56[] int56slice,
        int64[] int64slice,
        int72[] int72slice,
        int80[] int80slice
    );
    event IntSlicesEvent2(
        int88[] int88slice,
        int96[] int96slice,
        int104[] int104slice,
        int112[] int112slice,
        int120[] int120slice,
        int128[] int128slice,
        int136[] int136slice,
        int144[] int144slice,
        int152[] int152slice,
        int160[] int160slice
    );
    event IntSlicesEvent3(
        int168[] int168slice,
        int176[] int176slice,
        int184[] int184slice,
        int192[] int192slice,
        int200[] int200slice,
        int208[] int208slice,
        int216[] int216slice,
        int224[] int224slice,
        int232[] int232slice,
        int240[] int240slice,
        int248[] int248slice,
        int256[] int256slice
    );

    event BytesSlicesEvent1(
        bytes1[] bytes1slice,
        bytes2[] bytes2slice,
        bytes3[] bytes3slice,
        bytes4[] bytes4slice,
        bytes5[] bytes5slice,
        bytes6[] bytes6slice,
        bytes7[] bytes7slice,
        bytes8[] bytes8slice,
        bytes9[] bytes9slice,
        bytes10[] bytes10slice
    );
    event BytesSlicesEvent2(
        bytes11[] bytes11slice,
        bytes12[] bytes12slice,
        bytes13[] bytes13slice,
        bytes14[] bytes14slice,
        bytes15[] bytes15slice,
        bytes16[] bytes16slice,
        bytes17[] bytes17slice,
        bytes18[] bytes18slice,
        bytes19[] bytes19slice,
        bytes20[] bytes20slice
    );
    event BytesSlicesEvent3(
        bytes21[] bytes21slice,
        bytes22[] bytes22slice,
        bytes23[] bytes23slice,
        bytes24[] bytes24slice,
        bytes25[] bytes25slice,
        bytes26[] bytes26slice,
        bytes27[] bytes27slice,
        bytes28[] bytes28slice,
        bytes29[] bytes29slice,
        bytes30[] bytes30slice,
        bytes31[] bytes31slice,
        bytes32[] bytes32slice
    );

    event MixedSlicesEvent(
        bool[] boolSlice,
        string[] stringSlice,
        bytes[] bytesSlice
    );
}
