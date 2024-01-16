import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bill_model.freezed.dart';
part 'create_bill_model.g.dart';

@freezed
class CreateBillModel with _$CreateBillModel {
  factory CreateBillModel({
    int? id,
    @JsonKey(name: "bill_number") String? billNumber,
    @JsonKey(name: "user_id") int? userId,
    String? title,
    @JsonKey(name: "total_amount_bill") String? totalAmountBill,
    @JsonKey(name: "to_email") String? toEmail,
    @JsonKey(name: "transaction_datetime") String? transactionDatetime,
    @JsonKey(name: "to_name") String? toName,
    @JsonKey(name: "from_account") String? fromAccount,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "from_name") String? fromName,
    @JsonKey(name: "to_account") String? toAccount,
    @JsonKey(name: "bill_type") String? billType,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? note,
    @JsonKey(name: "qr_code") String? qrCode,
    @JsonKey(name: "split_id") int? splitId,
    @JsonKey(name: "create_bill_status") String? createBillStatus,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _CreateBillModel;

  factory CreateBillModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBillModelFromJson(json);
}
