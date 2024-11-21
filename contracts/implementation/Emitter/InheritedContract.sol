// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract InheritedContract {
    struct InheritedStruct {
        address wallet;
        uint256 value;
        bool allowed;
        string description;
        bytes data;
        bytes32 hashsum;
    }

    event InheritedStructEvent(InheritedStruct i);
    event InheritedStructEventIndexed(InheritedStruct indexed i);

    event InheritedStructArrayEvent(InheritedStruct[3] iArray);
    event InheritedStructArrayEventIndexed(InheritedStruct[3] indexed iArray);

    event InheritedStructSliceEvent(InheritedStruct[] iSlice);
    event InheritedStructSliceEventIndexed(InheritedStruct[] indexed iSlice);

    InheritedStruct internal iStruct =
        InheritedStruct(
            0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
            1,
            true,
            "simple struct desc",
            bytes("data"),
            0x24cbdd35ca3e3365a8891ab64674eb4646ace9d27516fcdbd92489b65a557ae1
        );

    InheritedStruct[3] internal iArray;
    InheritedStruct[] internal iSlice;

    constructor() {
        iArray[0] = iStruct;
        iArray[0] = iStruct;
        iArray[0] = iStruct;

        iSlice.push(iStruct);
        iSlice.push(iStruct);
        iSlice.push(iStruct);
    }
}
