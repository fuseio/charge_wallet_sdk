import 'package:charge_wallet_sdk/models/token/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokenlist.freezed.dart';
part 'tokenlist.g.dart';

@freezed
class TokenList with _$TokenList {
  factory TokenList({
    required String message,
    required String status,
    required List<TokenInfo> result,
  }) = _TokenList;

  factory TokenList.fromJson(Map<String, dynamic> json) =>
      _$TokenListFromJson(json);
}
