// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) {
  return _DefaultResponse.fromJson(json);
}

/// @nodoc
mixin _$DefaultResponse {
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultResponseCopyWith<DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultResponseCopyWith<$Res> {
  factory $DefaultResponseCopyWith(
          DefaultResponse value, $Res Function(DefaultResponse) then) =
      _$DefaultResponseCopyWithImpl<$Res, DefaultResponse>;
  @useResult
  $Res call({String? message, String? status});
}

/// @nodoc
class _$DefaultResponseCopyWithImpl<$Res, $Val extends DefaultResponse>
    implements $DefaultResponseCopyWith<$Res> {
  _$DefaultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultResponseImplCopyWith<$Res>
    implements $DefaultResponseCopyWith<$Res> {
  factory _$$DefaultResponseImplCopyWith(_$DefaultResponseImpl value,
          $Res Function(_$DefaultResponseImpl) then) =
      __$$DefaultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? status});
}

/// @nodoc
class __$$DefaultResponseImplCopyWithImpl<$Res>
    extends _$DefaultResponseCopyWithImpl<$Res, _$DefaultResponseImpl>
    implements _$$DefaultResponseImplCopyWith<$Res> {
  __$$DefaultResponseImplCopyWithImpl(
      _$DefaultResponseImpl _value, $Res Function(_$DefaultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DefaultResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultResponseImpl implements _DefaultResponse {
  _$DefaultResponseImpl({this.message, this.status});

  factory _$DefaultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final String? status;

  @override
  String toString() {
    return 'DefaultResponse(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultResponseImplCopyWith<_$DefaultResponseImpl> get copyWith =>
      __$$DefaultResponseImplCopyWithImpl<_$DefaultResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultResponseImplToJson(
      this,
    );
  }
}

abstract class _DefaultResponse implements DefaultResponse {
  factory _DefaultResponse({final String? message, final String? status}) =
      _$DefaultResponseImpl;

  factory _DefaultResponse.fromJson(Map<String, dynamic> json) =
      _$DefaultResponseImpl.fromJson;

  @override
  String? get message;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$DefaultResponseImplCopyWith<_$DefaultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
