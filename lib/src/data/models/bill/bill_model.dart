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
    @JsonKey(name: "transaction_datetime") required String transactionDatetime,
    @JsonKey(name: "to_email") String? toEmail,
    @JsonKey(name: "to_name") String? toName,
    @JsonKey(name: "to_account") String? toAccount,
    @JsonKey(name: "from_account") required String fromAccount,
    @JsonKey(name: "from_name") required String fromName,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "bill_type") required String billType,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? note,
    @JsonKey(name: "qr_code") String? qrCode,
    @JsonKey(name: "split_id") int? splitId,
    @JsonKey(name: 'tenant_period') String? tenantPeriod,
    @JsonKey(name: 'paid_on_date') String? paidOnDate,
    @JsonKey(name: 'paid_on_time') String? paidOnTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) =>
      _$BillModelFromJson(json);
}
