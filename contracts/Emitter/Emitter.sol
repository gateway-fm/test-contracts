// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IEmitter} from "./IEmitter.sol";

contract Emitter is IEmitter {
    address private wallet = 0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb;
    string private str = "General string";

    Enums[3] private enumsArray = [Enums.First, Enums.Second, Enums.Third];
    Enums[] private enumsSlice = [Enums.First, Enums.Second, Enums.Third];

    string[3] private stringArray = ["a", "b", "c"];
    string[] private stringSlice = ["c", "b", "a"];

    bool[3] private boolArray = [true, false, true];
    bool[] private boolSlice = [false, true, false];

    address[3] private addressArray = [
        0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
        0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
        0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb
    ];

    address[] private addressSlice = [
        0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
        0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
        0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb
    ];

    constructor() {}

    /**
     * @notice Emits all events in one transaction with default values.
     */
    function emitAllEvents() external {
        emit BoolEvent(true, false);
        emit BoolEventIndexed(true, false);

        emit AddressEvent(wallet);
        emit AddressEventIndexed(wallet);

        emit StringEvent(str);
        emit StringEventIndexed(str);

        emit EnumEvent(Enums.First, Enums.Second);
        emit EnumEventIndexed(Enums.First, Enums.Second);

        emit EnumArrayEvent(enumsArray);
        emit EnumArrayEventIndexed(enumsArray);

        emit EnumSliceEvent(enumsSlice);
        emit EnumSliceEventIndexed(enumsSlice);

        emit StringArrayEvent(stringArray);
        emit StringArrayEventIndexed(stringArray);

        emit AddressArrayEvent(addressArray);
        emit AddressArrayEventIndexed(addressArray);

        emit StringSliceEvent(stringSlice);
        emit StringSliceEventIndexed(stringSlice);

        emit AddressSliceEvent(addressSlice);
        emit AddressSliceEventIndexed(addressSlice);
    }
}
