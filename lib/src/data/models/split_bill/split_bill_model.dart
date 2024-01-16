import 'package:freezed_annotation/freezed_annotation.dart';

part 'split_bill_model.freezed.dart';
part 'split_bill_model.g.dart';

@freezed
class SplitBillModel with _$SplitBillModel {
  factory SplitBillModel({
    @JsonKey(name: "split_id") required int id,
    @JsonKey(name: "user_id") required int userId,
    required String title,
    @JsonKey(name: 'amount_total') required String amountTotal,
    @JsonKey(name: 'set_fairy') required bool setFairy,
  }) = _SplitBillModel;

  factory SplitBillModel.fromJson(Map<String, dynamic> json) =>
      _$SplitBillModelFromJson(json);
}
