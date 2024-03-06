import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/history/history_item_model.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/data/models/history/history_split_bill_model.dart';

abstract class HistoryRepository {
  Future<ApiResult<PaginationResponse<HistoryModel>>> getAllHistories({
    int pagination = 5,
    int page = 1,
  });
  Future<ApiResult<PaginationResponse<HistoryModel>>> getSuccessHistories({
    int pagination = 5,
    int page = 1,
  });
  Future<ApiResult<PaginationResponse<HistoryModel>>> getPendingHistories({
    int pagination = 5,
    int page = 1,
  });

  Future<ApiResult<HistorySplitBillModel>> getSplitBillByTransactionId({
    required int transactionId,
  });
  Future<ApiResult<HistoryItemModel>> getByTransactionId({
    required int transactionId,
  });
}
