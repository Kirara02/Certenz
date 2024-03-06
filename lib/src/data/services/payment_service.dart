import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/payment/payment_bank_va_model.dart';
import 'package:certenz/src/data/models/payment/payment_qris_model.dart';

abstract class PaymentRepository {
  Future<ApiResult<PaymentBankVaModel>> payWithBankAccount({
    required int billId,
    required String bankCode,
    required String type,
  });

  Future<ApiResult<PaymentQrisModel>> payWithQris({
    required int billId,
    required String type,
  });
}
