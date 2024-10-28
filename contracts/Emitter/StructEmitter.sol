// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IStructEmitter} from "./IStructEmitter.sol";
import {StructLib} from "./StructLib.sol";
import {InheritedContract} from "./InheritedContract.sol";
import {ExternalContract} from "./ExternalContract.sol";

contract StructEmitter is IStructEmitter, InheritedContract {
    SimpleStruct private sStruct =
        SimpleStruct(
            Types.Simple,
            0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
            1,
            true,
            "simple struct desc",
            bytes("data"),
            0x24cbdd35ca3e3365a8891ab64674eb4646ace9d27516fcdbd92489b65a557ae1
        );

    ArrayStruct private aStruct =
        ArrayStruct(
            Types.Array,
            [
                0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
                0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
                0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb
            ],
            [uint256(1), 2, 3],
            [true, true, true],
            ["simple struct desc", "simple struct desc", "simple struct desc"],
            [bytes("data"), bytes("data"), bytes("data")],
            [
                bytes32(
                    0x24cbdd35ca3e3365a8891ab64674eb4646ace9d27516fcdbd92489b65a557ae1
                ),
                0x187611a788d8f6a946739300b443fd60248d927bb61c115429e45dcf57464543,
                0x7286d2184e53d98ae9feb70c00b7da532c2c00ed0177b3262df63c262c2180b4
            ]
        );

    NestedStruct private nStruct = NestedStruct(Types.Nested, sStruct, aStruct);

    StructLib.LibraryStruct private lStruct =
        StructLib.LibraryStruct(
            0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
            1,
            true,
            "simple struct desc",
            bytes("data"),
            0x24cbdd35ca3e3365a8891ab64674eb4646ace9d27516fcdbd92489b65a557ae1
        );

    InheritedIfaceStruct private iiStruct =
        InheritedIfaceStruct(
            0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
            1,
            true,
            "simple struct desc",
            bytes("data"),
            0x24cbdd35ca3e3365a8891ab64674eb4646ace9d27516fcdbd92489b65a557ae1
        );

    ExternalContract.ExternalStruct private eStruct =
        ExternalContract.ExternalStruct(
            0x8382Be7cc5C2Cd8b14F44108444ced6745c5feCb,
            1,
            true,
            "simple struct desc",
            bytes("data"),
            0x24cbdd35ca3e3365a8891ab64674eb4646ace9d27516fcdbd92489b65a557ae1
        );

    SimpleStruct[3] private sArray;

    ArrayStruct[3] private aArray;
    NestedStruct[3] private nArray;
    StructLib.LibraryStruct[3] private lArray;
    InheritedIfaceStruct[3] private iiArray;
    ExternalContract.ExternalStruct[3] private eArray;

    SimpleStruct[] private sSlice;
    ArrayStruct[] private aSlice;
    NestedStruct[] private nSlice;
    StructLib.LibraryStruct[] private lSlice;
    InheritedIfaceStruct[] private iiSlice;
    ExternalContract.ExternalStruct[] private eSlice;

    constructor() {
        sArray[0] = sStruct;
        sArray[1] = sStruct;
        sArray[2] = sStruct;

        aArray[0] = aStruct;
        aArray[1] = aStruct;
        aArray[2] = aStruct;

        nArray[0] = nStruct;
        nArray[1] = nStruct;
        nArray[2] = nStruct;

        lArray[0] = lStruct;
        lArray[1] = lStruct;
        lArray[2] = lStruct;

        iiArray[0] = iiStruct;
        iiArray[1] = iiStruct;
        iiArray[2] = iiStruct;

        eArray[0] = eStruct;
        eArray[1] = eStruct;
        eArray[2] = eStruct;

        sSlice.push(sStruct);
        sSlice.push(sStruct);
        sSlice.push(sStruct);

        aSlice.push(aStruct);
        aSlice.push(aStruct);
        aSlice.push(aStruct);

        nSlice.push(nStruct);
        nSlice.push(nStruct);
        nSlice.push(nStruct);

        lSlice.push(lStruct);
        lSlice.push(lStruct);
        lSlice.push(lStruct);

        iiSlice.push(iiStruct);
        iiSlice.push(iiStruct);
        iiSlice.push(iiStruct);

        eSlice.push(eStruct);
        eSlice.push(eStruct);
        eSlice.push(eStruct);
    }

    function emitStructEvents() external {
        emit SimpleStructEvent(sStruct);
        emit ArrayStructEvent(aStruct);
        emit NestedStructEvent(nStruct);
        emit StructLib.LibraryStructEvent(lStruct);
        emit InheritedStructEvent(iStruct);
        emit InheritedIfaceStructEvent(iiStruct);
        emit ExternalContract.ExternalStructEvent(eStruct);
    }

    function emitStructIndexedEvents() external {
        emit SimpleStructEventIndexed(sStruct);
        emit ArrayStructEventIndexed(aStruct);
        emit NestedStructEventIndexed(nStruct);
        emit StructLib.LibraryStructEventIndexed(lStruct);
        emit InheritedStructEventIndexed(iStruct);
        emit InheritedIfaceStructEventIndexed(iiStruct);
        emit ExternalContract.ExternalStructEventIndexed(eStruct);
    }

    function emitStructArrayEvents() external {
        emit SimpleStructArrayEvent(sArray);
        emit ArrayStructArrayEvent(aArray);
        emit NestedStructArrayEvent(nArray);
        emit StructLib.LibraryStructArrayEvent(lArray);
        emit InheritedStructArrayEvent(iArray);
        emit InheritedIfaceStructArrayEvent(iiArray);
        emit ExternalContract.ExternalStructArrayEvent(eArray);
    }

    function emitStructArrayIndexedEvents() external {
        emit SimpleStructArrayEventIndexed(sArray);
        emit ArrayStructArrayEventIndexed(aArray);
        emit NestedStructArrayEventIndexed(nArray);
        emit StructLib.LibraryStructArrayEventIndexed(lArray);
        emit InheritedStructArrayEventIndexed(iArray);
        emit InheritedIfaceStructArrayEventIndexed(iiArray);
        emit ExternalContract.ExternalStructArrayEventIndexed(eArray);
    }

    function emitStructSliceEvents() external {
        emit SimpleStructSliceEvent(sSlice);
        emit ArrayStructSliceEvent(aSlice);
        emit NestedStructSliceEvent(nSlice);
        emit StructLib.LibraryStructSliceEvent(lSlice);
        emit InheritedStructSliceEvent(iSlice);
        emit InheritedIfaceStructSliceEvent(iiSlice);
        emit ExternalContract.ExternalStructSliceEvent(eSlice);
    }

    function emitStructSliceIndexedEvents() external {
        emit SimpleStructSliceEventIndexed(sSlice);
        emit ArrayStructSliceEventIndexed(aSlice);
        emit NestedStructSliceEventIndexed(nSlice);
        emit StructLib.LibraryStructSliceEventIndexed(lSlice);
        emit InheritedStructSliceEventIndexed(iSlice);
        emit InheritedIfaceStructSliceEventIndexed(iiSlice);
        emit ExternalContract.ExternalStructSliceEventIndexed(eSlice);
    }
}
