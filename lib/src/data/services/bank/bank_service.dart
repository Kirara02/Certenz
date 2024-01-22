import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/data/repository/bank/bank_repository.dart';

class BankService implements BankRepository {
  late UXHttp http;

  BankService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<List<BankModel>>> getBanks() async {
    return await http.get("bank-list",
        onSuccess: (res) => (res.data['data'] as List)
            .map((e) => BankModel.fromJson(e))
            .toList());
  }
}
