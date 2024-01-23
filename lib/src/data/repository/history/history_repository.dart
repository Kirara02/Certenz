import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/history/history_model.dart';

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
}
