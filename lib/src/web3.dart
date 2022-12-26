library web3;

import 'dart:async';
import 'dart:typed_data';

import 'package:bip32/bip32.dart' as bip32;
import 'package:bip39/bip39.dart' as bip39;
import 'package:charge_wallet_sdk/models/models.dart';
import 'package:charge_wallet_sdk/utils/format.dart';
import 'package:hex/hex.dart';
import 'package:http/http.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'package:charge_wallet_sdk/constants/variables.dart';

import '../utils/crypto.dart';
import './abi.dart';

class Web3 {
  final Web3Client _client;
  late final EthPrivateKey _credentials;
  late final WalletModules _modules;
  final int _defaultGasLimit;

  Web3({
    String url = Variables.FUSE_RPC_URL,
    int defaultGasLimit = Variables.DEFAULT_GAS_LIMIT,
  })  : _client = Web3Client(url, Client()),
        _defaultGasLimit = defaultGasLimit;

  static String generateMnemonic({int strength = 128}) =>
      bip39.generateMnemonic(strength: strength);

  static bool validateMnemonic(String mnemonic) =>
      bip39.validateMnemonic(mnemonic);

  static String privateKeyFromMnemonic(
    String mnemonic, {
    String derivePath = "m/44'/60'/0'/0/",
    int childIndex = 0,
    String passphrase = "",
  }) {
    String seed = bip39.mnemonicToSeedHex(
      mnemonic,
      passphrase: passphrase,
    );
    bip32.BIP32 root = bip32.BIP32.fromSeed(HEX.decode(seed) as Uint8List);
    bip32.BIP32 child = root.derivePath("$derivePath$childIndex");
    String privateKey = HEX.encode(child.privateKey!);
    return privateKey;
  }

  Future<void> setCredentials(String privateKey) async {
    _credentials = await EthPrivateKey.fromHex(privateKey);
  }

  void setModules(WalletModules modules) {
    _modules = modules;
  }

  Future<String> getAddress() async {
    return (await _credentials.address).toString();
  }

  Future<int> getBlockNumber() async {
    return _client.getBlockNumber();
  }

  Future<EtherAmount> getBalance({String? address}) async {
    EthereumAddress ethereumAddress;
    if (address != null && address != "") {
      ethereumAddress = EthereumAddress.fromHex(address);
    } else {
      ethereumAddress = await _credentials.address;
    }
    return _client.getBalance(ethereumAddress);
  }

  DeployedContract _contract(
    String contractName,
    String contractAddress, {
    String? jsonInterface,
  }) {
    String abi = jsonInterface ?? ABI.get(contractName);
    DeployedContract contract = DeployedContract(
      ContractAbi.fromJson(abi, contractName),
      EthereumAddress.fromHex(contractAddress),
    );
    return contract;
  }

  Future<List<dynamic>> readFromContract(
    String contractName,
    String contractAddress,
    String functionName,
    List<dynamic> params, {
    String? jsonInterface,
  }) async {
    DeployedContract contract = _contract(
      contractName,
      contractAddress,
      jsonInterface: jsonInterface,
    );
    return _client.call(
      contract: contract,
      function: contract.function(functionName),
      params: params,
    );
  }

  Future<Map<String, dynamic>> encodeDataAndApproveTokenAndCallContract(
    String walletAddress,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
    String tokenAddress,
    List<dynamic> params, {
    Map? transactionBody,
    num? tokensAmount,
    BigInt? amountInWei,
  }) async {
    final String data = getEncodedDataForContractCall(
      contractName,
      contractAddress,
      methodName,
      params,
      jsonInterface: jsonInterface,
    );

    return approveTokenAndCallContractOffChain(
      walletAddress,
      tokenAddress,
      contractAddress,
      data,
      tokensAmount: tokensAmount,
      amountInWei: amountInWei,
      transactionBody: transactionBody,
    );
  }

