import 'package:charge_wallet_sdk/charge_wallet_sdk.dart';

void main() async {
  // Get list of tokens owned by address.
  final publicApiKey = '';
  final ChargeApi chargeApi = ChargeApi(publicApiKey);
  final TokenList tokens = await chargeApi.getTokenList('0x9X...');
  print('tokens ${tokens.toString()}');
}
