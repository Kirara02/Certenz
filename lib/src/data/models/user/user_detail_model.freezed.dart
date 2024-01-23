// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailModel _$UserDetailModelFromJson(Map<String, dynamic> json) {
  return _UserDetailModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get telp => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'two_factor_secret')
  String? get twoFactorSecret => throw _privateConstructorUsedError;
  @JsonKey(name: 'two_factor_recovery_codes')
  String? get twoFactorRecoveryCodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'two_factor_confirmed_at')
  DateTime? get twoFactorConfirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'certenz_number')
  String? get certenzNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  String? get roleId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get sso => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailModelCopyWith<UserDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailModelCopyWith<$Res> {
  factory $UserDetailModelCopyWith(
          UserDetailModel value, $Res Function(UserDetailModel) then) =
      _$UserDetailModelCopyWithImpl<$Res, UserDetailModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? telp,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'two_factor_secret') String? twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes')
      String? twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at') DateTime? twoFactorConfirmedAt,
      @JsonKey(name: 'certenz_number') String? certenzNumber,
      @JsonKey(name: 'role_id') String? roleId,
      @DateTimeConverter() DateTime? birthday,
      String? gender,
      String? location,
      String? sso,
      @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$UserDetailModelCopyWithImpl<$Res, $Val extends UserDetailModel>
    implements $UserDetailModelCopyWith<$Res> {
  _$UserDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? telp = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? profilePicture = freezed,
    Object? twoFactorSecret = freezed,
    Object? twoFactorRecoveryCodes = freezed,
    Object? twoFactorConfirmedAt = freezed,
    Object? certenzNumber = freezed,
    Object? roleId = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? sso = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      telp: freezed == telp
          ? _value.telp
          : telp // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorRecoveryCodes: freezed == twoFactorRecoveryCodes
          ? _value.twoFactorRecoveryCodes
          : twoFactorRecoveryCodes // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorConfirmedAt: freezed == twoFactorConfirmedAt
          ? _value.twoFactorConfirmedAt
          : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      certenzNumber: freezed == certenzNumber
          ? _value.certenzNumber
          : certenzNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      sso: freezed == sso
          ? _value.sso
          : sso // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailModelImplCopyWith<$Res>
    implements $UserDetailModelCopyWith<$Res> {
  factory _$$UserDetailModelImplCopyWith(_$UserDetailModelImpl value,
          $Res Function(_$UserDetailModelImpl) then) =
      __$$UserDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? telp,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'two_factor_secret') String? twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes')
      String? twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at') DateTime? twoFactorConfirmedAt,
      @JsonKey(name: 'certenz_number') String? certenzNumber,
      @JsonKey(name: 'role_id') String? roleId,
      @DateTimeConverter() DateTime? birthday,
      String? gender,
      String? location,
      String? sso,
      @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$UserDetailModelImplCopyWithImpl<$Res>
    extends _$UserDetailModelCopyWithImpl<$Res, _$UserDetailModelImpl>
    implements _$$UserDetailModelImplCopyWith<$Res> {
  __$$UserDetailModelImplCopyWithImpl(
      _$UserDetailModelImpl _value, $Res Function(_$UserDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? telp = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? profilePicture = freezed,
    Object? twoFactorSecret = freezed,
    Object? twoFactorRecoveryCodes = freezed,
    Object? twoFactorConfirmedAt = freezed,
    Object? certenzNumber = freezed,
    Object? roleId = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? sso = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserDetailModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      telp: freezed == telp
          ? _value.telp
          : telp // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorRecoveryCodes: freezed == twoFactorRecoveryCodes
          ? _value.twoFactorRecoveryCodes
          : twoFactorRecoveryCodes // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorConfirmedAt: freezed == twoFactorConfirmedAt
          ? _value.twoFactorConfirmedAt
          : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      certenzNumber: freezed == certenzNumber
          ? _value.certenzNumber
          : certenzNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      sso: freezed == sso
          ? _value.sso
          : sso // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailModelImpl implements _UserDetailModel {
  const _$UserDetailModelImpl(
      {this.id,
      this.name,
      this.username,
      this.telp,
      this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'profile_picture') this.profilePicture,
      @JsonKey(name: 'two_factor_secret') this.twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes') this.twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at') this.twoFactorConfirmedAt,
      @JsonKey(name: 'certenz_number') this.certenzNumber,
      @JsonKey(name: 'role_id') this.roleId,
      @DateTimeConverter() this.birthday,
      this.gender,
      this.location,
      this.sso,
      @JsonKey(name: 'created_at') @DateTimeConverter() this.createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() this.updatedAt});

  factory _$UserDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? telp;
  @override
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  @JsonKey(name: 'two_factor_secret')
  final String? twoFactorSecret;
  @override
  @JsonKey(name: 'two_factor_recovery_codes')
  final String? twoFactorRecoveryCodes;
  @override
  @JsonKey(name: 'two_factor_confirmed_at')
  final DateTime? twoFactorConfirmedAt;
  @override
  @JsonKey(name: 'certenz_number')
  final String? certenzNumber;
  @override
  @JsonKey(name: 'role_id')
  final String? roleId;
  @override
  @DateTimeConverter()
  final DateTime? birthday;
  @override
  final String? gender;
  @override
  final String? location;
  @override
  final String? sso;
  @override
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserDetailModel(id: $id, name: $name, username: $username, telp: $telp, email: $email, emailVerifiedAt: $emailVerifiedAt, profilePicture: $profilePicture, twoFactorSecret: $twoFactorSecret, twoFactorRecoveryCodes: $twoFactorRecoveryCodes, twoFactorConfirmedAt: $twoFactorConfirmedAt, certenzNumber: $certenzNumber, roleId: $roleId, birthday: $birthday, gender: $gender, location: $location, sso: $sso, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.telp, telp) || other.telp == telp) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.twoFactorSecret, twoFactorSecret) ||
                other.twoFactorSecret == twoFactorSecret) &&
            (identical(other.twoFactorRecoveryCodes, twoFactorRecoveryCodes) ||
                other.twoFactorRecoveryCodes == twoFactorRecoveryCodes) &&
            (identical(other.twoFactorConfirmedAt, twoFactorConfirmedAt) ||
                other.twoFactorConfirmedAt == twoFactorConfirmedAt) &&
            (identical(other.certenzNumber, certenzNumber) ||
                other.certenzNumber == certenzNumber) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.sso, sso) || other.sso == sso) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      telp,
      email,
      emailVerifiedAt,
      profilePicture,
      twoFactorSecret,
      twoFactorRecoveryCodes,
      twoFactorConfirmedAt,
      certenzNumber,
      roleId,
      birthday,
      gender,
      location,
      sso,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      __$$UserDetailModelImplCopyWithImpl<_$UserDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailModelImplToJson(
      this,
    );
  }
}

