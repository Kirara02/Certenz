import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/reimbursement/reimbursement_model.dart';
import 'package:dio/dio.dart';

abstract class ReimbursementRepository {
  Future<ApiResult<ReimbursementModel>> postReimbursement({
    required FormData formData,
  });
}
