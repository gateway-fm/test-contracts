// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IInheritedInterface {
    struct InheritedIfaceStruct {
        address wallet;
        uint256 value;
        bool allowed;
        string description;
        bytes data;
        bytes32 hashsum;
    }

    event InheritedIfaceStructEvent(InheritedIfaceStruct ii);
    event InheritedIfaceStructEventIndexed(InheritedIfaceStruct indexed ii);

    event InheritedIfaceStructArrayEvent(InheritedIfaceStruct[3] iiArray);
    event InheritedIfaceStructArrayEventIndexed(
        InheritedIfaceStruct[3] indexed iiArray
    );

    event InheritedIfaceStructSliceEvent(InheritedIfaceStruct[] iiSlice);
    event InheritedIfaceStructSliceEventIndexed(
        InheritedIfaceStruct[] indexed iiSlice
    );
}
