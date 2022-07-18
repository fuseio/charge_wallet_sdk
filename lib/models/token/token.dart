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

@freezed
class TokenInfo with _$TokenInfo {
  factory TokenInfo({
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
  }) = _TokenInfo;

  factory TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoFromJson(json);
}
