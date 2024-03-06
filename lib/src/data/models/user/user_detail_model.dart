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
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'certenz_number') String? certenzNumber,
    @JsonKey(name: 'role_id') String? roleId,
    String? birthday,
    String? gender,
    String? location,
    String? sso,
    @JsonKey(name: 'email_verification') bool? emailVerification,
    @JsonKey(name: 'ktp_verification') bool? ktpVerification,
    @JsonKey(name: 'has_bank_account') bool? hasBankAccount,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}
