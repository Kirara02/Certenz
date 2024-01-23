// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailModelImpl _$$UserDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      telp: json['telp'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      profilePicture: json['profile_picture'] as String?,
      twoFactorSecret: json['two_factor_secret'] as String?,
      twoFactorRecoveryCodes: json['two_factor_recovery_codes'] as String?,
      twoFactorConfirmedAt: json['two_factor_confirmed_at'] == null
          ? null
          : DateTime.parse(json['two_factor_confirmed_at'] as String),
      certenzNumber: json['certenz_number'] as String?,
      roleId: json['role_id'] as String?,
      birthday: _$JsonConverterFromJson<String, DateTime>(
          json['birthday'], const DateTimeConverter().fromJson),
      gender: json['gender'] as String?,
      location: json['location'] as String?,
      sso: json['sso'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$UserDetailModelImplToJson(
        _$UserDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'telp': instance.telp,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'profile_picture': instance.profilePicture,
      'two_factor_secret': instance.twoFactorSecret,
      'two_factor_recovery_codes': instance.twoFactorRecoveryCodes,
      'two_factor_confirmed_at':
          instance.twoFactorConfirmedAt?.toIso8601String(),
      'certenz_number': instance.certenzNumber,
      'role_id': instance.roleId,
      'birthday': _$JsonConverterToJson<String, DateTime>(
          instance.birthday, const DateTimeConverter().toJson),
      'gender': instance.gender,
      'location': instance.location,
      'sso': instance.sso,
      'created_at': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeConverter().toJson),
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
