import 'package:certenz/src/data/models/history/history_user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    @JsonKey(name: 'transaction_id') int? transactionId,
    @JsonKey(name: 'transaction_number') String? transactionNumber,
    @JsonKey(name: 'transaction_title') String? transactionTitle,
    @JsonKey(name: 'amount_total') int? amountTotal,
    @JsonKey(name: 'transaction_time') String? transactionTime,
    @JsonKey(name: 'transaction_category') String? transactionCategory,
    @JsonKey(name: 'transaction_status') String? transactionStatus,
    String? criteria,
    @JsonKey(name: 'from_name') String? fromName,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);
}
