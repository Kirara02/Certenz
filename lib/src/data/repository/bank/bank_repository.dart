import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';

abstract class BankRepository {
  Future<ApiResult<List<BankModel>>> getBanks();
}
