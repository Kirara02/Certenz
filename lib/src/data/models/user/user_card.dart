import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_card.g.dart';
part 'user_card.freezed.dart';

@freezed
class UserCard with _$UserCard {
  factory UserCard({
    String? nik,
    String? city,
    @JsonKey(name: "rt_rw") String? rtRw,
    String? state,
    String? gender,
    String? address,
    String? district,
    String? religion,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "blood_type") String? bloodType,
    String? occupation,
    String? nationality,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    @JsonKey(name: "marital_status") String? maritalStatus,
    @JsonKey(name: "place_of_birth") String? placeOfBirth,
    @JsonKey(name: "administrative_village") String? administrativeVillage,
  }) = _UserCard;

  factory UserCard.fromJson(Map<String, dynamic> json) =>
      _$UserCardFromJson(json);
}
