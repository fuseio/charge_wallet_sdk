import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

String _nameFromJson(String tokenName) {
  if (tokenName.endsWith('on Fuse')) {
    List split = tokenName.split(" ")
      ..removeWhere((ele) => ele == 'on' || ele == 'Fuse');
    return split.join(" ");
  }
  return tokenName;
}

String _addressFromJson(String address) => address.toLowerCase();

int _decimalsFromJson(String? decimals) =>
    decimals != null && decimals != '' ? int.parse(decimals) : 0;

@Freezed(unionKey: 'type')
class TokenInfo with _$TokenInfo {
  const TokenInfo._();

  @FreezedUnionValue('ERC-20')
  const factory TokenInfo.erc20({
    required String symbol,
    @JsonKey(
      fromJson: _nameFromJson,
    )
        required String name,
    @Default(0)
    @JsonKey(
      fromJson: _decimalsFromJson,
    )
        int decimals,
    @JsonKey(
      name: 'contractAddress',
      fromJson: _addressFromJson,
    )
        required String address,
    @JsonKey(
      name: 'balance',
    )
        required BigInt amount,
  }) = ERC20;

  @FreezedUnionValue('ERC-721')
  const factory TokenInfo.erc721({
    required String symbol,
    @JsonKey(
      fromJson: _nameFromJson,
    )
        required String name,
    @Default(0)
    @JsonKey(
      fromJson: _decimalsFromJson,
    )
        int? decimals,
    @JsonKey(
      name: 'contractAddress',
      fromJson: _addressFromJson,
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
