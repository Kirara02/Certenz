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
      profilePicture: json['profile_picture'] as String?,
      certenzNumber: json['certenz_number'] as String?,
      roleId: json['role_id'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      location: json['location'] as String?,
      sso: json['sso'] as String?,
      emailVerification: json['email_verification'] as bool?,
      ktpVerification: json['ktp_verification'] as bool?,
      hasBankAccount: json['has_bank_account'] as bool?,
    );

Map<String, dynamic> _$$UserDetailModelImplToJson(
        _$UserDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'telp': instance.telp,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'certenz_number': instance.certenzNumber,
      'role_id': instance.roleId,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'location': instance.location,
      'sso': instance.sso,
      'email_verification': instance.emailVerification,
      'ktp_verification': instance.ktpVerification,
      'has_bank_account': instance.hasBankAccount,
    };
