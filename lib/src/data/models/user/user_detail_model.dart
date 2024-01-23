import 'package:certenz/src/utils/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_model.freezed.dart';
part 'user_detail_model.g.dart';

@freezed
class UserDetailModel with _$UserDetailModel {
  const factory UserDetailModel({
    int? id,
    String? name,
    String? username,
    String? telp,
    String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'two_factor_secret') String? twoFactorSecret,
    @JsonKey(name: 'two_factor_recovery_codes') String? twoFactorRecoveryCodes,
    @JsonKey(name: 'two_factor_confirmed_at') DateTime? twoFactorConfirmedAt,
    @JsonKey(name: 'certenz_number') String? certenzNumber,
    @JsonKey(name: 'role_id') String? roleId,
    @DateTimeConverter() DateTime? birthday,
    String? gender,
    String? location,
    String? sso,
    @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}
