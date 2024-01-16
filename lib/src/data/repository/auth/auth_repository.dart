import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/auth/auth_model.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:dio/dio.dart';

abstract class AuthRepository {
  Future<ApiResult<AuthModel>> login({
    required String email,
    required String password,
  });

  Future<ApiResult<UserModel>> register({required FormData data});
}
