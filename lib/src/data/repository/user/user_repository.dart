import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/data/models/user/user_detail_model.dart';
import 'package:dio/dio.dart';

abstract class UserRepository {
  Future<ApiResult<UserDetailModel>> getUser();
  Future<ApiResult<UserDetailModel>> updateUser({
    required FormData formData,
  });
  Future<ApiResult<DefaultResponse>> changePassword({
    required String currentPass,
    required String newPass,
    required String confirmNewPass,
  });
}
