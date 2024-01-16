import 'package:freezed_annotation/freezed_annotation.dart';

part 'split_bill_item_model.freezed.dart';
part 'split_bill_item_model.g.dart';

@freezed
class SplitBillItemModel with _$SplitBillItemModel {
  factory SplitBillItemModel({
    required String title,
    @JsonKey(name: 'bill_number') required String billNumber,
    @JsonKey(name: 'to_email') required String toEmail,
    String? note,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'from_account') required String fromAccount,
    @JsonKey(name: 'from_name') required String fromName,
    @JsonKey(name: 'to_account') required String toAccount,
    @JsonKey(name: 'to_name') required String toName,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'transaction_datetime') required String transactionDatetime,
    @JsonKey(name: 'bill_type') required String billType,
    @JsonKey(name: 'create_bill_status') required String createBillStatus,
    @JsonKey(name: 'split_id') required int splitId,
    @JsonKey(name: 'total_amount_bill') required int totalAmountBill,
  }) = _SplitBillItemModel;

  factory SplitBillItemModel.fromJson(Map<String, dynamic> json) =>
      _$SplitBillItemModelFromJson(json);
}
