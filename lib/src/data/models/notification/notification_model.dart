import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    @JsonKey(name: 'transaction_id') int? transactionId,
    @JsonKey(name: 'transaction_number') String? transactionNumber,
    @JsonKey(name: 'transaction_title') String? transactionTitle,
    @JsonKey(name: 'amount_total') int? amountTotal,
    @JsonKey(name: 'transaction_time') String? transactionTime,
    @JsonKey(name: 'transaction_category') String? transactionCategory,
    @JsonKey(name: 'transaction_status') String? transactionStatus,
    @JsonKey(name: 'from_name') String? fromName,
    @JsonKey(name: 'to_name') String? toName,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
