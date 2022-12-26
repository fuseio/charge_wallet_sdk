# Charge wallet SDK

Dart library for accessing Charge Wallet APIs.

## What's in here

* Charge API
  * Interact with [Charge Wallet API](https://docs.chargeweb3.com/docs/overview-2)
* Web3
  * Using [`web3dart`](https://pub.dev/packages/web3dart) library in a simplified way
  * BIP 39 mnemonic - generate, extract private key from mnemonic
  * Sign off-chain transactions to transfer using relay
  * [ERC20 based tokens](https://eips.ethereum.org/EIPS/eip-20) - get balance, send, sign off-chain transactions to transfer using relay
  * Contracts - read/write
* Fuse NFT subgraph
  * Interact with [Fuse NFT subgraph](https://thegraph.com/hosted-service/subgraph/fuseio/fuse-nft) for easier NFTs data reads

## Usage

See [`example`](https://github.com/fuseio/charge_wallet_sdk/tree/master/example) folder
