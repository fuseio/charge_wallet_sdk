import 'package:charge_wallet_sdk/models/token/token_list.dart';
import 'package:charge_wallet_sdk/src/explorer.dart';
import 'package:dio/dio.dart';

void main() async {
  // Get list of tokens owned by address.
  FuseExplorer fuseExplorerAPI = FuseExplorer(Dio());
  final TokenList tokens = await fuseExplorerAPI.getTokenList('0x9X...');
  print('tokens ${tokens.toString()}');
}
