import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/payment/payment_bank_va_model.dart';
import 'package:certenz/src/data/models/payment/payment_qris_model.dart';
import 'package:certenz/src/data/services/payment_service.dart';

class PaymentService implements PaymentRepository {
  late UXHttp http;

  PaymentService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<PaymentBankVaModel>> payWithBankAccount({
    required int billId,
    required String bankCode,
    required String type,
  }) async {
    return await http.post(
        "transaction/payment/bank?code_bank=$bankCode&bill_id=$billId&type=$type",
        authorization: true,
        onSuccess: (res) => PaymentBankVaModel.fromJson(res.data['data']));
  }

  @override
  Future<ApiResult<PaymentQrisModel>> payWithQris({
    required int billId,
    required String type,
  }) async {
    return await http.post(
        "transaction/payment/qris?bill_id=$billId&type=$type",
        authorization: true,
        onSuccess: (res) => PaymentQrisModel.fromJson(res.data['data']));
  }
}