  Future<Map<String, dynamic>> encodeDataAndCallContract(
    String walletAddress,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
    List<dynamic> params, {
    Map? transactionBody,
    num? tokensAmount,
    BigInt? amountInWei,
  }) async {
    final String data = '0x' +
        getEncodedDataForContractCall(
          contractName,
          contractAddress,
          methodName,
          params,
          jsonInterface: jsonInterface,
        );

    return callContractOffChain(
      walletAddress,
      contractAddress,
      data,
      ethAmount: tokensAmount,
      amountInWei: amountInWei,
      transactionBody: transactionBody,
    );
  }

  Future<dynamic> getTokenDetails(String tokenAddress) async {
    return {
      "name": (await readFromContract('BasicToken', tokenAddress, 'name', []))
          .first,
      "symbol":
          (await readFromContract('BasicToken', tokenAddress, 'symbol', []))
              .first,
      "decimals":
          (await readFromContract('BasicToken', tokenAddress, 'decimals', []))
              .first
    };
  }

  Future<dynamic> getTokenBalance(
    String tokenAddress, {
    String? address,
  }) async {
    final List<dynamic> response = await readFromContract(
      'BasicToken',
      tokenAddress,
      'balanceOf',
      [
        address != null && address != ""
            ? EthereumAddress.fromHex(address)
            : _credentials.address
      ],
    );
    return response.first;
  }

  Future<dynamic> getTokenAllowance(
    String tokenAddress,
    String spender, {
    String? owner,
  }) async {
    List<EthereumAddress> params = [];
    if (owner != null && owner != "") {
      params.add(EthereumAddress.fromHex(owner));
    } else {
      EthereumAddress address = _credentials.address;
      params.add(address);
    }
    params.add(EthereumAddress.fromHex(spender));
    final List<dynamic> response = await readFromContract(
      'BasicToken',
      tokenAddress,
      'allowance',
      params,
    );
    return response.first;
  }

  Future<String> getNonceForRelay() async {
    BigInt block = BigInt.from(await _client.getBlockNumber());
    BigInt timestamp = BigInt.from(DateTime.now().millisecondsSinceEpoch);
    String blockHex = hexZeroPad(hexlify(block), 16);
    String timestampHex = hexZeroPad(hexlify(timestamp), 16);
    return '0x' +
        blockHex.substring(2, blockHex.length) +
        timestampHex.substring(
          2,
          timestampHex.length,
        );
  }

  String signOffChain(
    String from,
    String to,
    BigInt value,
    String data,
    String nonce,
    BigInt gasPrice,
    BigInt gasLimit,
  ) {
    final List<String> inputArr = [
      '0x19',
      '0x00',
      from,
      to,
      hexZeroPad(hexlify(value), 32),
      data,
      nonce,
      hexZeroPad(hexlify(gasPrice), 32),
      hexZeroPad(hexlify(gasLimit), 32)
    ];
    String input = '0x' +
        inputArr.map((hexStr) => hexStr.toString().substring(2)).join('');
    Uint8List hash = keccak256(hexToBytes(input));
    Uint8List signature = _credentials.signPersonalMessageToUint8List(hash);
    return '0x' + HEX.encode(signature);
  }

