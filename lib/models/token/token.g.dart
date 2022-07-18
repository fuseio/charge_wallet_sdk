// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ERC20 _$$ERC20FromJson(Map<String, dynamic> json) => _$ERC20(
      symbol: json['symbol'] as String,
      name: _nameFromJson(json['name'] as String),
      decimals: json['decimals'] == null
          ? 0
          : _decimalsFromJson(json['decimals'] as String?),
      address: _addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC20ToJson(_$ERC20 instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
      'type': instance.$type,
    };

_$ERC721 _$$ERC721FromJson(Map<String, dynamic> json) => _$ERC721(
      symbol: json['symbol'] as String,
      name: _nameFromJson(json['name'] as String),
      decimals: json['decimals'] == null
          ? 0
          : _decimalsFromJson(json['decimals'] as String?),
      address: _addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC721ToJson(_$ERC721 instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
      'type': instance.$type,
    };
