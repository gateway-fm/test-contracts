// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IUintEvents {
    event Uint8Event(uint8 val);
    event Uint16Event(uint16 val);
    event Uint24Event(uint24 val);
    event Uint32Event(uint32 val);
    event Uint40Event(uint40 val);
    event Uint48Event(uint48 val);
    event Uint56Event(uint56 val);
    event Uint64Event(uint64 val);
    event Uint72Event(uint72 val);
    event Uint80Event(uint80 val);
    event Uint88Event(uint88 val);
    event Uint96Event(uint96 val);
    event Uint104Event(uint104 val);
    event Uint112Event(uint112 val);
    event Uint120Event(uint120 val);
    event Uint128Event(uint128 val);
    event Uint136Event(uint136 val);
    event Uint144Event(uint144 val);
    event Uint152Event(uint152 val);
    event Uint160Event(uint160 val);
    event Uint168Event(uint168 val);
    event Uint176Event(uint176 val);
    event Uint184Event(uint184 val);
    event Uint192Event(uint192 val);
    event Uint200Event(uint200 val);
    event Uint208Event(uint208 val);
    event Uint216Event(uint216 val);
    event Uint224Event(uint224 val);
    event Uint232Event(uint232 val);
    event Uint240Event(uint240 val);
    event Uint248Event(uint248 val);
    event Uint256Event(uint256 val);

    event Uint8ArrayEvent(uint8[3] uintArray);
    event Uint16ArrayEvent(uint16[3] uintArray);
    event Uint24ArrayEvent(uint24[3] uintArray);
    event Uint32ArrayEvent(uint32[3] uintArray);
    event Uint40ArrayEvent(uint40[3] uintArray);
    event Uint48ArrayEvent(uint48[3] uintArray);
    event Uint56ArrayEvent(uint56[3] uintArray);
    event Uint64ArrayEvent(uint64[3] uintArray);
    event Uint72ArrayEvent(uint72[3] uintArray);
    event Uint80ArrayEvent(uint80[3] uintArray);
    event Uint88ArrayEvent(uint88[3] uintArray);
    event Uint96ArrayEvent(uint96[3] uintArray);
    event Uint104ArrayEvent(uint104[3] uintArray);
    event Uint112ArrayEvent(uint112[3] uintArray);
    event Uint120ArrayEvent(uint120[3] uintArray);
    event Uint128ArrayEvent(uint128[3] uintArray);
    event Uint136ArrayEvent(uint136[3] uintArray);
    event Uint144ArrayEvent(uint144[3] uintArray);
    event Uint152ArrayEvent(uint152[3] uintArray);
    event Uint160ArrayEvent(uint160[3] uintArray);
    event Uint168ArrayEvent(uint168[3] uintArray);
    event Uint176ArrayEvent(uint176[3] uintArray);
    event Uint184ArrayEvent(uint184[3] uintArray);
    event Uint192ArrayEvent(uint192[3] uintArray);
    event Uint200ArrayEvent(uint200[3] uintArray);
    event Uint208ArrayEvent(uint208[3] uintArray);
    event Uint216ArrayEvent(uint216[3] uintArray);
    event Uint224ArrayEvent(uint224[3] uintArray);
    event Uint232ArrayEvent(uint232[3] uintArray);
    event Uint240ArrayEvent(uint240[3] uintArray);
    event Uint248ArrayEvent(uint248[3] uintArray);
    event Uint256ArrayEvent(uint256[3] uintArray);

    event Uint8SliceEvent(uint8[] uintSlice);
    event Uint16SliceEvent(uint16[] uintSlice);
    event Uint24SliceEvent(uint24[] uintSlice);
    event Uint32SliceEvent(uint32[] uintSlice);
    event Uint40SliceEvent(uint40[] uintSlice);
    event Uint48SliceEvent(uint48[] uintSlice);
    event Uint56SliceEvent(uint56[] uintSlice);
    event Uint64SliceEvent(uint64[] uintSlice);
    event Uint72SliceEvent(uint72[] uintSlice);
    event Uint80SliceEvent(uint80[] uintSlice);
    event Uint88SliceEvent(uint88[] uintSlice);
    event Uint96SliceEvent(uint96[] uintSlice);
    event Uint104SliceEvent(uint104[] uintSlice);
    event Uint112SliceEvent(uint112[] uintSlice);
    event Uint120SliceEvent(uint120[] uintSlice);
    event Uint128SliceEvent(uint128[] uintSlice);
    event Uint136SliceEvent(uint136[] uintSlice);
    event Uint144SliceEvent(uint144[] uintSlice);
    event Uint152SliceEvent(uint152[] uintSlice);
    event Uint160SliceEvent(uint160[] uintSlice);
    event Uint168SliceEvent(uint168[] uintSlice);
    event Uint176SliceEvent(uint176[] uintSlice);
    event Uint184SliceEvent(uint184[] uintSlice);
    event Uint192SliceEvent(uint192[] uintSlice);
    event Uint200SliceEvent(uint200[] uintSlice);
    event Uint208SliceEvent(uint208[] uintSlice);
    event Uint216SliceEvent(uint216[] uintSlice);
    event Uint224SliceEvent(uint224[] uintSlice);
    event Uint232SliceEvent(uint232[] uintSlice);
    event Uint240SliceEvent(uint240[] uintSlice);
    event Uint248SliceEvent(uint248[] uintSlice);
    event Uint256SliceEvent(uint256[] uintSlice);

    event Uint8EventIndexed(uint8 indexed val);
    event Uint16EventIndexed(uint16 indexed val);
    event Uint24EventIndexed(uint24 indexed val);
    event Uint32EventIndexed(uint32 indexed val);
    event Uint40EventIndexed(uint40 indexed val);
    event Uint48EventIndexed(uint48 indexed val);
    event Uint56EventIndexed(uint56 indexed val);
    event Uint64EventIndexed(uint64 indexed val);
    event Uint72EventIndexed(uint72 indexed val);
    event Uint80EventIndexed(uint80 indexed val);
    event Uint88EventIndexed(uint88 indexed val);
    event Uint96EventIndexed(uint96 indexed val);
    event Uint104EventIndexed(uint104 indexed val);
    event Uint112EventIndexed(uint112 indexed val);
    event Uint120EventIndexed(uint120 indexed val);
    event Uint128EventIndexed(uint128 indexed val);
    event Uint136EventIndexed(uint136 indexed val);
    event Uint144EventIndexed(uint144 indexed val);
    event Uint152EventIndexed(uint152 indexed val);
    event Uint160EventIndexed(uint160 indexed val);
    event Uint168EventIndexed(uint168 indexed val);
    event Uint176EventIndexed(uint176 indexed val);
    event Uint184EventIndexed(uint184 indexed val);
    event Uint192EventIndexed(uint192 indexed val);
    event Uint200EventIndexed(uint200 indexed val);
    event Uint208EventIndexed(uint208 indexed val);
    event Uint216EventIndexed(uint216 indexed val);
    event Uint224EventIndexed(uint224 indexed val);
    event Uint232EventIndexed(uint232 indexed val);
    event Uint240EventIndexed(uint240 indexed val);
    event Uint248EventIndexed(uint248 indexed val);
    event Uint256EventIndexed(uint256 indexed val);

    event Uint8ArrayEventIndexed(uint8[3] indexed uintArray);
    event Uint16ArrayEventIndexed(uint16[3] indexed uintArray);
    event Uint24ArrayEventIndexed(uint24[3] indexed uintArray);
    event Uint32ArrayEventIndexed(uint32[3] indexed uintArray);
    event Uint40ArrayEventIndexed(uint40[3] indexed uintArray);
    event Uint48ArrayEventIndexed(uint48[3] indexed uintArray);
    event Uint56ArrayEventIndexed(uint56[3] indexed uintArray);
    event Uint64ArrayEventIndexed(uint64[3] indexed uintArray);
    event Uint72ArrayEventIndexed(uint72[3] indexed uintArray);
    event Uint80ArrayEventIndexed(uint80[3] indexed uintArray);
    event Uint88ArrayEventIndexed(uint88[3] indexed uintArray);
    event Uint96ArrayEventIndexed(uint96[3] indexed uintArray);
    event Uint104ArrayEventIndexed(uint104[3] indexed uintArray);
    event Uint112ArrayEventIndexed(uint112[3] indexed uintArray);
    event Uint120ArrayEventIndexed(uint120[3] indexed uintArray);
    event Uint128ArrayEventIndexed(uint128[3] indexed uintArray);
    event Uint136ArrayEventIndexed(uint136[3] indexed uintArray);
    event Uint144ArrayEventIndexed(uint144[3] indexed uintArray);
    event Uint152ArrayEventIndexed(uint152[3] indexed uintArray);
    event Uint160ArrayEventIndexed(uint160[3] indexed uintArray);
    event Uint168ArrayEventIndexed(uint168[3] indexed uintArray);
    event Uint176ArrayEventIndexed(uint176[3] indexed uintArray);
    event Uint184ArrayEventIndexed(uint184[3] indexed uintArray);
    event Uint192ArrayEventIndexed(uint192[3] indexed uintArray);
    event Uint200ArrayEventIndexed(uint200[3] indexed uintArray);
    event Uint208ArrayEventIndexed(uint208[3] indexed uintArray);
    event Uint216ArrayEventIndexed(uint216[3] indexed uintArray);
    event Uint224ArrayEventIndexed(uint224[3] indexed uintArray);
    event Uint232ArrayEventIndexed(uint232[3] indexed uintArray);
    event Uint240ArrayEventIndexed(uint240[3] indexed uintArray);
    event Uint248ArrayEventIndexed(uint248[3] indexed uintArray);
    event Uint256ArrayEventIndexed(uint256[3] indexed uintArray);

    event Uint8SliceEventIndexed(uint8[] indexed uintSlice);
    event Uint16SliceEventIndexed(uint16[] indexed uintSlice);
    event Uint24SliceEventIndexed(uint24[] indexed uintSlice);
    event Uint32SliceEventIndexed(uint32[] indexed uintSlice);
    event Uint40SliceEventIndexed(uint40[] indexed uintSlice);
    event Uint48SliceEventIndexed(uint48[] indexed uintSlice);
    event Uint56SliceEventIndexed(uint56[] indexed uintSlice);
    event Uint64SliceEventIndexed(uint64[] indexed uintSlice);
    event Uint72SliceEventIndexed(uint72[] indexed uintSlice);
    event Uint80SliceEventIndexed(uint80[] indexed uintSlice);
    event Uint88SliceEventIndexed(uint88[] indexed uintSlice);
    event Uint96SliceEventIndexed(uint96[] indexed uintSlice);
    event Uint104SliceEventIndexed(uint104[] indexed uintSlice);
    event Uint112SliceEventIndexed(uint112[] indexed uintSlice);
    event Uint120SliceEventIndexed(uint120[] indexed uintSlice);
    event Uint128SliceEventIndexed(uint128[] indexed uintSlice);
    event Uint136SliceEventIndexed(uint136[] indexed uintSlice);
    event Uint144SliceEventIndexed(uint144[] indexed uintSlice);
    event Uint152SliceEventIndexed(uint152[] indexed uintSlice);
    event Uint160SliceEventIndexed(uint160[] indexed uintSlice);
    event Uint168SliceEventIndexed(uint168[] indexed uintSlice);
    event Uint176SliceEventIndexed(uint176[] indexed uintSlice);
    event Uint184SliceEventIndexed(uint184[] indexed uintSlice);
    event Uint192SliceEventIndexed(uint192[] indexed uintSlice);
    event Uint200SliceEventIndexed(uint200[] indexed uintSlice);
    event Uint208SliceEventIndexed(uint208[] indexed uintSlice);
    event Uint216SliceEventIndexed(uint216[] indexed uintSlice);
    event Uint224SliceEventIndexed(uint224[] indexed uintSlice);
    event Uint232SliceEventIndexed(uint232[] indexed uintSlice);
    event Uint240SliceEventIndexed(uint240[] indexed uintSlice);
    event Uint248SliceEventIndexed(uint248[] indexed uintSlice);
    event Uint256SliceEventIndexed(uint256[] indexed uintSlice);
}