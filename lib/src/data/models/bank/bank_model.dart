import 'package:certenz/src/utils/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_model.freezed.dart';
part 'bank_model.g.dart';

@freezed
class BankModel with _$BankModel {
  const factory BankModel({
    required int id,
    @JsonKey(name: "bank_image") required String bankImage,
    @JsonKey(name: "bank_name") required String bankName,
    @JsonKey(name: "bank_code") required String bankCode,
    @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);
}
