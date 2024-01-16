import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_bank_model.freezed.dart';
part 'account_bank_model.g.dart';

@freezed
class AccountBankModel with _$AccountBankModel {
  factory AccountBankModel({
    required int id,
    required String name,
    required int norek,
    required String bank,
    required String bankImage,
  }) = _AccountBankModel;

  factory AccountBankModel.fromJson(Map<String, dynamic> json) =>
      _$AccountBankModelFromJson(json);
}
