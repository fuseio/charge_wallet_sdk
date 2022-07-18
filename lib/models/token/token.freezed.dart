// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenInfo _$TokenInfoFromJson(Map<String, dynamic> json) {
  return _TokenInfo.fromJson(json);
}

/// @nodoc
mixin _$TokenInfo {
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _nameFromJson)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _decimalsFromJson)
  int? get decimals => throw _privateConstructorUsedError;
  @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  BigInt get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenInfoCopyWith<TokenInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenInfoCopyWith<$Res> {
  factory $TokenInfoCopyWith(TokenInfo value, $Res Function(TokenInfo) then) =
      _$TokenInfoCopyWithImpl<$Res>;
  $Res call(
      {String symbol,
      @JsonKey(fromJson: _nameFromJson)
          String name,
      @JsonKey(fromJson: _decimalsFromJson)
          int? decimals,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          String address,
      @JsonKey(name: 'balance')
          BigInt amount});
}

/// @nodoc
class _$TokenInfoCopyWithImpl<$Res> implements $TokenInfoCopyWith<$Res> {
  _$TokenInfoCopyWithImpl(this._value, this._then);

  final TokenInfo _value;
  // ignore: unused_field
  final $Res Function(TokenInfo) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? decimals = freezed,
    Object? address = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenInfoCopyWith<$Res> implements $TokenInfoCopyWith<$Res> {
  factory _$$_TokenInfoCopyWith(
          _$_TokenInfo value, $Res Function(_$_TokenInfo) then) =
      __$$_TokenInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String symbol,
      @JsonKey(fromJson: _nameFromJson)
          String name,
      @JsonKey(fromJson: _decimalsFromJson)
          int? decimals,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          String address,
      @JsonKey(name: 'balance')
          BigInt amount});
}

/// @nodoc
class __$$_TokenInfoCopyWithImpl<$Res> extends _$TokenInfoCopyWithImpl<$Res>
    implements _$$_TokenInfoCopyWith<$Res> {
  __$$_TokenInfoCopyWithImpl(
      _$_TokenInfo _value, $Res Function(_$_TokenInfo) _then)
      : super(_value, (v) => _then(v as _$_TokenInfo));

  @override
  _$_TokenInfo get _value => super._value as _$_TokenInfo;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? decimals = freezed,
    Object? address = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_TokenInfo(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenInfo implements _TokenInfo {
  _$_TokenInfo(
      {required this.symbol,
      @JsonKey(fromJson: _nameFromJson)
          required this.name,
      @JsonKey(fromJson: _decimalsFromJson)
          this.decimals = 0,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          required this.address,
      @JsonKey(name: 'balance')
          required this.amount});

  factory _$_TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TokenInfoFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: _nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: _decimalsFromJson)
  final int? decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
  final String address;
  @override
  @JsonKey(name: 'balance')
  final BigInt amount;

  @override
  String toString() {
    return 'TokenInfo(symbol: $symbol, name: $name, decimals: $decimals, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenInfo &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.decimals, decimals) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(decimals),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_TokenInfoCopyWith<_$_TokenInfo> get copyWith =>
      __$$_TokenInfoCopyWithImpl<_$_TokenInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenInfoToJson(
      this,
    );
  }
}

abstract class _TokenInfo implements TokenInfo {
  factory _TokenInfo(
      {required final String symbol,
      @JsonKey(fromJson: _nameFromJson)
          required final String name,
      @JsonKey(fromJson: _decimalsFromJson)
          final int? decimals,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          required final String address,
      @JsonKey(name: 'balance')
          required final BigInt amount}) = _$_TokenInfo;

  factory _TokenInfo.fromJson(Map<String, dynamic> json) =
      _$_TokenInfo.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: _nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: _decimalsFromJson)
  int? get decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
  String get address;
  @override
  @JsonKey(name: 'balance')
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$_TokenInfoCopyWith<_$_TokenInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
