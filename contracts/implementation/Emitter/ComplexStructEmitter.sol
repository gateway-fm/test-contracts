// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract ComplexStructEmitter {
    struct SimpleStruct {
        uint256 number;
    }

    struct NestedStruct {
        SimpleStruct s;
    }

    struct ComplexStruct {
        NestedStruct n;
    }

    event ComplexStructEvent(ComplexStruct c);

    SimpleStruct private sStruct = SimpleStruct(1);
    NestedStruct private nStruct = NestedStruct(sStruct);
    ComplexStruct private cStruct = ComplexStruct(nStruct);

    function emitEvents() external {
        emit ComplexStructEvent(cStruct);
    }
}
