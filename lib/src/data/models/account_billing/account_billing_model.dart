import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_billing_model.freezed.dart';
part 'account_billing_model.g.dart';

@freezed
class AccountBillingModel with _$AccountBillingModel {
  const factory AccountBillingModel({
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "bill_number") String? billNumber,
    String? title,
    @JsonKey(name: "total_amount_bill") int? totalAmountBill,
    @JsonKey(name: "qr_code") String? qrCode,
    @JsonKey(name: 'transaction_datetime') String? transactionDatetime,
    @JsonKey(name: 'to_name') String? toName,
    @JsonKey(name: 'to_account') String? toAccount,
    @JsonKey(name: 'to_email') String? toEmail,
    @JsonKey(name: 'from_account') String? fromAccount,
    @JsonKey(name: 'from_name') String? fromName,
    @JsonKey(name: 'tenant_period') String? tenantPeriod,
    @JsonKey(name: 'paid_on_date') String? paidOnDate,
    @JsonKey(name: 'paid_on_time') String? paidOnTime,
    @JsonKey(name: 'payment_method') int? paymentMethod,
    @JsonKey(name: 'account_destination') int? accountDestination,
    String? note,
    @JsonKey(name: 'bill_type') String? billType,
    @JsonKey(name: 'bill_status') String? billStatus,
  }) = _AccountBillingModel;

  factory AccountBillingModel.fromJson(Map<String, dynamic> json) =>
      _$AccountBillingModelFromJson(json);
}
