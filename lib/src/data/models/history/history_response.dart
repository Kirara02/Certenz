import 'package:certenz/src/data/models/common/pagination.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  const factory HistoryResponse({
    required String message,
    required List<HistoryModel> data,
    required Pagination pagination,
    required String success,
  }) = _HistoryResponse;

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
}
