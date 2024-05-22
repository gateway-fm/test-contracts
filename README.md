# test-contracts

Used to deploy the test contracts

## Getting started

- Clone repository
- Install dependencies `yarn install`
- Set env vars:

`PROVIDER_URL` - rpc provider url

`PRIVATE_KEY` - signer private key

`CHAIN_ID` - chain id

`ETHERSCAN_API_KEY` - Blockscout or Etherscan api key. Set to any value if not needed

Default network: user network (set by the env var values)

## EventMinter contract

[Contract](./contracts/EventMinter/EventMinter.sol)

### Deploy

run following command:

```shell
yarn hardhat ignition deploy ignition/modules/eventMinter/EventMinter.ts  
```