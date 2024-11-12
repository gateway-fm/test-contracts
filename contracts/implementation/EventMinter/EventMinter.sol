// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract EventMinter {
    constructor() {}

    event NumberEvent(uint256 index, uint256 total);

    function eventMinter(uint256 totalEvents) external {
        for (uint256 i = 0; i < totalEvents; i++) {
            emit NumberEvent(i, totalEvents);
        }
    }
}