abstract class _UserDetailModel implements UserDetailModel {
  const factory _UserDetailModel(
      {final int? id,
      final String? name,
      final String? username,
      final String? telp,
      final String? email,
      @JsonKey(name: 'email_verified_at') final DateTime? emailVerifiedAt,
      @JsonKey(name: 'profile_picture') final String? profilePicture,
      @JsonKey(name: 'two_factor_secret') final String? twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes')
      final String? twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at')
      final DateTime? twoFactorConfirmedAt,
      @JsonKey(name: 'certenz_number') final String? certenzNumber,
      @JsonKey(name: 'role_id') final String? roleId,
      @DateTimeConverter() final DateTime? birthday,
      final String? gender,
      final String? location,
      final String? sso,
      @JsonKey(name: 'created_at')
      @DateTimeConverter()
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      final DateTime? updatedAt}) = _$UserDetailModelImpl;

  factory _UserDetailModel.fromJson(Map<String, dynamic> json) =
      _$UserDetailModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get telp;
  @override
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(name: 'two_factor_secret')
  String? get twoFactorSecret;
  @override
  @JsonKey(name: 'two_factor_recovery_codes')
  String? get twoFactorRecoveryCodes;
  @override
  @JsonKey(name: 'two_factor_confirmed_at')
  DateTime? get twoFactorConfirmedAt;
  @override
  @JsonKey(name: 'certenz_number')
  String? get certenzNumber;
  @override
  @JsonKey(name: 'role_id')
  String? get roleId;
  @override
  @DateTimeConverter()
  DateTime? get birthday;
  @override
  String? get gender;
  @override
  String? get location;
  @override
  String? get sso;
  @override
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
