// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResponseMessage _$ErrorResponseMessageFromJson(Map<String, dynamic> json) {
  return _ErrorResponseMessage.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseMessage {
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseMessageCopyWith<ErrorResponseMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseMessageCopyWith<$Res> {
  factory $ErrorResponseMessageCopyWith(ErrorResponseMessage value,
          $Res Function(ErrorResponseMessage) then) =
      _$ErrorResponseMessageCopyWithImpl<$Res, ErrorResponseMessage>;
  @useResult
  $Res call({String? message, Map<String, dynamic>? errors});
}

/// @nodoc
class _$ErrorResponseMessageCopyWithImpl<$Res,
        $Val extends ErrorResponseMessage>
    implements $ErrorResponseMessageCopyWith<$Res> {
  _$ErrorResponseMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResponseMessageImplCopyWith<$Res>
    implements $ErrorResponseMessageCopyWith<$Res> {
  factory _$$ErrorResponseMessageImplCopyWith(_$ErrorResponseMessageImpl value,
          $Res Function(_$ErrorResponseMessageImpl) then) =
      __$$ErrorResponseMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Map<String, dynamic>? errors});
}

/// @nodoc
class __$$ErrorResponseMessageImplCopyWithImpl<$Res>
    extends _$ErrorResponseMessageCopyWithImpl<$Res, _$ErrorResponseMessageImpl>
    implements _$$ErrorResponseMessageImplCopyWith<$Res> {
  __$$ErrorResponseMessageImplCopyWithImpl(_$ErrorResponseMessageImpl _value,
      $Res Function(_$ErrorResponseMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ErrorResponseMessageImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseMessageImpl implements _ErrorResponseMessage {
  _$ErrorResponseMessageImpl({this.message, final Map<String, dynamic>? errors})
      : _errors = errors;

  factory _$ErrorResponseMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseMessageImplFromJson(json);

  @override
  final String? message;
  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ErrorResponseMessage(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseMessageImplCopyWith<_$ErrorResponseMessageImpl>
      get copyWith =>
          __$$ErrorResponseMessageImplCopyWithImpl<_$ErrorResponseMessageImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseMessageImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseMessage implements ErrorResponseMessage {
  factory _ErrorResponseMessage(
      {final String? message,
      final Map<String, dynamic>? errors}) = _$ErrorResponseMessageImpl;

  factory _ErrorResponseMessage.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseMessageImpl.fromJson;

  @override
  String? get message;
  @override
  Map<String, dynamic>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseMessageImplCopyWith<_$ErrorResponseMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
