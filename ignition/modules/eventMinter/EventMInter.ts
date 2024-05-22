import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const EventMinterModule = buildModule("EventMinter", (m) => {
  const eventMinter = m.contract("EventMinter", []);

  return { eventMinter };
});

export default EventMinterModule;
