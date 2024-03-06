import 'package:certenz/src/data/models/history/history_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_split_bill_model.g.dart';
part 'history_split_bill_model.freezed.dart';

@freezed
class HistorySplitBillModel with _$HistorySplitBillModel {
  factory HistorySplitBillModel({
    @JsonKey(name: "transaction_id") required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "bill_number") required String billNumber,
    required String title,
    @JsonKey(name: "split_data") required List<HistoryItemModel> splitData,
  }) = _HistorySplitBillModel;

  factory HistorySplitBillModel.fromJson(Map<String, dynamic> json) =>
      _$HistorySplitBillModelFromJson(json);
}
