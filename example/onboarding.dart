import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:charge_wallet_sdk/charge_wallet_sdk.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Future<bool> approvalCallback() async {
  return true;
}

void main() async {
  // Your public API key (https://chargeweb3.com)
  final String PUBLIC_API_KEY = '';

  // generate mnemonic
  String mnemonic = Web3.generateMnemonic();
  print('mnemonic: $mnemonic');

  print('enter pass phrase and press ENTER');
  String passphrase =
      stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;

  // get private key from mnemonic
  String privateKey = Web3.privateKeyFromMnemonic(
    mnemonic,
    passphrase: passphrase,
  );
  print('privateKey: $privateKey');

  // init web3 module
  final Web3 web3 = Web3();

  // set web3 credentials with private key
  await web3.setCredentials(privateKey);

  // get account address
  String accountAddress = await web3.getAddress();
  print('account address: $accountAddress');

  // init api module
  ChargeApi chargeApi = ChargeApi(
    PUBLIC_API_KEY,
    interceptors: [
      // PrettyDioLogger(
      //   requestHeader: true,
      //   requestBody: true,
      //   responseHeader: true,
      //   responseBody: true,
      //   error: true,
      //   compact: true,
      // ),
    ],
  );

  // login
  print('enter phone number and press ENTER');
  String phoneNumber =
      stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;
  await chargeApi.loginWithSMS(phoneNumber);

  // verify
  print('enter sms verification code and press ENTER');
  String verificationCode =
      stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;
  String jwtToken = await chargeApi.verifySMS(
    verificationCode,
    phoneNumber,
    accountAddress,
  );
  print('jwtToken: $jwtToken');

  // create wallet
  Map<String, dynamic> response = await chargeApi.createWallet();
  Map<String, dynamic> walletData;
  if (!response.containsKey('job')) {
    print('Wallet already created for $accountAddress');
    walletData = response;
  } else {
    print('Creating wallet for $accountAddress');
    final Map jobData = response['job']['data'];
    walletData = Map<String, dynamic>.from({
      ...jobData,
      'networks': ['fuse'],
    });
  }
  final WalletModules walletModules = WalletModules.fromJson(
    walletData['walletModules'],
  );

  // Initiate wallet modules
  web3.setModules(walletModules);

  // get wallet
  dynamic wallet = await chargeApi.getWallet();
  print('wallet: $wallet');

  String walletAddress = wallet["walletAddress"];
  print('walletAddress: $walletAddress');
}
