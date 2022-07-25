// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trade_call_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TradeCallParameters _$TradeCallParametersFromJson(Map<String, dynamic> json) {
  return _TradeCallParameters.fromJson(json);
}

/// @nodoc
mixin _$TradeCallParameters {
  String get methodName => throw _privateConstructorUsedError;
  List<dynamic> get args => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  Map<String, dynamic> get rawTxn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeCallParametersCopyWith<TradeCallParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeCallParametersCopyWith<$Res> {
  factory $TradeCallParametersCopyWith(
          TradeCallParameters value, $Res Function(TradeCallParameters) then) =
      _$TradeCallParametersCopyWithImpl<$Res>;
  $Res call(
      {String methodName,
      List<dynamic> args,
      String value,
      Map<String, dynamic> rawTxn});
}

/// @nodoc
class _$TradeCallParametersCopyWithImpl<$Res>
    implements $TradeCallParametersCopyWith<$Res> {
  _$TradeCallParametersCopyWithImpl(this._value, this._then);

  final TradeCallParameters _value;
  // ignore: unused_field
  final $Res Function(TradeCallParameters) _then;

  @override
  $Res call({
    Object? methodName = freezed,
    Object? args = freezed,
    Object? value = freezed,
    Object? rawTxn = freezed,
  }) {
    return _then(_value.copyWith(
      methodName: methodName == freezed
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      args: args == freezed
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      rawTxn: rawTxn == freezed
          ? _value.rawTxn
          : rawTxn // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_TradeCallParametersCopyWith<$Res>
    implements $TradeCallParametersCopyWith<$Res> {
  factory _$$_TradeCallParametersCopyWith(_$_TradeCallParameters value,
          $Res Function(_$_TradeCallParameters) then) =
      __$$_TradeCallParametersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String methodName,
      List<dynamic> args,
      String value,
      Map<String, dynamic> rawTxn});
}

/// @nodoc
class __$$_TradeCallParametersCopyWithImpl<$Res>
    extends _$TradeCallParametersCopyWithImpl<$Res>
    implements _$$_TradeCallParametersCopyWith<$Res> {
  __$$_TradeCallParametersCopyWithImpl(_$_TradeCallParameters _value,
      $Res Function(_$_TradeCallParameters) _then)
      : super(_value, (v) => _then(v as _$_TradeCallParameters));

  @override
  _$_TradeCallParameters get _value => super._value as _$_TradeCallParameters;

  @override
  $Res call({
    Object? methodName = freezed,
    Object? args = freezed,
    Object? value = freezed,
    Object? rawTxn = freezed,
  }) {
    return _then(_$_TradeCallParameters(
      methodName: methodName == freezed
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      args: args == freezed
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      rawTxn: rawTxn == freezed
          ? _value.rawTxn
          : rawTxn // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TradeCallParameters implements _TradeCallParameters {
  _$_TradeCallParameters(
      {required this.methodName,
      required this.args,
      required this.value,
      required this.rawTxn});

  factory _$_TradeCallParameters.fromJson(Map<String, dynamic> json) =>
      _$$_TradeCallParametersFromJson(json);

  @override
  final String methodName;
  @override
  final List<dynamic> args;
  @override
  final String value;
  @override
  final Map<String, dynamic> rawTxn;

  @override
  String toString() {
    return 'TradeCallParameters(methodName: $methodName, args: $args, value: $value, rawTxn: $rawTxn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TradeCallParameters &&
            const DeepCollectionEquality()
                .equals(other.methodName, methodName) &&
            const DeepCollectionEquality().equals(other.args, args) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.rawTxn, rawTxn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(methodName),
      const DeepCollectionEquality().hash(args),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(rawTxn));

  @JsonKey(ignore: true)
  @override
  _$$_TradeCallParametersCopyWith<_$_TradeCallParameters> get copyWith =>
      __$$_TradeCallParametersCopyWithImpl<_$_TradeCallParameters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TradeCallParametersToJson(
      this,
    );
  }
}

abstract class _TradeCallParameters implements TradeCallParameters {
  factory _TradeCallParameters(
      {required final String methodName,
      required final List<dynamic> args,
      required final String value,
      required final Map<String, dynamic> rawTxn}) = _$_TradeCallParameters;

  factory _TradeCallParameters.fromJson(Map<String, dynamic> json) =
      _$_TradeCallParameters.fromJson;

  @override
  String get methodName;
  @override
  List<dynamic> get args;
  @override
  String get value;
  @override
  Map<String, dynamic> get rawTxn;
  @override
  @JsonKey(ignore: true)
  _$$_TradeCallParametersCopyWith<_$_TradeCallParameters> get copyWith =>
      throw _privateConstructorUsedError;
}
