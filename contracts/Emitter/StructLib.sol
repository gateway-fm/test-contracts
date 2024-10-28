// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

library StructLib {
    struct LibraryStruct {
        address wallet;
        uint256 value;
        bool allowed;
        string description;
        bytes data;
        bytes32 hashsum;
    }

    event LibraryStructEvent(LibraryStruct l);
    event LibraryStructEventIndexed(LibraryStruct indexed l);

    event LibraryStructArrayEvent(LibraryStruct[3] lArray);
    event LibraryStructArrayEventIndexed(LibraryStruct[3] indexed lArray);

    event LibraryStructSliceEvent(LibraryStruct[] lSlice);
    event LibraryStructSliceEventIndexed(LibraryStruct[] indexed lSlice);
}
