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
* GraphQL
  * Interact with [The Graph](https://thegraph.com/) for easier blockchain data reads
* FuseExplorer
  * Interact with [Fuse Explorer](https://explorer.fuse.io/) for fetching user assets on the Fuse Network

## Install

See [pub.dev](https://pub.dev/packages/charge_wallet_sdk#-installing-tab-)

## Usage

See [`example`](https://github.com/fuseio/charge_wallet_sdk/tree/master/example) folder

## License

Charge Wallet SDK is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
