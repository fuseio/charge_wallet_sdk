import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:charge_wallet_sdk/models/token/lp_token.dart';

part 'token.freezed.dart';
part 'token.g.dart';

abstract class IToken {
  String get address;
  String get name;
  String get symbol;
}

String nameFromJson(String tokenName) {
  if (tokenName.endsWith('on Fuse')) {
    List split = tokenName.split(" ")
      ..removeWhere((ele) => ele == 'on' || ele == 'Fuse');
    return split.join(" ");
  }
  return tokenName;
}

String addressFromJson(String address) => address.toLowerCase();

int _decimalsFromJson(String? decimals) =>
    decimals != null && decimals != '' ? int.parse(decimals) : 0;

@Freezed(unionKey: 'type')
class TokenInfo with _$TokenInfo {
  const TokenInfo._();

  @Implements<IToken>()
  @FreezedUnionValue('lp')
  const factory TokenInfo.liquidityPoolToken({
    required String symbol,
    required int decimals,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
    required List<LpUnderlyingTokens> underlyingTokens,
  }) = LiquidityPoolToken;

  @Implements<IToken>()
  @FreezedUnionValue('bridged')
  const factory TokenInfo.bridgedToken({
    required String symbol,
    required String logoURI,
    required int decimals,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
  }) = BridgedToken;

  @Implements<IToken>()
  @FreezedUnionValue('misc')
  const factory TokenInfo.miscToken({
    required String symbol,
    required String logoURI,
    required int decimals,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
  }) = MiscToken;

  @Implements<IToken>()
  @FreezedUnionValue('ERC-20')
  const factory TokenInfo.erc20({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @Default(0)
    @JsonKey(
      fromJson: _decimalsFromJson,
    )
        int decimals,
    @JsonKey(
      name: 'contractAddress',
      fromJson: addressFromJson,
    )
        required String address,
    @JsonKey(
      name: 'balance',
    )
        required BigInt amount,
  }) = ERC20;

  @Implements<IToken>()
  @FreezedUnionValue('ERC-721')
  const factory TokenInfo.erc721({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: _decimalsFromJson,
    )
        required int decimals,
    @JsonKey(
      name: 'contractAddress',
      fromJson: addressFromJson,
    )
        required String address,
    @JsonKey(
      name: 'balance',
    )
        required BigInt amount,
  }) = ERC721;

  factory TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoFromJson(json);
}
