import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:charge_wallet_sdk/models/token/token.dart';

part 'lp_token.freezed.dart';
part 'lp_token.g.dart';

@freezed
class LpUnderlyingTokens with _$LpUnderlyingTokens {
  @Implements<IToken>()
  factory LpUnderlyingTokens({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
  }) = _LpUnderlyingTokens;

  factory LpUnderlyingTokens.fromJson(Map<String, dynamic> json) =>
      _$LpUnderlyingTokensFromJson(json);
}