  Future<Map<String, dynamic>> transferOffChain(
    String walletAddress,
    String receiverAddress, {
    String? tokensAmount,
    BigInt? amountInWei,
    String network = "fuse",
    Map? transactionBody,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'transferToken';
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress token = EthereumAddress.fromHex(
      Variables.NATIVE_TOKEN_ADDRESS,
    );
    EthereumAddress receiver = EthereumAddress.fromHex(receiverAddress);
    BigInt amount = amountInWei ?? BigInt.zero;
    if (tokensAmount != null) {
      amount = AmountFormat.toBigInt(
        tokensAmount,
        18,
      );
    }
    String nonce = await getNonceForRelay();
    String encodedData = '0x' +
        getEncodedDataForContractCall(
          contractName,
          _modules.transferManager,
          methodName,
          [
            wallet,
            token,
            receiver,
            amount,
            hexToBytes('0x'),
          ],
        );

    String signature = signOffChain(
      _modules.transferManager,
      walletAddress,
      BigInt.from(0),
      encodedData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedData,
      "nonce": nonce,
      "network": network,
      "methodName": methodName,
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": contractName,
      "transactionBody": transactionBody,
    };
  }

  Future<Map<String, dynamic>> addModule(
    String walletAddress,
    String disableModuleName,
    String disableModuleAddress,
    String enableModuleAddress, {
    String methodName = 'addModule',
    String network = "fuse",
    Map? transactionBody,
  }) async {
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress newModule = EthereumAddress.fromHex(enableModuleAddress);
    String nonce = await getNonceForRelay();
    String encodedData = '0x' +
        getEncodedDataForContractCall(
          disableModuleName,
          disableModuleAddress,
          methodName,
          [
            wallet,
            newModule,
          ],
        );
    String signature = signOffChain(
      disableModuleAddress,
      walletAddress,
      BigInt.from(0),
      encodedData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedData,
      "nonce": nonce,
      "network": network,
      "methodName": methodName,
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": disableModuleName,
      "transactionBody": transactionBody,
    };
  }

  Future<Map<String, dynamic>> transferTokenOffChain(
    String walletAddress,
    String tokenAddress,
    String receiverAddress, {
    String? tokensAmount,
    BigInt? amountInWei,
    String? network,
    String? externalId,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'transferToken';
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    EthereumAddress receiver = EthereumAddress.fromHex(receiverAddress);
    dynamic tokenDetails = await getTokenDetails(tokenAddress);
    String tokenSymbol = tokenDetails["symbol"];
    BigInt amount = amountInWei ?? BigInt.zero;
    int tokenDecimals = int.parse(tokenDetails["decimals"].toString());
    if (tokensAmount != null) {
      amount = AmountFormat.toBigInt(
        tokensAmount,
        tokenDecimals,
      );
    }
    String nonce = await getNonceForRelay();
    String encodedData = '0x' +
        getEncodedDataForContractCall(
          contractName,
          _modules.transferManager,
          methodName,
          [
            wallet,
            token,
            receiver,
            amount,
            hexToBytes('0x'),
          ],
        );

    String signature = signOffChain(
      _modules.transferManager,
      walletAddress,
      BigInt.from(0),
      encodedData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedData,
      "nonce": nonce,
      "network": network,
      "methodName": methodName,
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": contractName,
      "externalId": externalId,
      "transactionBody": {
        "tokenAddress": tokenAddress,
        "from": walletAddress,
        "to": receiverAddress,
        "value": amount.toString(),
        "asset": tokenSymbol,
        "status": 'pending',
        'type': 'SEND',
        'tokenName': tokenDetails['name'],
        'tokenDecimal': tokenDecimals,
        'tokenSymbol': tokenSymbol,
      },
    };
  }

  Future<Map<String, dynamic>> approveTokenOffChain(
    String walletAddress,
    String tokenAddress, {
    String? spenderContract,
    String network = "fuse",
    Map? transactionBody,
    Map? txMetadata,
    num? tokensAmount,
    BigInt? amountInWei,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'approveToken';
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    String nonce = await getNonceForRelay();
    BigInt amount = amountInWei ?? BigInt.zero;
    EthereumAddress spender = wallet;
    if (spenderContract != null) {
      spender = EthereumAddress.fromHex(spenderContract);
    }
    if (tokensAmount != null) {
      dynamic tokenDetails = await getTokenDetails(tokenAddress);
      int tokenDecimals = int.parse(tokenDetails["decimals"].toString());
      amount = AmountFormat.toBigInt(
        tokensAmount,
        tokenDecimals,
      );
    }

    String encodedData = '0x' +
        getEncodedDataForContractCall(
          contractName,
          _modules.transferManager,
          methodName,
          [
            wallet,
            token,
            spender,
            amount,
          ],
        );
    String signature = signOffChain(
      _modules.transferManager,
      walletAddress,
      BigInt.from(0),
      encodedData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedData,
      "nonce": nonce,
      "network": network,
      "methodName": "approveToken",
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": contractName,
      "transactionBody": transactionBody,
      "txMetadata": txMetadata,
    };
  }

  Future<Map<String, dynamic>> transferNFTOffChain(
    String nftTransferContractAddress,
    String walletAddress,
    String contractAddress,
    String receiverAddress,
    num tokenId, {
    bool? safe = false,
    String network = "fuse",
    Map? transactionBody = const {},
  }) async {
    final String methodName = 'transferNFT';
    final String walletModule = 'NftTransfer';
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    EthereumAddress receiver = EthereumAddress.fromHex(receiverAddress);
    BigInt id = BigInt.from(tokenId);
    String nonce = await getNonceForRelay();
    String encodedCallContractData = '0x' +
        getEncodedDataForContractCall(
          walletModule,
          nftTransferContractAddress,
          methodName,
          [
            wallet,
            contract,
            receiver,
            id,
            safe,
            hexToBytes('0x'),
          ],
        );
    String signature = signOffChain(
      nftTransferContractAddress,
      walletAddress,
      BigInt.from(0),
      encodedCallContractData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedCallContractData,
      "nonce": nonce,
      "network": network,
      "methodName": methodName,
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": walletModule,
      "transactionBody": transactionBody,
    };
  }

  Future<Map<String, dynamic>> callContractOffChain(
    String walletAddress,
    String contractAddress,
    String data, {
    String network = "fuse",
    Map? transactionBody,
    num? ethAmount,
    BigInt? amountInWei,
    Map? txMetadata,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'callContract';
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    BigInt amount = amountInWei ?? BigInt.zero;
    if (ethAmount != null) {
      amount = AmountFormat.toBigInt(
        ethAmount,
        18,
      );
    }

    String nonce = await getNonceForRelay();
    String encodedCallContractData = '0x' +
        getEncodedDataForContractCall(
          contractName,
          _modules.transferManager,
          methodName,
          [
            wallet,
            contract,
            amount,
            HEX.decode(data),
          ],
        );
    String signature = signOffChain(
      _modules.transferManager,
      walletAddress,
      BigInt.from(0),
      encodedCallContractData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedCallContractData,
      "nonce": nonce,
      "network": network,
      "methodName": methodName,
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": contractName,
      "transactionBody": transactionBody,
      "txMetadata": txMetadata,
    };
  }

  Future<Map<String, dynamic>> approveTokenAndCallContractOffChain(
    String walletAddress,
    String tokenAddress,
    String contractAddress,
    String data, {
    String network = "fuse",
    num? tokensAmount,
    BigInt? amountInWei,
    Map? transactionBody,
    Map? txMetadata,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'approveTokenAndCallContract';
    EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    BigInt amount = amountInWei ?? BigInt.zero;
    String nonce = await getNonceForRelay();
    if (tokensAmount != null) {
      dynamic tokenDetails = await getTokenDetails(tokenAddress);
      int tokenDecimals = int.parse(tokenDetails["decimals"].toString());
      amount = AmountFormat.toBigInt(
        tokensAmount,
        tokenDecimals,
      );
    }
    String encodedApproveTokenAndCallContractData = '0x' +
        getEncodedDataForContractCall(
          contractName,
          _modules.transferManager,
          methodName,
          [
            wallet,
            token,
            contract,
            amount,
            HEX.decode(data),
          ],
        );

    String signature = signOffChain(
      _modules.transferManager,
      walletAddress,
      BigInt.from(0),
      encodedApproveTokenAndCallContractData,
      nonce,
      BigInt.from(0),
      BigInt.from(_defaultGasLimit),
    );

    return {
      "walletAddress": walletAddress,
      "methodData": encodedApproveTokenAndCallContractData,
      "nonce": nonce,
      "network": network,
      "methodName": methodName,
      "gasPrice": 0,
      "gasLimit": _defaultGasLimit,
      "signature": signature,
      "walletModule": contractName,
      'transactionBody': transactionBody,
      "txMetadata": txMetadata,
    };
  }

  String getEncodedDataForContractCall(
    String contractName,
    String contractAddress,
    String functionName,
    List params, {
    String? jsonInterface,
  }) {
    DeployedContract contract = _contract(
      contractName,
      contractAddress,
      jsonInterface: jsonInterface,
    );
    Uint8List data = contract.function(functionName).encodeCall(params);
    String encodedData = HEX.encode(data);
    return encodedData;
  }
}
