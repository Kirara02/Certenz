import 'package:certenz/src/core/default_response.dart';
import 'package:dio/dio.dart';

import '../../../core/api_result.dart';
import '../../models/bank/bank_account_model.dart';

abstract class CardAccountRepository {
  Future<ApiResult<BankAccountModel>> addCard({required FormData formData});
  Future<ApiResult<List<BankAccountModel>>> getCardAccountById();
  Future<ApiResult<DefaultResponse>> deleteCardAccountById({
    required int cardId,
  });
}
