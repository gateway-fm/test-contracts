import path from "path";

// Contracts names
export const EmitterName = "Emitter";
export const TestValueEmitterName = "TestValueEmitter";
export const TestArraysEmitterName = "TestArraysEmitter";
export const TestSlicesEmitterName = "TestSlicesEmitter";

// Directories paths
export const addressesDir = path.join(__dirname, "../contracts/addresses");
export const abisDir = path.join(__dirname, "../contracts/abis");
export const binsDir = path.join(__dirname, "../contracts/bins");
export const contractsInfoDir = path.join(
  __dirname,
  "../contracts/contractsInfo"
);
