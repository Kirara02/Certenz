import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/reimbursement/reimbursement_model.dart';
import 'package:certenz/src/data/repository/reimbursement/reimbursement_repository.dart';
import 'package:dio/dio.dart';

class ReimbursementService implements ReimbursementRepository {
  late UXHttp http;

  ReimbursementService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<ReimbursementModel>> postReimbursement({
    required FormData formData,
  }) async {
    return await http.post(
      "reimbursement",
      data: formData,
      authorization: true,
      onSuccess: (res) => ReimbursementModel.fromJson(res.data['data']),
    );
  }
}
