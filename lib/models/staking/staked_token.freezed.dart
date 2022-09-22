// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'staked_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StakedToken _$StakedTokenFromJson(Map<String, dynamic> json) {
  return _StakedToken.fromJson(json);
}

/// @nodoc
mixin _$StakedToken {
  String get tokenAddress => throw _privateConstructorUsedError;
  String get tokenSymbol => throw _privateConstructorUsedError;
  String get tokenName => throw _privateConstructorUsedError;
  String get tokenLogoURI => throw _privateConstructorUsedError;
  String get stakedAmount => throw _privateConstructorUsedError;
  String get stakedAmountUSD => throw _privateConstructorUsedError;
  String get earnedAmountUSD => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakedTokenCopyWith<StakedToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakedTokenCopyWith<$Res> {
  factory $StakedTokenCopyWith(
          StakedToken value, $Res Function(StakedToken) then) =
      _$StakedTokenCopyWithImpl<$Res>;
  $Res call(
      {String tokenAddress,
      String tokenSymbol,
      String tokenName,
      String tokenLogoURI,
      String stakedAmount,
      String stakedAmountUSD,
      String earnedAmountUSD});
}

/// @nodoc
class _$StakedTokenCopyWithImpl<$Res> implements $StakedTokenCopyWith<$Res> {
  _$StakedTokenCopyWithImpl(this._value, this._then);

  final StakedToken _value;
  // ignore: unused_field
  final $Res Function(StakedToken) _then;

  @override
  $Res call({
    Object? tokenAddress = freezed,
    Object? tokenSymbol = freezed,
    Object? tokenName = freezed,
    Object? tokenLogoURI = freezed,
    Object? stakedAmount = freezed,
    Object? stakedAmountUSD = freezed,
    Object? earnedAmountUSD = freezed,
  }) {
    return _then(_value.copyWith(
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: tokenSymbol == freezed
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: tokenName == freezed
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenLogoURI: tokenLogoURI == freezed
          ? _value.tokenLogoURI
          : tokenLogoURI // ignore: cast_nullable_to_non_nullable
              as String,
      stakedAmount: stakedAmount == freezed
          ? _value.stakedAmount
          : stakedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      stakedAmountUSD: stakedAmountUSD == freezed
          ? _value.stakedAmountUSD
          : stakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
      earnedAmountUSD: earnedAmountUSD == freezed
          ? _value.earnedAmountUSD
          : earnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StakedTokenCopyWith<$Res>
    implements $StakedTokenCopyWith<$Res> {
  factory _$$_StakedTokenCopyWith(
          _$_StakedToken value, $Res Function(_$_StakedToken) then) =
      __$$_StakedTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String tokenAddress,
      String tokenSymbol,
      String tokenName,
      String tokenLogoURI,
      String stakedAmount,
      String stakedAmountUSD,
      String earnedAmountUSD});
}

/// @nodoc
class __$$_StakedTokenCopyWithImpl<$Res> extends _$StakedTokenCopyWithImpl<$Res>
    implements _$$_StakedTokenCopyWith<$Res> {
  __$$_StakedTokenCopyWithImpl(
      _$_StakedToken _value, $Res Function(_$_StakedToken) _then)
      : super(_value, (v) => _then(v as _$_StakedToken));

  @override
  _$_StakedToken get _value => super._value as _$_StakedToken;

  @override
  $Res call({
    Object? tokenAddress = freezed,
    Object? tokenSymbol = freezed,
    Object? tokenName = freezed,
    Object? tokenLogoURI = freezed,
    Object? stakedAmount = freezed,
    Object? stakedAmountUSD = freezed,
    Object? earnedAmountUSD = freezed,
  }) {
    return _then(_$_StakedToken(
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: tokenSymbol == freezed
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: tokenName == freezed
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenLogoURI: tokenLogoURI == freezed
          ? _value.tokenLogoURI
          : tokenLogoURI // ignore: cast_nullable_to_non_nullable
              as String,
      stakedAmount: stakedAmount == freezed
          ? _value.stakedAmount
          : stakedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      stakedAmountUSD: stakedAmountUSD == freezed
          ? _value.stakedAmountUSD
          : stakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
      earnedAmountUSD: earnedAmountUSD == freezed
          ? _value.earnedAmountUSD
          : earnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakedToken implements _StakedToken {
  _$_StakedToken(
      {required this.tokenAddress,
      required this.tokenSymbol,
      required this.tokenName,
      required this.tokenLogoURI,
      required this.stakedAmount,
      required this.stakedAmountUSD,
      required this.earnedAmountUSD});

  factory _$_StakedToken.fromJson(Map<String, dynamic> json) =>
      _$$_StakedTokenFromJson(json);

  @override
  final String tokenAddress;
  @override
  final String tokenSymbol;
  @override
  final String tokenName;
  @override
  final String tokenLogoURI;
  @override
  final String stakedAmount;
  @override
  final String stakedAmountUSD;
  @override
  final String earnedAmountUSD;

  @override
  String toString() {
    return 'StakedToken(tokenAddress: $tokenAddress, tokenSymbol: $tokenSymbol, tokenName: $tokenName, tokenLogoURI: $tokenLogoURI, stakedAmount: $stakedAmount, stakedAmountUSD: $stakedAmountUSD, earnedAmountUSD: $earnedAmountUSD)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StakedToken &&
            const DeepCollectionEquality()
                .equals(other.tokenAddress, tokenAddress) &&
            const DeepCollectionEquality()
                .equals(other.tokenSymbol, tokenSymbol) &&
            const DeepCollectionEquality().equals(other.tokenName, tokenName) &&
            const DeepCollectionEquality()
                .equals(other.tokenLogoURI, tokenLogoURI) &&
            const DeepCollectionEquality()
                .equals(other.stakedAmount, stakedAmount) &&
            const DeepCollectionEquality()
                .equals(other.stakedAmountUSD, stakedAmountUSD) &&
            const DeepCollectionEquality()
                .equals(other.earnedAmountUSD, earnedAmountUSD));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenAddress),
      const DeepCollectionEquality().hash(tokenSymbol),
      const DeepCollectionEquality().hash(tokenName),
      const DeepCollectionEquality().hash(tokenLogoURI),
      const DeepCollectionEquality().hash(stakedAmount),
      const DeepCollectionEquality().hash(stakedAmountUSD),
      const DeepCollectionEquality().hash(earnedAmountUSD));

  @JsonKey(ignore: true)
  @override
  _$$_StakedTokenCopyWith<_$_StakedToken> get copyWith =>
      __$$_StakedTokenCopyWithImpl<_$_StakedToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakedTokenToJson(
      this,
    );
  }
}

abstract class _StakedToken implements StakedToken {
  factory _StakedToken(
      {required final String tokenAddress,
      required final String tokenSymbol,
      required final String tokenName,
      required final String tokenLogoURI,
      required final String stakedAmount,
      required final String stakedAmountUSD,
      required final String earnedAmountUSD}) = _$_StakedToken;

  factory _StakedToken.fromJson(Map<String, dynamic> json) =
      _$_StakedToken.fromJson;

  @override
  String get tokenAddress;
  @override
  String get tokenSymbol;
  @override
  String get tokenName;
  @override
  String get tokenLogoURI;
  @override
  String get stakedAmount;
  @override
  String get stakedAmountUSD;
  @override
  String get earnedAmountUSD;
  @override
  @JsonKey(ignore: true)
  _$$_StakedTokenCopyWith<_$_StakedToken> get copyWith =>
      throw _privateConstructorUsedError;
}

StakedTokenResponse _$StakedTokenResponseFromJson(Map<String, dynamic> json) {
  return _StakedTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$StakedTokenResponse {
  String get totalStakedAmountUSD => throw _privateConstructorUsedError;
  String get totalEarnedAmountUSD => throw _privateConstructorUsedError;
  List<StakedToken> get stakedTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakedTokenResponseCopyWith<StakedTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakedTokenResponseCopyWith<$Res> {
  factory $StakedTokenResponseCopyWith(
          StakedTokenResponse value, $Res Function(StakedTokenResponse) then) =
      _$StakedTokenResponseCopyWithImpl<$Res>;
  $Res call(
      {String totalStakedAmountUSD,
      String totalEarnedAmountUSD,
      List<StakedToken> stakedTokens});
}

/// @nodoc
class _$StakedTokenResponseCopyWithImpl<$Res>
    implements $StakedTokenResponseCopyWith<$Res> {
  _$StakedTokenResponseCopyWithImpl(this._value, this._then);

  final StakedTokenResponse _value;
  // ignore: unused_field
  final $Res Function(StakedTokenResponse) _then;

  @override
  $Res call({
    Object? totalStakedAmountUSD = freezed,
    Object? totalEarnedAmountUSD = freezed,
    Object? stakedTokens = freezed,
  }) {
    return _then(_value.copyWith(
      totalStakedAmountUSD: totalStakedAmountUSD == freezed
          ? _value.totalStakedAmountUSD
          : totalStakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
      totalEarnedAmountUSD: totalEarnedAmountUSD == freezed
          ? _value.totalEarnedAmountUSD
          : totalEarnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
      stakedTokens: stakedTokens == freezed
          ? _value.stakedTokens
          : stakedTokens // ignore: cast_nullable_to_non_nullable
              as List<StakedToken>,
    ));
  }
}

/// @nodoc
abstract class _$$_StakedTokenResponseCopyWith<$Res>
    implements $StakedTokenResponseCopyWith<$Res> {
  factory _$$_StakedTokenResponseCopyWith(_$_StakedTokenResponse value,
          $Res Function(_$_StakedTokenResponse) then) =
      __$$_StakedTokenResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String totalStakedAmountUSD,
      String totalEarnedAmountUSD,
      List<StakedToken> stakedTokens});
}

/// @nodoc
class __$$_StakedTokenResponseCopyWithImpl<$Res>
    extends _$StakedTokenResponseCopyWithImpl<$Res>
    implements _$$_StakedTokenResponseCopyWith<$Res> {
  __$$_StakedTokenResponseCopyWithImpl(_$_StakedTokenResponse _value,
      $Res Function(_$_StakedTokenResponse) _then)
      : super(_value, (v) => _then(v as _$_StakedTokenResponse));

  @override
  _$_StakedTokenResponse get _value => super._value as _$_StakedTokenResponse;

  @override
  $Res call({
    Object? totalStakedAmountUSD = freezed,
    Object? totalEarnedAmountUSD = freezed,
    Object? stakedTokens = freezed,
  }) {
    return _then(_$_StakedTokenResponse(
      totalStakedAmountUSD: totalStakedAmountUSD == freezed
          ? _value.totalStakedAmountUSD
          : totalStakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
      totalEarnedAmountUSD: totalEarnedAmountUSD == freezed
          ? _value.totalEarnedAmountUSD
          : totalEarnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as String,
      stakedTokens: stakedTokens == freezed
          ? _value.stakedTokens
          : stakedTokens // ignore: cast_nullable_to_non_nullable
              as List<StakedToken>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakedTokenResponse implements _StakedTokenResponse {
  _$_StakedTokenResponse(
      {required this.totalStakedAmountUSD,
      required this.totalEarnedAmountUSD,
      required this.stakedTokens});

  factory _$_StakedTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StakedTokenResponseFromJson(json);

  @override
  final String totalStakedAmountUSD;
  @override
  final String totalEarnedAmountUSD;
  @override
  final List<StakedToken> stakedTokens;

  @override
  String toString() {
    return 'StakedTokenResponse(totalStakedAmountUSD: $totalStakedAmountUSD, totalEarnedAmountUSD: $totalEarnedAmountUSD, stakedTokens: $stakedTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StakedTokenResponse &&
            const DeepCollectionEquality()
                .equals(other.totalStakedAmountUSD, totalStakedAmountUSD) &&
            const DeepCollectionEquality()
                .equals(other.totalEarnedAmountUSD, totalEarnedAmountUSD) &&
            const DeepCollectionEquality()
                .equals(other.stakedTokens, stakedTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalStakedAmountUSD),
      const DeepCollectionEquality().hash(totalEarnedAmountUSD),
      const DeepCollectionEquality().hash(stakedTokens));

  @JsonKey(ignore: true)
  @override
  _$$_StakedTokenResponseCopyWith<_$_StakedTokenResponse> get copyWith =>
      __$$_StakedTokenResponseCopyWithImpl<_$_StakedTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakedTokenResponseToJson(
      this,
    );
  }
}

abstract class _StakedTokenResponse implements StakedTokenResponse {
  factory _StakedTokenResponse(
      {required final String totalStakedAmountUSD,
      required final String totalEarnedAmountUSD,
      required final List<StakedToken> stakedTokens}) = _$_StakedTokenResponse;

  factory _StakedTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_StakedTokenResponse.fromJson;

  @override
  String get totalStakedAmountUSD;
  @override
  String get totalEarnedAmountUSD;
  @override
  List<StakedToken> get stakedTokens;
  @override
  @JsonKey(ignore: true)
  _$$_StakedTokenResponseCopyWith<_$_StakedTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
