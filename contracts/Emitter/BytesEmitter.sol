// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IBytesEmitter} from "./IBytesEmitter.sol";

contract BytesEmitter is IBytesEmitter {
    bytes1 private bytes1Val = 0x6c;
    bytes2 private bytes2Val = 0x3e52;
    bytes3 private bytes3Val = 0xe18bd1;
    bytes4 private bytes4Val = 0x2dab7397;
    bytes5 private bytes5Val = 0x36607c3aa5;
    bytes6 private bytes6Val = 0x9b3f7d6d8131;
    bytes7 private bytes7Val = 0xbcbf4baf6cd45d;
    bytes8 private bytes8Val = 0x7cd4d4fc2abdf615;
    bytes9 private bytes9Val = 0xf2fdfab526b412f217;
    bytes10 private bytes10Val = 0x28cf11ce874703e23e0c;
    bytes11 private bytes11Val = 0xf09857a6a8b691469a236e;
    bytes12 private bytes12Val = 0x6c9a6ca335b2c4ffa8406e0e;
    bytes13 private bytes13Val = 0xe44b5b22d3f12e2c7c9176e67f;
    bytes14 private bytes14Val = 0xd6122811d2e8583108eac6f8082d;
    bytes15 private bytes15Val = 0x5f6549651d856608a5795384b9b6bf;
    bytes16 private bytes16Val = 0xac8287d302d9bef02d677f9d5187b2bd;
    bytes17 private bytes17Val = 0x6644ea03ed1a9d111b6c5d16958e1d6ad8;
    bytes18 private bytes18Val = 0x8c3fd374b2ba8591ccb57b549565c2135e7c;
    bytes19 private bytes19Val = 0x4324b7b344f478158adfd5ec57dffd708bade4;
    bytes20 private bytes20Val = bytes20("a"); //0xef51eff0c15915ba18027ffdde9d22fa8fdc7460
    bytes21 private bytes21Val = 0xc293236f44a4c44b4bc41a1a4fb7bf94aa7058da18;
    bytes22 private bytes22Val = 0x942a4034dd2c35e6c5f23d8315057b2a6ffc5ddd2008;
    bytes23 private bytes23Val =
        0xa111cd4234ae549ee75ac7b0393b7d35e9c13ad15c9ff0;
    bytes24 private bytes24Val =
        0xae72a72b24eef48a41d02083297a9f8c0bd55aae4111a021;
    bytes25 private bytes25Val =
        0x663d9edf294a6447a6acc059dc6c33c8bad21f9e890c5c9151;
    bytes26 private bytes26Val =
        0x3c8419c136fa556b5b924c2c1fc12cff49341b213f05dffe251e;
    bytes27 private bytes27Val =
        0x197dd091fe7878a346f960ca847398d0048f8fd4f14752ae8f3877;
    bytes28 private bytes28Val =
        0x36133e7f2627a27dd1818ed1a5f8cf6d48f924383ead74098b457f44;
    bytes29 private bytes29Val =
        0xe44855fd49fb8db8ace474a32a0fe253ae75f66ca8d3a9647e869dfca1;
    bytes30 private bytes30Val =
        0x20d96bc2b23d13ae0a7b8a47eb1ea7a547099e6464c13782a69ab5f794df;
    bytes31 private bytes31Val =
        0x2276c2c43b41921559ae6a0c5d319d682ecdf3e0ba7b42a50dfa1c241df3c7;
    bytes32 private bytes32Val =
        0x5ca9276b03611ad4914ee390ec1ac27ec1e09b2f4f3f2fc152944daa57f1b9ae;

    bytes private bytesVal =
        "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq";

    bytes1[3] private bytes1Array = [bytes1(0x3d), 0x5d, 0xad];
    bytes32[3] private bytes32Array = [
        bytes32(
            0xd83dbbbe9e53bc8e4a5406407f1574670bfcd9371099048bc6b92f0f1f60ab40
        ),
        0xbf72f76c216df08335cc4d65007510c4e05fbe61e5289b2814e62f79de3e82a2,
        0x7092d6c0b7d85580da9bee023dd4b4076c30a40261661d45fbfe17b748d17ce6
    ];
    bytes[3] private bytesArray = [
        bytes(
            "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"
        ),
        bytes(
            "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqa"
        ),
        bytes(
            "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqb"
        )
    ];

    bytes1[] private bytes1Slice = [bytes1(0x3d), 0x5d, 0xad];
    bytes32[] private bytes32Slice = [
        bytes32(
            0xd83dbbbe9e53bc8e4a5406407f1574670bfcd9371099048bc6b92f0f1f60ab40
        ),
        0xbf72f76c216df08335cc4d65007510c4e05fbe61e5289b2814e62f79de3e82a2,
        0x7092d6c0b7d85580da9bee023dd4b4076c30a40261661d45fbfe17b748d17ce6
    ];
    bytes[] private bytesSlice = [
        bytes(
            "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"
        ),
        bytes(
            "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqa"
        ),
        bytes(
            "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqb"
        )
    ];

    function emitBytesEvents() external {
        emit Bytes1Event(bytes1Val);
        emit Bytes2Event(bytes2Val);
        emit Bytes3Event(bytes3Val);
        emit Bytes4Event(bytes4Val);
        emit Bytes5Event(bytes5Val);
        emit Bytes6Event(bytes6Val);
        emit Bytes7Event(bytes7Val);
        emit Bytes8Event(bytes8Val);
        emit Bytes9Event(bytes9Val);
        emit Bytes10Event(bytes10Val);
        emit Bytes11Event(bytes11Val);
        emit Bytes12Event(bytes12Val);
        emit Bytes13Event(bytes13Val);
        emit Bytes14Event(bytes14Val);
        emit Bytes15Event(bytes15Val);
        emit Bytes16Event(bytes16Val);
        emit Bytes17Event(bytes17Val);
        emit Bytes18Event(bytes18Val);
        emit Bytes19Event(bytes19Val);
        emit Bytes20Event(bytes20Val);
        emit Bytes21Event(bytes21Val);
        emit Bytes22Event(bytes22Val);
        emit Bytes23Event(bytes23Val);
        emit Bytes24Event(bytes24Val);
        emit Bytes25Event(bytes25Val);
        emit Bytes26Event(bytes26Val);
        emit Bytes27Event(bytes27Val);
        emit Bytes28Event(bytes28Val);
        emit Bytes29Event(bytes29Val);
        emit Bytes30Event(bytes30Val);
        emit Bytes31Event(bytes31Val);
        emit Bytes32Event(bytes32Val);
    }

    function emitBytesIndexedEvents() external {
        emit Bytes1EventIndexed(bytes1Val);
        emit Bytes2EventIndexed(bytes2Val);
        emit Bytes3EventIndexed(bytes3Val);
        emit Bytes4EventIndexed(bytes4Val);
        emit Bytes5EventIndexed(bytes5Val);
        emit Bytes6EventIndexed(bytes6Val);
        emit Bytes7EventIndexed(bytes7Val);
        emit Bytes8EventIndexed(bytes8Val);
        emit Bytes9EventIndexed(bytes9Val);
        emit Bytes10EventIndexed(bytes10Val);
        emit Bytes11EventIndexed(bytes11Val);
        emit Bytes12EventIndexed(bytes12Val);
        emit Bytes13EventIndexed(bytes13Val);
        emit Bytes14EventIndexed(bytes14Val);
        emit Bytes15EventIndexed(bytes15Val);
        emit Bytes16EventIndexed(bytes16Val);
        emit Bytes17EventIndexed(bytes17Val);
        emit Bytes18EventIndexed(bytes18Val);
        emit Bytes19EventIndexed(bytes19Val);
        emit Bytes20EventIndexed(bytes20Val);
        emit Bytes21EventIndexed(bytes21Val);
        emit Bytes22EventIndexed(bytes22Val);
        emit Bytes23EventIndexed(bytes23Val);
        emit Bytes24EventIndexed(bytes24Val);
        emit Bytes25EventIndexed(bytes25Val);
        emit Bytes26EventIndexed(bytes26Val);
        emit Bytes27EventIndexed(bytes27Val);
        emit Bytes28EventIndexed(bytes28Val);
        emit Bytes29EventIndexed(bytes29Val);
        emit Bytes30EventIndexed(bytes30Val);
        emit Bytes31EventIndexed(bytes31Val);
        emit Bytes32EventIndexed(bytes32Val);
    }

    function emitBytesArrayEvents() external {
        emit Bytes1ArrayEvent(bytes1Array);
        emit Bytes32ArrayEvent(bytes32Array);
        emit BytesArrayEvent(bytesArray);
    }

    function emitBytesArrayIndexedEvents() external {
        emit Bytes1ArrayEventIndexed(bytes1Array);
        emit Bytes32ArrayEventIndexed(bytes32Array);
        emit BytesArrayEventIndexed(bytesArray);
    }

    function emitBytesSliceEvents() external {
        emit Bytes1SliceEvent(bytes1Slice);
        emit Bytes32SliceEvent(bytes32Slice);
        emit BytesSliceEvent(bytesSlice);
    }

    function emitBytesSliceIndexedEvents() external {
        emit Bytes1SliceEventIndexed(bytes1Slice);
        emit Bytes32SliceEventIndexed(bytes32Slice);
        emit BytesSliceEventIndexed(bytesSlice);
    }
}
