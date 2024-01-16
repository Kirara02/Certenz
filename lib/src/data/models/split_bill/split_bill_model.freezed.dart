// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SplitBillModel _$SplitBillModelFromJson(Map<String, dynamic> json) {
  return _SplitBillModel.fromJson(json);
}

/// @nodoc
mixin _$SplitBillModel {
  @JsonKey(name: "split_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_total')
  String get amountTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'set_fairy')
  bool get setFairy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplitBillModelCopyWith<SplitBillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitBillModelCopyWith<$Res> {
  factory $SplitBillModelCopyWith(
          SplitBillModel value, $Res Function(SplitBillModel) then) =
      _$SplitBillModelCopyWithImpl<$Res, SplitBillModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "split_id") int id,
      @JsonKey(name: "user_id") int userId,
      String title,
      @JsonKey(name: 'amount_total') String amountTotal,
      @JsonKey(name: 'set_fairy') bool setFairy});
}

/// @nodoc
class _$SplitBillModelCopyWithImpl<$Res, $Val extends SplitBillModel>
    implements $SplitBillModelCopyWith<$Res> {
  _$SplitBillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? amountTotal = null,
    Object? setFairy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amountTotal: null == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as String,
      setFairy: null == setFairy
          ? _value.setFairy
          : setFairy // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplitBillModelImplCopyWith<$Res>
    implements $SplitBillModelCopyWith<$Res> {
  factory _$$SplitBillModelImplCopyWith(_$SplitBillModelImpl value,
          $Res Function(_$SplitBillModelImpl) then) =
      __$$SplitBillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "split_id") int id,
      @JsonKey(name: "user_id") int userId,
      String title,
      @JsonKey(name: 'amount_total') String amountTotal,
      @JsonKey(name: 'set_fairy') bool setFairy});
}

/// @nodoc
class __$$SplitBillModelImplCopyWithImpl<$Res>
    extends _$SplitBillModelCopyWithImpl<$Res, _$SplitBillModelImpl>
    implements _$$SplitBillModelImplCopyWith<$Res> {
  __$$SplitBillModelImplCopyWithImpl(
      _$SplitBillModelImpl _value, $Res Function(_$SplitBillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? amountTotal = null,
    Object? setFairy = null,
  }) {
    return _then(_$SplitBillModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amountTotal: null == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as String,
      setFairy: null == setFairy
          ? _value.setFairy
          : setFairy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplitBillModelImpl implements _SplitBillModel {
  _$SplitBillModelImpl(
      {@JsonKey(name: "split_id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      required this.title,
      @JsonKey(name: 'amount_total') required this.amountTotal,
      @JsonKey(name: 'set_fairy') required this.setFairy});

  factory _$SplitBillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplitBillModelImplFromJson(json);

  @override
  @JsonKey(name: "split_id")
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  final String title;
  @override
  @JsonKey(name: 'amount_total')
  final String amountTotal;
  @override
  @JsonKey(name: 'set_fairy')
  final bool setFairy;

  @override
  String toString() {
    return 'SplitBillModel(id: $id, userId: $userId, title: $title, amountTotal: $amountTotal, setFairy: $setFairy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitBillModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amountTotal, amountTotal) ||
                other.amountTotal == amountTotal) &&
            (identical(other.setFairy, setFairy) ||
                other.setFairy == setFairy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, title, amountTotal, setFairy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitBillModelImplCopyWith<_$SplitBillModelImpl> get copyWith =>
      __$$SplitBillModelImplCopyWithImpl<_$SplitBillModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplitBillModelImplToJson(
      this,
    );
  }
}

abstract class _SplitBillModel implements SplitBillModel {
  factory _SplitBillModel(
          {@JsonKey(name: "split_id") required final int id,
          @JsonKey(name: "user_id") required final int userId,
          required final String title,
          @JsonKey(name: 'amount_total') required final String amountTotal,
          @JsonKey(name: 'set_fairy') required final bool setFairy}) =
      _$SplitBillModelImpl;

  factory _SplitBillModel.fromJson(Map<String, dynamic> json) =
      _$SplitBillModelImpl.fromJson;

  @override
  @JsonKey(name: "split_id")
  int get id;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  String get title;
  @override
  @JsonKey(name: 'amount_total')
  String get amountTotal;
  @override
  @JsonKey(name: 'set_fairy')
  bool get setFairy;
  @override
  @JsonKey(ignore: true)
  _$$SplitBillModelImplCopyWith<_$SplitBillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
