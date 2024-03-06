import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:dio/dio.dart';

abstract class AccountBillingRepository {
  Future<ApiResult<BillModel>> createBilling({
    required FormData formData,
  });
}
