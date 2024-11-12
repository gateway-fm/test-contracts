// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface ITestArraysEmitter {
    struct MixedArraysStruct {
        bool[3] boolArray;
        string[3] stringArray;
        bytes[3] bytesArray;
    }

    struct IntArraysStruct {
        int8[3] int8array;
        int16[3] int16array;
        int24[3] int24array;
        int32[3] int32array;
        int40[3] int40array;
        int48[3] int48array;
        int56[3] int56array;
        int64[3] int64array;
        int72[3] int72array;
        int80[3] int80array;
        int88[3] int88array;
        int96[3] int96array;
        int104[3] int104array;
        int112[3] int112array;
        int120[3] int120array;
        int128[3] int128array;
        int136[3] int136array;
        int144[3] int144array;
        int152[3] int152array;
        int160[3] int160array;
        int168[3] int168array;
        int176[3] int176array;
        int184[3] int184array;
        int192[3] int192array;
        int200[3] int200array;
        int208[3] int208array;
        int216[3] int216array;
        int224[3] int224array;
        int232[3] int232array;
        int240[3] int240array;
        int248[3] int248array;
        int256[3] int256array;
    }

    struct UintArraysStruct {
        uint8[3] uint8array;
        uint16[3] uint16array;
        uint24[3] uint24array;
        uint32[3] uint32array;
        uint40[3] uint40array;
        uint48[3] uint48array;
        uint56[3] uint56array;
        uint64[3] uint64array;
        uint72[3] uint72array;
        uint80[3] uint80array;
        uint88[3] uint88array;
        uint96[3] uint96array;
        uint104[3] uint104array;
        uint112[3] uint112array;
        uint120[3] uint120array;
        uint128[3] uint128array;
        uint136[3] uint136array;
        uint144[3] uint144array;
        uint152[3] uint152array;
        uint160[3] uint160array;
        uint168[3] uint168array;
        uint176[3] uint176array;
        uint184[3] uint184array;
        uint192[3] uint192array;
        uint200[3] uint200array;
        uint208[3] uint208array;
        uint216[3] uint216array;
        uint224[3] uint224array;
        uint232[3] uint232array;
        uint240[3] uint240array;
        uint248[3] uint248array;
        uint256[3] uint256array;
    }

    struct BytesArraysStruct {
        bytes1[3] bytes1array;
        bytes2[3] bytes2array;
        bytes3[3] bytes3array;
        bytes4[3] bytes4array;
        bytes5[3] bytes5array;
        bytes6[3] bytes6array;
        bytes7[3] bytes7array;
        bytes8[3] bytes8array;
        bytes9[3] bytes9array;
        bytes10[3] bytes10array;
        bytes11[3] bytes11array;
        bytes12[3] bytes12array;
        bytes13[3] bytes13array;
        bytes14[3] bytes14array;
        bytes15[3] bytes15array;
        bytes16[3] bytes16array;
        bytes17[3] bytes17array;
        bytes18[3] bytes18array;
        bytes19[3] bytes19array;
        bytes20[3] bytes20array;
        bytes21[3] bytes21array;
        bytes22[3] bytes22array;
        bytes23[3] bytes23array;
        bytes24[3] bytes24array;
        bytes25[3] bytes25array;
        bytes26[3] bytes26array;
        bytes27[3] bytes27array;
        bytes28[3] bytes28array;
        bytes29[3] bytes29array;
        bytes30[3] bytes30array;
        bytes31[3] bytes31array;
        bytes32[3] bytes32array;
    }

    event UintArraysEvent1(
        uint8[3] uint8array,
        uint16[3] uint16array,
        uint24[3] uint24array,
        uint32[3] uint32array,
        uint40[3] uint40array,
        uint48[3] uint48array,
        uint56[3] uint56array,
        uint64[3] uint64array,
        uint72[3] uint72array,
        uint80[3] uint80array
    );
    event UintArraysEvent2(
        uint88[3] uint88array,
        uint96[3] uint96array,
        uint104[3] uint104array,
        uint112[3] uint112array,
        uint120[3] uint120array,
        uint128[3] uint128array,
        uint136[3] uint136array,
        uint144[3] uint144array,
        uint152[3] uint152array,
        uint160[3] uint160array
    );
    event UintArraysEvent3(
        uint168[3] uint168array,
        uint176[3] uint176array,
        uint184[3] uint184array,
        uint192[3] uint192array,
        uint200[3] uint200array,
        uint208[3] uint208array,
        uint216[3] uint216array,
        uint224[3] uint224array,
        uint232[3] uint232array,
        uint240[3] uint240array,
        uint248[3] uint248array,
        uint256[3] uint256array
    );

    event IntArraysEvent1(
        int8[3] int8array,
        int16[3] int16array,
        int24[3] int24array,
        int32[3] int32array,
        int40[3] int40array,
        int48[3] int48array,
        int56[3] int56array,
        int64[3] int64array,
        int72[3] int72array,
        int80[3] int80array
    );
    event IntArraysEvent2(
        int88[3] int88array,
        int96[3] int96array,
        int104[3] int104array,
        int112[3] int112array,
        int120[3] int120array,
        int128[3] int128array,
        int136[3] int136array,
        int144[3] int144array,
        int152[3] int152array,
        int160[3] int160array
    );
    event IntArraysEvent3(
        int168[3] int168array,
        int176[3] int176array,
        int184[3] int184array,
        int192[3] int192array,
        int200[3] int200array,
        int208[3] int208array,
        int216[3] int216array,
        int224[3] int224array,
        int232[3] int232array,
        int240[3] int240array,
        int248[3] int248array,
        int256[3] int256array
    );

    event BytesArraysEvent1(
        bytes1[3] bytes1array,
        bytes2[3] bytes2array,
        bytes3[3] bytes3array,
        bytes4[3] bytes4array,
        bytes5[3] bytes5array,
        bytes6[3] bytes6array,
        bytes7[3] bytes7array,
        bytes8[3] bytes8array,
        bytes9[3] bytes9array,
        bytes10[3] bytes10array
    );
    event BytesArraysEvent2(
        bytes11[3] bytes11array,
        bytes12[3] bytes12array,
        bytes13[3] bytes13array,
        bytes14[3] bytes14array,
        bytes15[3] bytes15array,
        bytes16[3] bytes16array,
        bytes17[3] bytes17array,
        bytes18[3] bytes18array,
        bytes19[3] bytes19array,
        bytes20[3] bytes20array
    );
    event BytesArraysEvent3(
        bytes21[3] bytes21array,
        bytes22[3] bytes22array,
        bytes23[3] bytes23array,
        bytes24[3] bytes24array,
        bytes25[3] bytes25array,
        bytes26[3] bytes26array,
        bytes27[3] bytes27array,
        bytes28[3] bytes28array,
        bytes29[3] bytes29array,
        bytes30[3] bytes30array,
        bytes31[3] bytes31array,
        bytes32[3] bytes32array
    );

    event MixedArraysEvent(bool[3] boolArray, string[3] stringArray, bytes[3] bytesArray);
}
