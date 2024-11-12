// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract ExternalContract {
    struct ExternalStruct {
        address wallet;
        uint256 value;
        bool allowed;
        string description;
        bytes data;
        bytes32 hashsum;
    }

    event ExternalStructEvent(ExternalStruct e);
    event ExternalStructEventIndexed(ExternalStruct indexed e);

    event ExternalStructArrayEvent(ExternalStruct[3] eArray);
    event ExternalStructArrayEventIndexed(ExternalStruct[3] indexed eArray);

    event ExternalStructSliceEvent(ExternalStruct[] eSlice);
    event ExternalStructSliceEventIndexed(ExternalStruct[] indexed eSlice);
}
