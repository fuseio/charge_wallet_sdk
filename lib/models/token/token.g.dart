// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenInfo _$$_TokenInfoFromJson(Map<String, dynamic> json) => _$_TokenInfo(
      symbol: json['symbol'] as String,
      name: _nameFromJson(json['name'] as String),
      decimals: json['decimals'] == null
          ? 0
          : _decimalsFromJson(json['decimals'] as String?),
      address: _addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
    );

Map<String, dynamic> _$$_TokenInfoToJson(_$_TokenInfo instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
    };
