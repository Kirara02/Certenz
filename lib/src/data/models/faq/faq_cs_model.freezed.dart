// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_cs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqCsModel _$FaqCsModelFromJson(Map<String, dynamic> json) {
  return _FaqCsModel.fromJson(json);
}

/// @nodoc
mixin _$FaqCsModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError; // Nullable field
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqCsModelCopyWith<FaqCsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCsModelCopyWith<$Res> {
  factory $FaqCsModelCopyWith(
          FaqCsModel value, $Res Function(FaqCsModel) then) =
      _$FaqCsModelCopyWithImpl<$Res, FaqCsModel>;
  @useResult
  $Res call(
      {int id,
      String type,
      String title,
      String? detail,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$FaqCsModelCopyWithImpl<$Res, $Val extends FaqCsModel>
    implements $FaqCsModelCopyWith<$Res> {
  _$FaqCsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? detail = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqCsModelImplCopyWith<$Res>
    implements $FaqCsModelCopyWith<$Res> {
  factory _$$FaqCsModelImplCopyWith(
          _$FaqCsModelImpl value, $Res Function(_$FaqCsModelImpl) then) =
      __$$FaqCsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      String title,
      String? detail,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$FaqCsModelImplCopyWithImpl<$Res>
    extends _$FaqCsModelCopyWithImpl<$Res, _$FaqCsModelImpl>
    implements _$$FaqCsModelImplCopyWith<$Res> {
  __$$FaqCsModelImplCopyWithImpl(
      _$FaqCsModelImpl _value, $Res Function(_$FaqCsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? detail = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FaqCsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqCsModelImpl implements _FaqCsModel {
  const _$FaqCsModelImpl(
      {required this.id,
      required this.type,
      required this.title,
      this.detail,
      @DateTimeConverter() @JsonKey(name: 'created_at') required this.createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt});

  factory _$FaqCsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqCsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String? detail;
// Nullable field
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FaqCsModel(id: $id, type: $type, title: $title, detail: $detail, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqCsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, title, detail, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqCsModelImplCopyWith<_$FaqCsModelImpl> get copyWith =>
      __$$FaqCsModelImplCopyWithImpl<_$FaqCsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqCsModelImplToJson(
      this,
    );
  }
}

abstract class _FaqCsModel implements FaqCsModel {
  const factory _FaqCsModel(
      {required final int id,
      required final String type,
      required final String title,
      final String? detail,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$FaqCsModelImpl;

  factory _FaqCsModel.fromJson(Map<String, dynamic> json) =
      _$FaqCsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String? get detail;
  @override // Nullable field
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FaqCsModelImplCopyWith<_$FaqCsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
