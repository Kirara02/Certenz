import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/data/data_source/common/http.dart';

import 'package:certenz/src/data/models/bank/bank_account_model.dart';

import 'package:dio/src/form_data.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../repository/card_account/card_account_repository.dart';

class CardAccountService implements CardAccountRepository {
  late UXHttp http;

  CardAccountService() {
    http = UXHttp(xBaseUrl: dotenv.env['BASEURL']);
  }

  @override
  Future<ApiResult<BankAccountModel>> addCard({
    required FormData formData,
  }) async {
    return await http.post(
      "my-account-bank",
      authorization: true,
      data: formData,
      onSuccess: (res) => BankAccountModel.fromJson(res.data['data']),
    );
  }

  @override
  Future<ApiResult<DefaultResponse>> deleteCardAccountById({
    required int cardId,
  }) async {
    return await http.delete(
      "my-account-bank/$cardId",
      authorization: true,
      onSuccess: (res) => DefaultResponse.fromJson(res.data['data']),
    );
  }

  @override
  Future<ApiResult<List<BankAccountModel>>> getCardAccountById() async {
    return await http.get(
      "my-account-bank",
      authorization: true,
      onSuccess: (res) => (res.data['data'] as List)
          .map((e) => BankAccountModel.fromJson(e))
          .toList(),
    );
  }
}
