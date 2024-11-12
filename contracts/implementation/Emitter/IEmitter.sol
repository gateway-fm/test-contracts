// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IEmitter {
    enum Enums {
        First,
        Second,
        Third
    }

    event BoolEvent(bool trueVal, bool falseVal);
    event BoolEventIndexed(bool indexed trueVal, bool indexed falseVal);

    event AddressEvent(address wallet);
    event AddressEventIndexed(address indexed wallet);

    event StringEvent(string str);
    event StringEventIndexed(string indexed str);

    event EnumEvent(Enums f, Enums s);
    event EnumEventIndexed(Enums indexed f, Enums indexed s);

    event EnumArrayEvent(Enums[3] enums);
    event EnumArrayEventIndexed(Enums[3] indexed enums);

    event EnumSliceEvent(Enums[] enums);
    event EnumSliceEventIndexed(Enums[] indexed enums);

    event BoolArrayEvent(bool[3] boolArray);
    event BoolArrayEventIndexed(bool[3] indexed boolArray);

    event StringArrayEvent(string[3] stringArray);
    event StringArrayEventIndexed(string[3] indexed stringArray);

    event AddressArrayEvent(address[3] addressArray);
    event AddressArrayEventIndexed(address[3] indexed addressArray);

    event StringSliceEvent(string[] stringSlice);
    event StringSliceEventIndexed(string[] indexed stringSlice);

    event AddressSliceEvent(address[] addressSlice);
    event AddressSliceEventIndexed(address[] indexed addressSlice);

    event BoolSliceEvent(bool[] boolSlice);
    event BoolSliceEventIndexed(bool[] indexed boolSlice);
}
