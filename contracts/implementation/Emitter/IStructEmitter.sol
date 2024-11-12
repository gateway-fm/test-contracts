// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IInheritedInterface } from "./IInheritedInterface.sol";

interface IStructEmitter is IInheritedInterface {
    enum Types {
        Unknown,
        Simple,
        Array,
        Nested
    }

    struct SimpleStruct {
        Types structType;
        address wallet;
        uint256 value;
        bool allowed;
        string description;
        bytes data;
        bytes32 hashsum;
    }

    struct ArrayStruct {
        Types structType;
        address[3] wallets;
        uint256[3] values;
        bool[3] permissions;
        string[3] descriptions;
        bytes[3] data;
        bytes32[3] hashsums;
    }

    struct NestedStruct {
        Types structType;
        SimpleStruct s;
        ArrayStruct a;
    }

    event SimpleStructEvent(SimpleStruct s);
    event SimpleStructEventIndexed(SimpleStruct indexed s);

    event ArrayStructEvent(ArrayStruct a);
    event ArrayStructEventIndexed(ArrayStruct indexed a);

    event NestedStructEvent(NestedStruct n);
    event NestedStructEventIndexed(NestedStruct indexed n);

    event SimpleStructArrayEvent(SimpleStruct[3] sArray);
    event SimpleStructArrayEventIndexed(SimpleStruct[3] indexed sArray);

    event ArrayStructArrayEvent(ArrayStruct[3] aArray);
    event ArrayStructArrayEventIndexed(ArrayStruct[3] indexed aArray);

    event NestedStructArrayEvent(NestedStruct[3] nArray);
    event NestedStructArrayEventIndexed(NestedStruct[3] indexed nArray);

    event SimpleStructSliceEvent(SimpleStruct[] sSlice);
    event SimpleStructSliceEventIndexed(SimpleStruct[] indexed sSlice);

    event ArrayStructSliceEvent(ArrayStruct[] aSlice);
    event ArrayStructSliceEventIndexed(ArrayStruct[] indexed aSlice);

    event NestedStructSliceEvent(NestedStruct[] nSlice);
    event NestedStructSliceEventIndexed(NestedStruct[] indexed nSlice);
}
