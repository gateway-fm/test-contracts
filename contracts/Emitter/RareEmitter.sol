// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract RareEmitter {
    type Uint256Custom is uint256;
    type Uint8Custom is uint8;
    type Int256Custom is int256;
    type Int8Custom is int8;
    type BoolCustom is bool;
    type AddressCustom is address;

    type Bytes1Custom is bytes1;
    type Bytes2Custom is bytes2;
    type Bytes3Custom is bytes3;
    type Bytes4Custom is bytes4;
    type Bytes5Custom is bytes5;
    type Bytes6Custom is bytes6;
    type Bytes7Custom is bytes7;
    type Bytes8Custom is bytes8;
    type Bytes9Custom is bytes9;
    type Bytes10Custom is bytes10;
    type Bytes11Custom is bytes11;
    type Bytes12Custom is bytes12;
    type Bytes13Custom is bytes13;
    type Bytes14Custom is bytes14;
    type Bytes15Custom is bytes15;
    type Bytes16Custom is bytes16;
    type Bytes17Custom is bytes17;
    type Bytes18Custom is bytes18;
    type Bytes19Custom is bytes19;
    type Bytes20Custom is bytes20;
    type Bytes21Custom is bytes21;
    type Bytes22Custom is bytes22;
    type Bytes23Custom is bytes23;
    type Bytes24Custom is bytes24;
    type Bytes25Custom is bytes25;
    type Bytes26Custom is bytes26;
    type Bytes27Custom is bytes27;
    type Bytes28Custom is bytes28;
    type Bytes29Custom is bytes29;
    type Bytes30Custom is bytes30;
    type Bytes31Custom is bytes31;
    type Bytes32Custom is bytes32;

    event Uint256CustomEvent(Uint256Custom val);
    event Uint8CustomEvent(Uint8Custom val);
    event Int256CustomEvent(Int256Custom val);
    event Int8CustomEvent(Int8Custom val);
    event BoolCustomEvent(BoolCustom val);
    event AddressCustomEvent(AddressCustom val);

    event Uint256CustomEventIndexed(Uint256Custom indexed val);
    event Uint8CustomEventIndexed(Uint8Custom indexed val);
    event Int256CustomEventIndexed(Int256Custom indexed val);
    event Int8CustomEventIndexed(Int8Custom indexed val);
    event BoolCustomEventIndexed(BoolCustom indexed val);
    event AddressCustomEventIndexed(AddressCustom indexed val);

    event Bytes1CustomEvent(Bytes1Custom val);
    event Bytes2CustomEvent(Bytes2Custom val);
    event Bytes3CustomEvent(Bytes3Custom val);
    event Bytes4CustomEvent(Bytes4Custom val);
    event Bytes5CustomEvent(Bytes5Custom val);
    event Bytes6CustomEvent(Bytes6Custom val);
    event Bytes7CustomEvent(Bytes7Custom val);
    event Bytes8CustomEvent(Bytes8Custom val);
    event Bytes9CustomEvent(Bytes9Custom val);
    event Bytes10CustomEvent(Bytes10Custom val);
    event Bytes11CustomEvent(Bytes11Custom val);
    event Bytes12CustomEvent(Bytes12Custom val);
    event Bytes13CustomEvent(Bytes13Custom val);
    event Bytes14CustomEvent(Bytes14Custom val);
    event Bytes15CustomEvent(Bytes15Custom val);
    event Bytes16CustomEvent(Bytes16Custom val);
    event Bytes17CustomEvent(Bytes17Custom val);
    event Bytes18CustomEvent(Bytes18Custom val);
    event Bytes19CustomEvent(Bytes19Custom val);
    event Bytes20CustomEvent(Bytes20Custom val);
    event Bytes21CustomEvent(Bytes21Custom val);
    event Bytes22CustomEvent(Bytes22Custom val);
    event Bytes23CustomEvent(Bytes23Custom val);
    event Bytes24CustomEvent(Bytes24Custom val);
    event Bytes25CustomEvent(Bytes25Custom val);
    event Bytes26CustomEvent(Bytes26Custom val);
    event Bytes27CustomEvent(Bytes27Custom val);
    event Bytes28CustomEvent(Bytes28Custom val);
    event Bytes29CustomEvent(Bytes29Custom val);
    event Bytes30CustomEvent(Bytes30Custom val);
    event Bytes31CustomEvent(Bytes31Custom val);
    event Bytes32CustomEvent(Bytes32Custom val);

    event Bytes1CustomEventIndexed(Bytes1Custom indexed val);
    event Bytes2CustomEventIndexed(Bytes2Custom indexed val);
    event Bytes3CustomEventIndexed(Bytes3Custom indexed val);
    event Bytes4CustomEventIndexed(Bytes4Custom indexed val);
    event Bytes5CustomEventIndexed(Bytes5Custom indexed val);
    event Bytes6CustomEventIndexed(Bytes6Custom indexed val);
    event Bytes7CustomEventIndexed(Bytes7Custom indexed val);
    event Bytes8CustomEventIndexed(Bytes8Custom indexed val);
    event Bytes9CustomEventIndexed(Bytes9Custom indexed val);
    event Bytes10CustomEventIndexed(Bytes10Custom indexed val);
    event Bytes11CustomEventIndexed(Bytes11Custom indexed val);
    event Bytes12CustomEventIndexed(Bytes12Custom indexed val);
    event Bytes13CustomEventIndexed(Bytes13Custom indexed val);
    event Bytes14CustomEventIndexed(Bytes14Custom indexed val);
    event Bytes15CustomEventIndexed(Bytes15Custom indexed val);
    event Bytes16CustomEventIndexed(Bytes16Custom indexed val);
    event Bytes17CustomEventIndexed(Bytes17Custom indexed val);
    event Bytes18CustomEventIndexed(Bytes18Custom indexed val);
    event Bytes19CustomEventIndexed(Bytes19Custom indexed val);
    event Bytes20CustomEventIndexed(Bytes20Custom indexed val);
    event Bytes21CustomEventIndexed(Bytes21Custom indexed val);
    event Bytes22CustomEventIndexed(Bytes22Custom indexed val);
    event Bytes23CustomEventIndexed(Bytes23Custom indexed val);
    event Bytes24CustomEventIndexed(Bytes24Custom indexed val);
    event Bytes25CustomEventIndexed(Bytes25Custom indexed val);
    event Bytes26CustomEventIndexed(Bytes26Custom indexed val);
    event Bytes27CustomEventIndexed(Bytes27Custom indexed val);
    event Bytes28CustomEventIndexed(Bytes28Custom indexed val);
    event Bytes29CustomEventIndexed(Bytes29Custom indexed val);
    event Bytes30CustomEventIndexed(Bytes30Custom indexed val);
    event Bytes31CustomEventIndexed(Bytes31Custom indexed val);
    event Bytes32CustomEventIndexed(Bytes32Custom indexed val);

    event OverloadedEvent(int8 val);
    event OverloadedEvent(string val);

    event OverloadedEventIndexed(int8 indexed val);
    event OverloadedEventIndexed(string indexed val);

    event AnonymousEvent(int8 a, int8 b, int8 c, int8 d) anonymous;

    event AnonymousEventIndexed(
        int8 indexed a,
        int8 indexed b,
        int8 indexed c,
        int8 indexed d
    ) anonymous;

    function emitEvents() external {
        emit OverloadedEvent(1);
        emit OverloadedEvent("1");
        emit OverloadedEventIndexed(1);
        emit OverloadedEventIndexed("1");
        emit AnonymousEvent(1, 2, 3, 4);
        emit AnonymousEventIndexed(1, 2, 3, 4);
        emit Uint256CustomEvent(Uint256Custom.wrap(1));
        emit Uint8CustomEvent(Uint8Custom.wrap(1));
        emit Int256CustomEvent(Int256Custom.wrap(1));
        emit Int8CustomEvent(Int8Custom.wrap(1));
        emit BoolCustomEvent(BoolCustom.wrap(true));
        emit AddressCustomEvent(
            AddressCustom.wrap(0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb)
        );
        emit Uint256CustomEventIndexed(Uint256Custom.wrap(1));
        emit Uint8CustomEventIndexed(Uint8Custom.wrap(1));
        emit Int256CustomEventIndexed(Int256Custom.wrap(1));
        emit Int8CustomEventIndexed(Int8Custom.wrap(1));
        emit BoolCustomEventIndexed(BoolCustom.wrap(true));
        emit AddressCustomEventIndexed(
            AddressCustom.wrap(0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb)
        );

        emit Bytes1CustomEvent(Bytes1Custom.wrap(bytes1("a")));
        emit Bytes2CustomEvent(Bytes2Custom.wrap(bytes2("a")));
        emit Bytes3CustomEvent(Bytes3Custom.wrap(bytes3("a")));
        emit Bytes4CustomEvent(Bytes4Custom.wrap(bytes4("a")));
        emit Bytes5CustomEvent(Bytes5Custom.wrap(bytes5("a")));
        emit Bytes6CustomEvent(Bytes6Custom.wrap(bytes6("a")));
        emit Bytes7CustomEvent(Bytes7Custom.wrap(bytes7("a")));
        emit Bytes8CustomEvent(Bytes8Custom.wrap(bytes8("a")));
        emit Bytes9CustomEvent(Bytes9Custom.wrap(bytes9("a")));
        emit Bytes10CustomEvent(Bytes10Custom.wrap(bytes10("a")));
        emit Bytes11CustomEvent(Bytes11Custom.wrap(bytes11("a")));
        emit Bytes12CustomEvent(Bytes12Custom.wrap(bytes12("a")));
        emit Bytes13CustomEvent(Bytes13Custom.wrap(bytes13("a")));
        emit Bytes14CustomEvent(Bytes14Custom.wrap(bytes14("a")));
        emit Bytes15CustomEvent(Bytes15Custom.wrap(bytes15("a")));
        emit Bytes16CustomEvent(Bytes16Custom.wrap(bytes16("a")));
        emit Bytes17CustomEvent(Bytes17Custom.wrap(bytes17("a")));
        emit Bytes18CustomEvent(Bytes18Custom.wrap(bytes18("a")));
        emit Bytes19CustomEvent(Bytes19Custom.wrap(bytes19("a")));
        emit Bytes20CustomEvent(Bytes20Custom.wrap(bytes20("a")));
        emit Bytes21CustomEvent(Bytes21Custom.wrap(bytes21("a")));
        emit Bytes22CustomEvent(Bytes22Custom.wrap(bytes22("a")));
        emit Bytes23CustomEvent(Bytes23Custom.wrap(bytes23("a")));
        emit Bytes24CustomEvent(Bytes24Custom.wrap(bytes24("a")));
        emit Bytes25CustomEvent(Bytes25Custom.wrap(bytes25("a")));
        emit Bytes26CustomEvent(Bytes26Custom.wrap(bytes26("a")));
        emit Bytes27CustomEvent(Bytes27Custom.wrap(bytes27("a")));
        emit Bytes28CustomEvent(Bytes28Custom.wrap(bytes28("a")));
        emit Bytes29CustomEvent(Bytes29Custom.wrap(bytes29("a")));
        emit Bytes30CustomEvent(Bytes30Custom.wrap(bytes30("a")));
        emit Bytes31CustomEvent(Bytes31Custom.wrap(bytes31("a")));
        emit Bytes32CustomEvent(Bytes32Custom.wrap(bytes32("a")));

        emit Bytes1CustomEventIndexed(Bytes1Custom.wrap(bytes1("a")));
        emit Bytes2CustomEventIndexed(Bytes2Custom.wrap(bytes2("a")));
        emit Bytes3CustomEventIndexed(Bytes3Custom.wrap(bytes3("a")));
        emit Bytes4CustomEventIndexed(Bytes4Custom.wrap(bytes4("a")));
        emit Bytes5CustomEventIndexed(Bytes5Custom.wrap(bytes5("a")));
        emit Bytes6CustomEventIndexed(Bytes6Custom.wrap(bytes6("a")));
        emit Bytes7CustomEventIndexed(Bytes7Custom.wrap(bytes7("a")));
        emit Bytes8CustomEventIndexed(Bytes8Custom.wrap(bytes8("a")));
        emit Bytes9CustomEventIndexed(Bytes9Custom.wrap(bytes9("a")));
        emit Bytes10CustomEventIndexed(Bytes10Custom.wrap(bytes10("a")));
        emit Bytes11CustomEventIndexed(Bytes11Custom.wrap(bytes11("a")));
        emit Bytes12CustomEventIndexed(Bytes12Custom.wrap(bytes12("a")));
        emit Bytes13CustomEventIndexed(Bytes13Custom.wrap(bytes13("a")));
        emit Bytes14CustomEventIndexed(Bytes14Custom.wrap(bytes14("a")));
        emit Bytes15CustomEventIndexed(Bytes15Custom.wrap(bytes15("a")));
        emit Bytes16CustomEventIndexed(Bytes16Custom.wrap(bytes16("a")));
        emit Bytes17CustomEventIndexed(Bytes17Custom.wrap(bytes17("a")));
        emit Bytes18CustomEventIndexed(Bytes18Custom.wrap(bytes18("a")));
        emit Bytes19CustomEventIndexed(Bytes19Custom.wrap(bytes19("a")));
        emit Bytes20CustomEventIndexed(Bytes20Custom.wrap(bytes20("a")));
        emit Bytes21CustomEventIndexed(Bytes21Custom.wrap(bytes21("a")));
        emit Bytes22CustomEventIndexed(Bytes22Custom.wrap(bytes22("a")));
        emit Bytes23CustomEventIndexed(Bytes23Custom.wrap(bytes23("a")));
        emit Bytes24CustomEventIndexed(Bytes24Custom.wrap(bytes24("a")));
        emit Bytes25CustomEventIndexed(Bytes25Custom.wrap(bytes25("a")));
        emit Bytes26CustomEventIndexed(Bytes26Custom.wrap(bytes26("a")));
        emit Bytes27CustomEventIndexed(Bytes27Custom.wrap(bytes27("a")));
        emit Bytes28CustomEventIndexed(Bytes28Custom.wrap(bytes28("a")));
        emit Bytes29CustomEventIndexed(Bytes29Custom.wrap(bytes29("a")));
        emit Bytes30CustomEventIndexed(Bytes30Custom.wrap(bytes30("a")));
        emit Bytes31CustomEventIndexed(Bytes31Custom.wrap(bytes31("a")));
        emit Bytes32CustomEventIndexed(Bytes32Custom.wrap(bytes32("a")));
    }
}
