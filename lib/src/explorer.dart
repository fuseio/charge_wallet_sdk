import 'dart:async';
import 'package:charge_wallet_sdk/models/token/tokenlist.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'explorer.g.dart';

@RestApi(baseUrl: "https://explorer.fuse.io/api/")
abstract class FuseExplorer {
  factory FuseExplorer(Dio dio, {String baseUrl}) = _FuseExplorer;

  // Get list of ERC-20 tokens owned by address.
  @GET("?module=account&action=tokenlist")
  Future<TokenList> getTokenList(@Query("address") String address);
}
