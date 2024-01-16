import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

@freezed
class BillModel with _$BillModel {
  factory BillModel({
    int? id,
    @JsonKey(name: "bill_number") required String billNumber,
    @JsonKey(name: "user_id") required int userId,
    required String title,
    @JsonKey(name: "total_amount_bill") required double totalAmountBill,
    @JsonKey(name: "to_email") required String toEmail,
    @JsonKey(name: "transaction_datetime") required String transactionDatetime,
    @JsonKey(name: "to_name") required String toName,
    @JsonKey(name: "from_account") required String fromAccount,
    @JsonKey(name: "payment_method") required String paymentMethod,
    @JsonKey(name: "from_name") required String fromName,
    @JsonKey(name: "to_account") required String toAccount,
    @JsonKey(name: "bill_type") required String billType,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? note,
    @JsonKey(name: "qr_code") String? qrCode,
    @JsonKey(name: "split_id") int? splitId,
    @JsonKey(name: "create_bill_status") required String createBillStatus,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) =>
      _$BillModelFromJson(json);
}
