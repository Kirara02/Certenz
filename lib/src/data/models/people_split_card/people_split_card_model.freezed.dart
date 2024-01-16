// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_split_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeopleSplitCardModel _$PeopleSplitCardModelFromJson(Map<String, dynamic> json) {
  return _PeopleSplitCardModel.fromJson(json);
}

/// @nodoc
mixin _$PeopleSplitCardModel {
  String get email => throw _privateConstructorUsedError;
  String get nohp => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleSplitCardModelCopyWith<PeopleSplitCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleSplitCardModelCopyWith<$Res> {
  factory $PeopleSplitCardModelCopyWith(PeopleSplitCardModel value,
          $Res Function(PeopleSplitCardModel) then) =
      _$PeopleSplitCardModelCopyWithImpl<$Res, PeopleSplitCardModel>;
  @useResult
  $Res call({String email, String nohp, double amount, String status});
}

/// @nodoc
class _$PeopleSplitCardModelCopyWithImpl<$Res,
        $Val extends PeopleSplitCardModel>
    implements $PeopleSplitCardModelCopyWith<$Res> {
  _$PeopleSplitCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? nohp = null,
    Object? amount = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nohp: null == nohp
          ? _value.nohp
          : nohp // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleSplitCardModelImplCopyWith<$Res>
    implements $PeopleSplitCardModelCopyWith<$Res> {
  factory _$$PeopleSplitCardModelImplCopyWith(_$PeopleSplitCardModelImpl value,
          $Res Function(_$PeopleSplitCardModelImpl) then) =
      __$$PeopleSplitCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String nohp, double amount, String status});
}

/// @nodoc
class __$$PeopleSplitCardModelImplCopyWithImpl<$Res>
    extends _$PeopleSplitCardModelCopyWithImpl<$Res, _$PeopleSplitCardModelImpl>
    implements _$$PeopleSplitCardModelImplCopyWith<$Res> {
  __$$PeopleSplitCardModelImplCopyWithImpl(_$PeopleSplitCardModelImpl _value,
      $Res Function(_$PeopleSplitCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? nohp = null,
    Object? amount = null,
    Object? status = null,
  }) {
    return _then(_$PeopleSplitCardModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nohp: null == nohp
          ? _value.nohp
          : nohp // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleSplitCardModelImpl implements _PeopleSplitCardModel {
  _$PeopleSplitCardModelImpl(
      {required this.email,
      required this.nohp,
      required this.amount,
      required this.status});

  factory _$PeopleSplitCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleSplitCardModelImplFromJson(json);

  @override
  final String email;
  @override
  final String nohp;
  @override
  final double amount;
  @override
  final String status;

  @override
  String toString() {
    return 'PeopleSplitCardModel(email: $email, nohp: $nohp, amount: $amount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleSplitCardModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nohp, nohp) || other.nohp == nohp) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, nohp, amount, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleSplitCardModelImplCopyWith<_$PeopleSplitCardModelImpl>
      get copyWith =>
          __$$PeopleSplitCardModelImplCopyWithImpl<_$PeopleSplitCardModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleSplitCardModelImplToJson(
      this,
    );
  }
}

abstract class _PeopleSplitCardModel implements PeopleSplitCardModel {
  factory _PeopleSplitCardModel(
      {required final String email,
      required final String nohp,
      required final double amount,
      required final String status}) = _$PeopleSplitCardModelImpl;

  factory _PeopleSplitCardModel.fromJson(Map<String, dynamic> json) =
      _$PeopleSplitCardModelImpl.fromJson;

  @override
  String get email;
  @override
  String get nohp;
  @override
  double get amount;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$PeopleSplitCardModelImplCopyWith<_$PeopleSplitCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
