// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqQuestionModel _$FaqQuestionModelFromJson(Map<String, dynamic> json) {
  return _FaqQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$FaqQuestionModel {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqQuestionModelCopyWith<FaqQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqQuestionModelCopyWith<$Res> {
  factory $FaqQuestionModelCopyWith(
          FaqQuestionModel value, $Res Function(FaqQuestionModel) then) =
      _$FaqQuestionModelCopyWithImpl<$Res, FaqQuestionModel>;
  @useResult
  $Res call(
      {int id,
      String question,
      String answer,
      @JsonKey(name: 'created_at') @DateTimeConverter() DateTime createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class _$FaqQuestionModelCopyWithImpl<$Res, $Val extends FaqQuestionModel>
    implements $FaqQuestionModelCopyWith<$Res> {
  _$FaqQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$FaqQuestionModelImplCopyWith<$Res>
    implements $FaqQuestionModelCopyWith<$Res> {
  factory _$$FaqQuestionModelImplCopyWith(_$FaqQuestionModelImpl value,
          $Res Function(_$FaqQuestionModelImpl) then) =
      __$$FaqQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String question,
      String answer,
      @JsonKey(name: 'created_at') @DateTimeConverter() DateTime createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class __$$FaqQuestionModelImplCopyWithImpl<$Res>
    extends _$FaqQuestionModelCopyWithImpl<$Res, _$FaqQuestionModelImpl>
    implements _$$FaqQuestionModelImplCopyWith<$Res> {
  __$$FaqQuestionModelImplCopyWithImpl(_$FaqQuestionModelImpl _value,
      $Res Function(_$FaqQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FaqQuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$FaqQuestionModelImpl implements _FaqQuestionModel {
  _$FaqQuestionModelImpl(
      {required this.id,
      required this.question,
      required this.answer,
      @JsonKey(name: 'created_at') @DateTimeConverter() required this.createdAt,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      required this.updatedAt});

  factory _$FaqQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqQuestionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String question;
  @override
  final String answer;
  @override
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FaqQuestionModel(id: $id, question: $question, answer: $answer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, question, answer, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqQuestionModelImplCopyWith<_$FaqQuestionModelImpl> get copyWith =>
      __$$FaqQuestionModelImplCopyWithImpl<_$FaqQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _FaqQuestionModel implements FaqQuestionModel {
  factory _FaqQuestionModel(
      {required final int id,
      required final String question,
      required final String answer,
      @JsonKey(name: 'created_at')
      @DateTimeConverter()
      required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      required final DateTime updatedAt}) = _$FaqQuestionModelImpl;

  factory _FaqQuestionModel.fromJson(Map<String, dynamic> json) =
      _$FaqQuestionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FaqQuestionModelImplCopyWith<_$FaqQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
