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
  switch (json['type']) {
    case 'ERC-20':
      return ERC20.fromJson(json);
    case 'ERC-721':
      return ERC721.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'TokenInfo', 'Invalid union type "${json['type']}"!');
  }
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)
        erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc721,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
abstract class _$$ERC20CopyWith<$Res> implements $TokenInfoCopyWith<$Res> {
  factory _$$ERC20CopyWith(_$ERC20 value, $Res Function(_$ERC20) then) =
      __$$ERC20CopyWithImpl<$Res>;
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
class __$$ERC20CopyWithImpl<$Res> extends _$TokenInfoCopyWithImpl<$Res>
    implements _$$ERC20CopyWith<$Res> {
  __$$ERC20CopyWithImpl(_$ERC20 _value, $Res Function(_$ERC20) _then)
      : super(_value, (v) => _then(v as _$ERC20));

  @override
  _$ERC20 get _value => super._value as _$ERC20;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? decimals = freezed,
    Object? address = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$ERC20(
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
class _$ERC20 extends ERC20 {
  const _$ERC20(
      {required this.symbol,
      @JsonKey(fromJson: _nameFromJson)
          required this.name,
      @JsonKey(fromJson: _decimalsFromJson)
          this.decimals = 0,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          required this.address,
      @JsonKey(name: 'balance')
          required this.amount,
      final String? $type})
      : $type = $type ?? 'ERC-20',
        super._();

  factory _$ERC20.fromJson(Map<String, dynamic> json) => _$$ERC20FromJson(json);

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

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenInfo.erc20(symbol: $symbol, name: $name, decimals: $decimals, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC20 &&
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
  _$$ERC20CopyWith<_$ERC20> get copyWith =>
      __$$ERC20CopyWithImpl<_$ERC20>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)
        erc721,
  }) {
    return erc20(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc721,
  }) {
    return erc20?.call(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (erc20 != null) {
      return erc20(symbol, name, decimals, address, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return erc20(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
  }) {
    return erc20?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (erc20 != null) {
      return erc20(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ERC20ToJson(
      this,
    );
  }
}

abstract class ERC20 extends TokenInfo {
  const factory ERC20(
      {required final String symbol,
      @JsonKey(fromJson: _nameFromJson)
          required final String name,
      @JsonKey(fromJson: _decimalsFromJson)
          final int? decimals,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          required final String address,
      @JsonKey(name: 'balance')
          required final BigInt amount}) = _$ERC20;
  const ERC20._() : super._();

  factory ERC20.fromJson(Map<String, dynamic> json) = _$ERC20.fromJson;

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
  _$$ERC20CopyWith<_$ERC20> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC721CopyWith<$Res> implements $TokenInfoCopyWith<$Res> {
  factory _$$ERC721CopyWith(_$ERC721 value, $Res Function(_$ERC721) then) =
      __$$ERC721CopyWithImpl<$Res>;
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
class __$$ERC721CopyWithImpl<$Res> extends _$TokenInfoCopyWithImpl<$Res>
    implements _$$ERC721CopyWith<$Res> {
  __$$ERC721CopyWithImpl(_$ERC721 _value, $Res Function(_$ERC721) _then)
      : super(_value, (v) => _then(v as _$ERC721));

  @override
  _$ERC721 get _value => super._value as _$ERC721;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? decimals = freezed,
    Object? address = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$ERC721(
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
class _$ERC721 extends ERC721 {
  const _$ERC721(
      {required this.symbol,
      @JsonKey(fromJson: _nameFromJson)
          required this.name,
      @JsonKey(fromJson: _decimalsFromJson)
          this.decimals = 0,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          required this.address,
      @JsonKey(name: 'balance')
          required this.amount,
      final String? $type})
      : $type = $type ?? 'ERC-721',
        super._();

  factory _$ERC721.fromJson(Map<String, dynamic> json) =>
      _$$ERC721FromJson(json);

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

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenInfo.erc721(symbol: $symbol, name: $name, decimals: $decimals, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC721 &&
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
  _$$ERC721CopyWith<_$ERC721> get copyWith =>
      __$$ERC721CopyWithImpl<_$ERC721>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)
        erc721,
  }) {
    return erc721(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc721,
  }) {
    return erc721?.call(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: _nameFromJson)
                String name,
            @JsonKey(fromJson: _decimalsFromJson)
                int? decimals,
            @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
                String address,
            @JsonKey(name: 'balance')
                BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (erc721 != null) {
      return erc721(symbol, name, decimals, address, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return erc721(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
  }) {
    return erc721?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (erc721 != null) {
      return erc721(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ERC721ToJson(
      this,
    );
  }
}

abstract class ERC721 extends TokenInfo {
  const factory ERC721(
      {required final String symbol,
      @JsonKey(fromJson: _nameFromJson)
          required final String name,
      @JsonKey(fromJson: _decimalsFromJson)
          final int? decimals,
      @JsonKey(name: 'contractAddress', fromJson: _addressFromJson)
          required final String address,
      @JsonKey(name: 'balance')
          required final BigInt amount}) = _$ERC721;
  const ERC721._() : super._();

  factory ERC721.fromJson(Map<String, dynamic> json) = _$ERC721.fromJson;

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
  _$$ERC721CopyWith<_$ERC721> get copyWith =>
      throw _privateConstructorUsedError;
}
