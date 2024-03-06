import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_item_model.freezed.dart';
part 'history_item_model.g.dart';

@freezed
class HistoryItemModel with _$HistoryItemModel {
  const factory HistoryItemModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "bill_number") String? billNumber,
    @JsonKey(name: "split_id") int? splitId,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "total_amount_bill") double? totalAmountBill,
    @JsonKey(name: "to_email") String? toEmail,
    @JsonKey(name: "to_name") String? toName,
    @JsonKey(name: "to_account") String? toAccount,
    @JsonKey(name: "from_email") String? fromEmail,
    @JsonKey(name: "from_name") String? fromName,
    @JsonKey(name: "from_account") String? fromAccount,
    @JsonKey(name: "transaction_datetime") String? transactionDatetime,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "bill_type") String? billType,
    String? note,
    @JsonKey(name: "qr_code") String? qrCode,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "show_split_redirect") String? showSplitRedirect,
    @JsonKey(name: "tenant_period") String? tenantPeriod,
    @JsonKey(name: "paid_on_date") String? paidOnDate,
    @JsonKey(name: "paid_on_time") String? paidOnTime,
    @JsonKey(name: "with_fee") bool? withFee,
  }) = _HistoryItemModel;

  factory HistoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemModelFromJson(json);
}
