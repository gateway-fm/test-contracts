// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract UniversalEmitter {
    // uint 8-64, 256
    event UIntEvent(uint8 v1, uint16 v2, uint24 v3, uint32 v4, uint40 v5, uint48 v6, uint56 v7, uint64 v8, uint256 v9);
    event UIntGroup1IndexedEvent(uint8 indexed v1, uint16 indexed v2, uint24 indexed v3);
    event UIntGroup2IndexedEvent(uint32 indexed v1, uint40 indexed v2, uint48 indexed v3);
    event UIntGroup3IndexedEvent(uint56 indexed v1, uint64 indexed v2, uint256 indexed v3);
    event UIntArrayEvent(
        uint8[3] v1,
        uint16[3] v2,
        uint24[3] v3,
        uint32[3] v4,
        uint40[3] v5,
        uint48[3] v6,
        uint56[3] v7,
        uint64[3] v8,
        uint256[3] v9
    );
    event UIntGroup1SliceEvent(uint8[] v1, uint16[] v2, uint24[] v3);
    event UIntGroup2SliceEvent(uint32[] v1, uint40[] v2, uint48[] v3);
    event UIntGroup3SliceEvent(uint56[] v1, uint64[] v2, uint256[] v3);

    // int 8-64, 256
    event IntEvent(int8 v1, int16 v2, int24 v3, int32 v4, int40 v5, int48 v6, int56 v7, int64 v8, int256 v9);
    event IntGroup1IndexedEvent(int8 indexed v1, int16 indexed v2, int24 indexed v3);
    event IntGroup2IndexedEvent(int32 indexed v1, int40 indexed v2, int48 indexed v3);
    event IntGroup3IndexedEvent(int56 indexed v1, int64 indexed v2, int256 indexed v3);
    event IntArrayEvent(
        int8[3] v1,
        int16[3] v2,
        int24[3] v3,
        int32[3] v4,
        int40[3] v5,
        int48[3] v6,
        int56[3] v7,
        int64[3] v8,
        int256[3] v9
    );
    event IntGroup1SliceEvent(int8[] v1, int16[] v2, int24[] v3);
    event IntGroup2SliceEvent(int32[] v1, int40[] v2, int48[] v3);
    event IntGroup3SliceEvent(int56[] v1, int64[] v2, int256[] v3);

    // string
    event StringEvent(string v1);
    event StringIndexedEvent(string indexed v1);
    event StringArrayEvent(string[3] v1);
    event StringSliceEvent(string[] v1);

    // bytes
    event BytesEvent(bytes v1);
    event BytesIndexedEvent(bytes indexed v1);
    event BytesArrayEvent(bytes[3] v1);
    event BytesSliceEvent(bytes[] v1);

    // bytes sized
    event BytesSizesEvent(bytes1 v1, bytes16 v2, bytes32 v3);
    event BytesSizesIndexedEvent(bytes1 indexed v1, bytes16 indexed v2, bytes32 indexed v3);
    event BytesSizesArrayEvent(bytes1[3] v1, bytes16[3] v2, bytes32[3] v3);
    event BytesSizesSliceEvent(bytes1[] v1, bytes16[] v2, bytes32[] v3);

    // bool
    event BoolEvent(bool v1);
    event BoolIndexedEvent(bool indexed v1);
    event BoolArrayEvent(bool[3] v1);
    event BoolSliceEvent(bool[] v1);

    // enum
    enum Enum {
        NONE,
        FIRST,
        SECOND,
        THIRD
    }

    event EnumEvent(Enum v1);
    event EnumIndexedEvent(Enum indexed v);
    event EnumArrayEvent(Enum[3] v1);
    event EnumSliceEvent(Enum[] v1);

    // simple structs
    struct SimpleStruct {
        uint8 v1;
        uint64 v2;
        uint256 v3;
        int8 v4;
        int64 v5;
        int256 v6;
        string v7;
        bytes v8;
        bytes1 v9;
        bytes16 v10;
        bytes32 v11;
        bool v12;
        Enum v13;
    }

    event SimpleStructEvent(SimpleStruct s1);
    // structure array (slice) in event
    event SimpleStructArrayEvent(SimpleStruct[3] s1);
    event SimpleStructSliceEvent(SimpleStruct[] s1);

    struct ArrayStruct {
        uint8[3] v1;
        uint64[3] v2;
        uint256[3] v3;
        int8[3] v4;
        int64[3] v5;
        int256[3] v6;
        string[3] v7;
        bytes[3] v8;
        bytes1[3] v9;
        bytes16[3] v10;
        bytes32[3] v11;
        bool[3] v12;
        Enum[3] v13;
    }

    event ArrayStructEvent(ArrayStruct s1);
    struct SliceStruct {
        uint8[] v1;
        uint64[] v2;
        uint256[] v3;
        int8[] v4;
        int64[] v5;
        int256[] v6;
        string[] v7;
        bytes[] v8;
        bytes1[] v9;
        bytes16[] v10;
        bytes32[] v11;
        bool[] v12;
        Enum[] v13;
    }

    event SliceStructEvent(SliceStruct s1);

    // nested struct
    struct NestedStruct {
        SimpleStruct simpleStruct;
        ArrayStruct arrayStruct;
        SliceStruct sliceStruct;
    }

    event NestedStructEvent(NestedStruct s1);

    // structure array (slice) in structure
    struct NestedArrayStruct {
        SimpleStruct[3] simpleStructArray;
    }

    event NestedArrayStructEvent(NestedArrayStruct s1);

    struct NestedSliceStruct {
        SimpleStruct[] simpleStructSlice;
    }

    event NestedSliceStructEvent(NestedSliceStruct s1);

    // emit functions

    // uint
    function emitUIntEvent(
        uint8 v1,
        uint16 v2,
        uint24 v3,
        uint32 v4,
        uint40 v5,
        uint48 v6,
        uint56 v7,
        uint64 v8,
        uint256 v9
    ) external {
        emit UIntEvent(v1, v2, v3, v4, v5, v6, v7, v8, v9);
    }

    function emitUIntGroup1IndexedEvent(uint8 v1, uint16 v2, uint24 v3) external {
        emit UIntGroup1IndexedEvent(v1, v2, v3);
    }

    function emitUIntGroup2IndexedEvent(uint32 v1, uint40 v2, uint48 v3) external {
        emit UIntGroup2IndexedEvent(v1, v2, v3);
    }

    function emitUIntGroup3IndexedEvent(uint56 v1, uint64 v2, uint256 v3) external {
        emit UIntGroup3IndexedEvent(v1, v2, v3);
    }

    function emitUIntArrayEvent(
        uint8[3] calldata v1,
        uint16[3] calldata v2,
        uint24[3] calldata v3,
        uint32[3] calldata v4,
        uint40[3] calldata v5,
        uint48[3] calldata v6,
        uint56[3] calldata v7,
        uint64[3] calldata v8,
        uint256[3] calldata v9
    ) external {
        emit UIntArrayEvent(v1, v2, v3, v4, v5, v6, v7, v8, v9);
    }

    function emitUIntGroup1SliceEvent(uint8[] calldata v1, uint16[] calldata v2, uint24[] calldata v3) external {
        emit UIntGroup1SliceEvent(v1, v2, v3);
    }

    function emitUIntGroup2SliceEvent(uint32[] calldata v1, uint40[] calldata v2, uint48[] calldata v3) external {
        emit UIntGroup2SliceEvent(v1, v2, v3);
    }

    function emitUIntGroup3SliceEvent(uint56[] calldata v1, uint64[] calldata v2, uint256[] calldata v3) external {
        emit UIntGroup3SliceEvent(v1, v2, v3);
    }

    // int
    function emitIntEvent(
        int8 v1,
        int16 v2,
        int24 v3,
        int32 v4,
        int40 v5,
        int48 v6,
        int56 v7,
        int64 v8,
        int256 v9
    ) external {
        emit IntEvent(v1, v2, v3, v4, v5, v6, v7, v8, v9);
    }

    function emitIntGroup1IndexedEvent(int8 v1, int16 v2, int24 v3) external {
        emit IntGroup1IndexedEvent(v1, v2, v3);
    }

    function emitIntGroup2IndexedEvent(int32 v1, int40 v2, int48 v3) external {
        emit IntGroup2IndexedEvent(v1, v2, v3);
    }

    function emitIntGroup3IndexedEvent(int56 v1, int64 v2, int256 v3) external {
        emit IntGroup3IndexedEvent(v1, v2, v3);
    }

    function emitIntArrayEvent(
        int8[3] calldata v1,
        int16[3] calldata v2,
        int24[3] calldata v3,
        int32[3] calldata v4,
        int40[3] calldata v5,
        int48[3] calldata v6,
        int56[3] calldata v7,
        int64[3] calldata v8,
        int256[3] calldata v9
    ) external {
        emit IntArrayEvent(v1, v2, v3, v4, v5, v6, v7, v8, v9);
    }

    function emitIntGroup1SliceEvent(int8[] calldata v1, int16[] calldata v2, int24[] calldata v3) external {
        emit IntGroup1SliceEvent(v1, v2, v3);
    }

    function emitIntGroup2SliceEvent(int32[] calldata v1, int40[] calldata v2, int48[] calldata v3) external {
        emit IntGroup2SliceEvent(v1, v2, v3);
    }

    function emitIntGroup3SliceEvent(int56[] calldata v1, int64[] calldata v2, int256[] calldata v3) external {
        emit IntGroup3SliceEvent(v1, v2, v3);
    }

    // string
    function emitStringEvent(string calldata v1) external {
        emit StringEvent(v1);
    }

    function emitStringIndexedEvent(string calldata v1) external {
        emit StringIndexedEvent(v1);
    }

    function emitStringArrayEvent(string[3] calldata v1) external {
        emit StringArrayEvent(v1);
    }

    function emitStringSliceEvent(string[] calldata v1) external {
        emit StringSliceEvent(v1);
    }

    // bytes
    function emitBytesEvent(bytes calldata v1) external {
        emit BytesEvent(v1);
    }

    function emitBytesIndexedEvent(bytes calldata v1) external {
        emit BytesIndexedEvent(v1);
    }

    function emitBytesArrayEvent(bytes[3] calldata v1) external {
        emit BytesArrayEvent(v1);
    }

    function emitBytesSliceEvent(bytes[] calldata v1) external {
        emit BytesSliceEvent(v1);
    }

    // bytes sizes
    function emitBytesSizesEvent(bytes1 v1, bytes16 v2, bytes32 v3) external {
        emit BytesSizesEvent(v1, v2, v3);
    }

    function emitBytesSizesIndexedEvent(bytes1 v1, bytes16 v2, bytes32 v3) external {
        emit BytesSizesIndexedEvent(v1, v2, v3);
    }

    function emitBytesSizesArrayEvent(bytes1[3] calldata v1, bytes16[3] calldata v2, bytes32[3] calldata v3) external {
        emit BytesSizesArrayEvent(v1, v2, v3);
    }

    function emitBytesSizesSliceEvent(bytes1[] calldata v1, bytes16[] calldata v2, bytes32[] calldata v3) external {
        emit BytesSizesSliceEvent(v1, v2, v3);
    }

    // bool
    function emitBoolEvent(bool v1) external {
        emit BoolEvent(v1);
    }

    function emitBoolIndexedEvent(bool v1) external {
        emit BoolIndexedEvent(v1);
    }

    function emitBoolArrayEvent(bool[3] calldata v1) external {
        emit BoolArrayEvent(v1);
    }

    function emitBoolSliceEvent(bool[] calldata v1) external {
        emit BoolSliceEvent(v1);
    }

    // enum
    function emitEnumEvent(Enum v1) external {
        emit EnumEvent(v1);
    }

    function emitEnumIndexedEvent(Enum v1) external {
        emit EnumIndexedEvent(v1);
    }

    function emitEnumArrayEvent(Enum[3] calldata v1) external {
        emit EnumArrayEvent(v1);
    }

    function emitEnumSliceEvent(Enum[] calldata v1) external {
        emit EnumSliceEvent(v1);
    }

    // simple structs
    function emitSimpleStructEvent(SimpleStruct calldata s1) external {
        emit SimpleStructEvent(s1);
    }

    function emitSimpleStructArrayEvent(SimpleStruct[3] calldata s1) external {
        emit SimpleStructArrayEvent(s1);
    }

    function emitSimpleStructSliceEvent(SimpleStruct[] calldata s1) external {
        emit SimpleStructSliceEvent(s1);
    }

    function emitArrayStructEvent(ArrayStruct calldata s1) external {
        emit ArrayStructEvent(s1);
    }

    function emitSliceStructEvent(SliceStruct calldata s1) external {
        emit SliceStructEvent(s1);
    }

    // nested struct
    function emitNestedStructEvent(NestedStruct calldata s1) external {
        emit NestedStructEvent(s1);
    }

    function emitNestedArrayStructEvent(NestedArrayStruct calldata s1) external {
        emit NestedArrayStructEvent(s1);
    }

    function emitNestedSliceStructEvent(NestedSliceStruct calldata s1) external {
        emit NestedSliceStructEvent(s1);
    }
}
