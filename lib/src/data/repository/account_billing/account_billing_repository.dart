import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/account_billing/account_billing_model.dart';
import 'package:dio/dio.dart';

abstract class AccountBillingRepository {
  Future<ApiResult<AccountBillingModel>> createBilling({
    required FormData formData,
  });
}
