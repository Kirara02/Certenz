// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryUserModel _$HistoryUserModelFromJson(Map<String, dynamic> json) {
  return _HistoryUserModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryUserModel {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryUserModelCopyWith<HistoryUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryUserModelCopyWith<$Res> {
  factory $HistoryUserModelCopyWith(
          HistoryUserModel value, $Res Function(HistoryUserModel) then) =
      _$HistoryUserModelCopyWithImpl<$Res, HistoryUserModel>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      @JsonKey(name: 'account_number') String? accountNumber});
}

/// @nodoc
class _$HistoryUserModelCopyWithImpl<$Res, $Val extends HistoryUserModel>
    implements $HistoryUserModelCopyWith<$Res> {
  _$HistoryUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? accountNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryUserModelImplCopyWith<$Res>
    implements $HistoryUserModelCopyWith<$Res> {
  factory _$$HistoryUserModelImplCopyWith(_$HistoryUserModelImpl value,
          $Res Function(_$HistoryUserModelImpl) then) =
      __$$HistoryUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      @JsonKey(name: 'account_number') String? accountNumber});
}

/// @nodoc
class __$$HistoryUserModelImplCopyWithImpl<$Res>
    extends _$HistoryUserModelCopyWithImpl<$Res, _$HistoryUserModelImpl>
    implements _$$HistoryUserModelImplCopyWith<$Res> {
  __$$HistoryUserModelImplCopyWithImpl(_$HistoryUserModelImpl _value,
      $Res Function(_$HistoryUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? accountNumber = freezed,
  }) {
    return _then(_$HistoryUserModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryUserModelImpl implements _HistoryUserModel {
  const _$HistoryUserModelImpl(
      {this.name,
      this.email,
      @JsonKey(name: 'account_number') this.accountNumber});

  factory _$HistoryUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryUserModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;

  @override
  String toString() {
    return 'HistoryUserModel(name: $name, email: $email, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryUserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, accountNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryUserModelImplCopyWith<_$HistoryUserModelImpl> get copyWith =>
      __$$HistoryUserModelImplCopyWithImpl<_$HistoryUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryUserModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryUserModel implements HistoryUserModel {
  const factory _HistoryUserModel(
          {final String? name,
          final String? email,
          @JsonKey(name: 'account_number') final String? accountNumber}) =
      _$HistoryUserModelImpl;

  factory _HistoryUserModel.fromJson(Map<String, dynamic> json) =
      _$HistoryUserModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(ignore: true)
  _$$HistoryUserModelImplCopyWith<_$HistoryUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
