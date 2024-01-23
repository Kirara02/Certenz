import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/user/user_detail_model.dart';
import 'package:certenz/src/data/repository/user/user_repository.dart';
import 'package:dio/src/form_data.dart';

class UserService implements UserRepository {
  late UXHttp http;

  UserService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<DefaultResponse>> changePassword({
    required String currentPass,
    required String newPass,
    required String confirmNewPass,
  }) async {
    return await http.put("user/update-password",
        data: {
          "last_password": currentPass,
          "new_password": newPass,
          "confirmed_password": confirmNewPass,
        },
        authorization: true,
        onSuccess: (res) => DefaultResponse.fromJson(res.data));
  }

  @override
  Future<ApiResult<UserDetailModel>> getUser() async {
    return await http.get("user",
        authorization: true,
        onSuccess: (res) => UserDetailModel.fromJson(res.data));
  }

  @override
  Future<ApiResult<UserDetailModel>> updateUser({
    required FormData formData,
  }) async {
    return await http.post("user",
        data: formData,
        authorization: true,
        onSuccess: (res) => UserDetailModel.fromJson(res.data['data']));
  }
}
