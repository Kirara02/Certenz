// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBankModel _$AccountBankModelFromJson(Map<String, dynamic> json) {
  return _AccountBankModel.fromJson(json);
}

/// @nodoc
mixin _$AccountBankModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get norek => throw _privateConstructorUsedError;
  String get bank => throw _privateConstructorUsedError;
  String get bankImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBankModelCopyWith<AccountBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBankModelCopyWith<$Res> {
  factory $AccountBankModelCopyWith(
          AccountBankModel value, $Res Function(AccountBankModel) then) =
      _$AccountBankModelCopyWithImpl<$Res, AccountBankModel>;
  @useResult
  $Res call({int id, String name, int norek, String bank, String bankImage});
}

/// @nodoc
class _$AccountBankModelCopyWithImpl<$Res, $Val extends AccountBankModel>
    implements $AccountBankModelCopyWith<$Res> {
  _$AccountBankModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? norek = null,
    Object? bank = null,
    Object? bankImage = null,
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
      norek: null == norek
          ? _value.norek
          : norek // ignore: cast_nullable_to_non_nullable
              as int,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      bankImage: null == bankImage
          ? _value.bankImage
          : bankImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountBankModelImplCopyWith<$Res>
    implements $AccountBankModelCopyWith<$Res> {
  factory _$$AccountBankModelImplCopyWith(_$AccountBankModelImpl value,
          $Res Function(_$AccountBankModelImpl) then) =
      __$$AccountBankModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int norek, String bank, String bankImage});
}

/// @nodoc
class __$$AccountBankModelImplCopyWithImpl<$Res>
    extends _$AccountBankModelCopyWithImpl<$Res, _$AccountBankModelImpl>
    implements _$$AccountBankModelImplCopyWith<$Res> {
  __$$AccountBankModelImplCopyWithImpl(_$AccountBankModelImpl _value,
      $Res Function(_$AccountBankModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? norek = null,
    Object? bank = null,
    Object? bankImage = null,
  }) {
    return _then(_$AccountBankModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      norek: null == norek
          ? _value.norek
          : norek // ignore: cast_nullable_to_non_nullable
              as int,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      bankImage: null == bankImage
          ? _value.bankImage
          : bankImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountBankModelImpl implements _AccountBankModel {
  _$AccountBankModelImpl(
      {required this.id,
      required this.name,
      required this.norek,
      required this.bank,
      required this.bankImage});

  factory _$AccountBankModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountBankModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int norek;
  @override
  final String bank;
  @override
  final String bankImage;

  @override
  String toString() {
    return 'AccountBankModel(id: $id, name: $name, norek: $norek, bank: $bank, bankImage: $bankImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountBankModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.norek, norek) || other.norek == norek) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankImage, bankImage) ||
                other.bankImage == bankImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, norek, bank, bankImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountBankModelImplCopyWith<_$AccountBankModelImpl> get copyWith =>
      __$$AccountBankModelImplCopyWithImpl<_$AccountBankModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountBankModelImplToJson(
      this,
    );
  }
}

abstract class _AccountBankModel implements AccountBankModel {
  factory _AccountBankModel(
      {required final int id,
      required final String name,
      required final int norek,
      required final String bank,
      required final String bankImage}) = _$AccountBankModelImpl;

  factory _AccountBankModel.fromJson(Map<String, dynamic> json) =
      _$AccountBankModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get norek;
  @override
  String get bank;
  @override
  String get bankImage;
  @override
  @JsonKey(ignore: true)
  _$$AccountBankModelImplCopyWith<_$AccountBankModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
