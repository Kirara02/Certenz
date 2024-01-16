// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentTransactionModel _$RecentTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _RecentTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$RecentTransactionModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imgProfile => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentTransactionModelCopyWith<RecentTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentTransactionModelCopyWith<$Res> {
  factory $RecentTransactionModelCopyWith(RecentTransactionModel value,
          $Res Function(RecentTransactionModel) then) =
      _$RecentTransactionModelCopyWithImpl<$Res, RecentTransactionModel>;
  @useResult
  $Res call({int id, String name, String imgProfile, double amount});
}

/// @nodoc
class _$RecentTransactionModelCopyWithImpl<$Res,
        $Val extends RecentTransactionModel>
    implements $RecentTransactionModelCopyWith<$Res> {
  _$RecentTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgProfile = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgProfile: null == imgProfile
          ? _value.imgProfile
          : imgProfile // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentTransactionModelImplCopyWith<$Res>
    implements $RecentTransactionModelCopyWith<$Res> {
  factory _$$RecentTransactionModelImplCopyWith(
          _$RecentTransactionModelImpl value,
          $Res Function(_$RecentTransactionModelImpl) then) =
      __$$RecentTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String imgProfile, double amount});
}

/// @nodoc
class __$$RecentTransactionModelImplCopyWithImpl<$Res>
    extends _$RecentTransactionModelCopyWithImpl<$Res,
        _$RecentTransactionModelImpl>
    implements _$$RecentTransactionModelImplCopyWith<$Res> {
  __$$RecentTransactionModelImplCopyWithImpl(
      _$RecentTransactionModelImpl _value,
      $Res Function(_$RecentTransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgProfile = null,
    Object? amount = null,
  }) {
    return _then(_$RecentTransactionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgProfile: null == imgProfile
          ? _value.imgProfile
          : imgProfile // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentTransactionModelImpl implements _RecentTransactionModel {
  _$RecentTransactionModelImpl(
      {required this.id,
      required this.name,
      required this.imgProfile,
      required this.amount});

  factory _$RecentTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentTransactionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imgProfile;
  @override
  final double amount;

  @override
  String toString() {
    return 'RecentTransactionModel(id: $id, name: $name, imgProfile: $imgProfile, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgProfile, imgProfile) ||
                other.imgProfile == imgProfile) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgProfile, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentTransactionModelImplCopyWith<_$RecentTransactionModelImpl>
      get copyWith => __$$RecentTransactionModelImplCopyWithImpl<
          _$RecentTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _RecentTransactionModel implements RecentTransactionModel {
  factory _RecentTransactionModel(
      {required final int id,
      required final String name,
      required final String imgProfile,
      required final double amount}) = _$RecentTransactionModelImpl;

  factory _RecentTransactionModel.fromJson(Map<String, dynamic> json) =
      _$RecentTransactionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imgProfile;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$RecentTransactionModelImplCopyWith<_$RecentTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
