import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/auth/auth_model.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:certenz/src/data/repository/auth/auth_repository.dart';
import 'package:dio/src/form_data.dart';

class AuthService implements AuthRepository {
  late UXHttp http;

  AuthService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<AuthModel>> login({
    required String email,
    required String password,
  }) async {
    return await http.post(
      "login",
      data: {
        "email": email,
        "password": password,
      },
      onSuccess: (res) => AuthModel.fromJson(res.data),
    );
  }

  @override
  Future<ApiResult<UserModel>> register({required FormData data}) async {
    return await http.post(
      "register",
      data: data,
      onSuccess: (res) => UserModel.fromJson(res.data['user']),
    );
  }
}
