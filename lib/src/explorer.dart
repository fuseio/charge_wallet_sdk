import 'dart:async';
import 'package:charge_wallet_sdk/models/token/token_list.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'explorer.g.dart';

@Deprecated('Use [ChargeApi().getTokenList(address)]')
@RestApi(baseUrl: "https://explorer.fuse.io/api/")
abstract class FuseExplorer {
  factory FuseExplorer(Dio dio, {String baseUrl}) = _FuseExplorer;

  // Get list of ERC-20 tokens owned by address.
  @GET("?module=account&action=tokenlist")
  Future<TokenList> getTokenList(@Query("address") String address);
}
