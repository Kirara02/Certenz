// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) {
  return _HistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryResponse {
  String get message => throw _privateConstructorUsedError;
  List<HistoryModel> get data => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryResponseCopyWith<HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryResponseCopyWith<$Res> {
  factory $HistoryResponseCopyWith(
          HistoryResponse value, $Res Function(HistoryResponse) then) =
      _$HistoryResponseCopyWithImpl<$Res, HistoryResponse>;
  @useResult
  $Res call(
      {String message,
      List<HistoryModel> data,
      Pagination pagination,
      String success});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$HistoryResponseCopyWithImpl<$Res, $Val extends HistoryResponse>
    implements $HistoryResponseCopyWith<$Res> {
  _$HistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
    Object? pagination = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryResponseImplCopyWith<$Res>
    implements $HistoryResponseCopyWith<$Res> {
  factory _$$HistoryResponseImplCopyWith(_$HistoryResponseImpl value,
          $Res Function(_$HistoryResponseImpl) then) =
      __$$HistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<HistoryModel> data,
      Pagination pagination,
      String success});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$HistoryResponseImplCopyWithImpl<$Res>
    extends _$HistoryResponseCopyWithImpl<$Res, _$HistoryResponseImpl>
    implements _$$HistoryResponseImplCopyWith<$Res> {
  __$$HistoryResponseImplCopyWithImpl(
      _$HistoryResponseImpl _value, $Res Function(_$HistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
    Object? pagination = null,
    Object? success = null,
  }) {
    return _then(_$HistoryResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryResponseImpl implements _HistoryResponse {
  const _$HistoryResponseImpl(
      {required this.message,
      required final List<HistoryModel> data,
      required this.pagination,
      required this.success})
      : _data = data;

  factory _$HistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryResponseImplFromJson(json);

  @override
  final String message;
  final List<HistoryModel> _data;
  @override
  List<HistoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Pagination pagination;
  @override
  final String success;

  @override
  String toString() {
    return 'HistoryResponse(message: $message, data: $data, pagination: $pagination, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_data), pagination, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryResponseImplCopyWith<_$HistoryResponseImpl> get copyWith =>
      __$$HistoryResponseImplCopyWithImpl<_$HistoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _HistoryResponse implements HistoryResponse {
  const factory _HistoryResponse(
      {required final String message,
      required final List<HistoryModel> data,
      required final Pagination pagination,
      required final String success}) = _$HistoryResponseImpl;

  factory _HistoryResponse.fromJson(Map<String, dynamic> json) =
      _$HistoryResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<HistoryModel> get data;
  @override
  Pagination get pagination;
  @override
  String get success;
  @override
  @JsonKey(ignore: true)
  _$$HistoryResponseImplCopyWith<_$HistoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
