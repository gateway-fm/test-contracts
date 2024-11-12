// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract ExternalContract {
    struct ExternalStruct {
        address wallet;
        uint256 value;
        bool allowed;
        string description;
        bytes data;
    }
}
