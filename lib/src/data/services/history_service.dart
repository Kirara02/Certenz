import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/history/history_item_model.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/data/models/history/history_split_bill_model.dart';
import 'package:certenz/src/data/repository/history_repository.dart';

class HistoryService implements HistoryRepository {
  late UXHttp http;

  HistoryService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<PaginationResponse<HistoryModel>>> getAllHistories({
    int pagination = 5,
    int page = 1,
  }) async {
    return await http.get(
      "transaction/history?paginate=$pagination&page=$page",
      authorization: true,
      onSuccess: (res) => PaginationResponse<HistoryModel>.fromJson(res.data,
          (json) => HistoryModel.fromJson(json as Map<String, dynamic>)),
    );
  }

  @override
  Future<ApiResult<PaginationResponse<HistoryModel>>> getPendingHistories({
    int pagination = 5,
    int page = 1,
  }) async {
    return await http.get(
      "transaction/history/type/pending?paginate=$pagination&page=$page",
      authorization: true,
      onSuccess: (res) => PaginationResponse<HistoryModel>.fromJson(res.data,
          (json) => HistoryModel.fromJson(json as Map<String, dynamic>)),
    );
  }

  @override
  Future<ApiResult<PaginationResponse<HistoryModel>>> getSuccessHistories({
    int pagination = 5,
    int page = 1,
  }) async {
    return await http.get(
      "transaction/history/type/success?paginate=$pagination&page=$page",
      authorization: true,
      onSuccess: (res) => PaginationResponse<HistoryModel>.fromJson(res.data,
          (json) => HistoryModel.fromJson(json as Map<String, dynamic>)),
    );
  }

  @override
  Future<ApiResult<HistorySplitBillModel>> getSplitBillByTransactionId({
    required int transactionId,
  }) async {
    return await http.get("transaction/history/$transactionId",
        authorization: true,
        onSuccess: (res) => HistorySplitBillModel.fromJson(res.data['data']));
  }

  @override
  Future<ApiResult<HistoryItemModel>> getByTransactionId({
    required int transactionId,
  }) async {
    return await http.get("transaction/history/$transactionId",
        authorization: true,
        onSuccess: (res) => HistoryItemModel.fromJson(res.data['data']));
  }
}
