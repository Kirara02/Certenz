import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_model.freezed.dart';
part 'bank_account_model.g.dart';

@freezed
class BankAccountModel with _$BankAccountModel {
  factory BankAccountModel({
    @JsonKey(name: "bank_account_id") int? bankAccountId,
    @JsonKey(name: "bank_id") int? bankId,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "bank_image") String? bankImage,
    @JsonKey(name: "card_number") String? cardNumber,
    @JsonKey(name: "account_number") String? accountNumber,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "expired") String? expired,
    int? cvv,
    @JsonKey(name: "expired_bbtt") String? expiredBbtt,
  }) = _BankAccountModel;

  factory BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountModelFromJson(json);
}
