import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/repository/account_billing_repository.dart';
import 'package:dio/src/form_data.dart';

class AccountBillingService implements AccountBillingRepository {
  late UXHttp http;

  AccountBillingService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<BillModel>> createBilling({
    required FormData formData,
  }) async {
    return await http.post("account-billing",
        data: formData,
        authorization: true,
        onSuccess: (res) => BillModel.fromJson(res.data['data']));
  }
}
