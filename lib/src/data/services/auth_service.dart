import 'dart:io';

import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/auth/auth_model.dart';
import 'package:certenz/src/data/models/auth/register_model.dart';
import 'package:certenz/src/data/models/user/user_card.dart';
import 'package:certenz/src/data/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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
    String? deviceToken = await FirebaseMessaging.instance.getToken();
    return await http.post(
      "login",
      data: {
        "email": email,
        "password": password,
        "device_token": deviceToken,
      },
      onSuccess: (res) => AuthModel.fromJson(res.data),
    );
  }

  @override
  Future<ApiResult<RegisterModel>> register({required FormData data}) async {
    return await http.post(
      "register",
      data: data,
      onSuccess: (res) => RegisterModel.fromJson(res.data),
    );
  }

  @override
  Future<ApiResult<DefaultResponse>> logout() async {
    return await http.get("logout",
        authorization: true,
        onSuccess: (response) => DefaultResponse.fromJson(response.data));
  }

  @override
  Future<ApiResult<DefaultResponse>> userKtpVerip({FormData? formData}) async {
    return await http.post(
      "registration-id-card",
      authorization: true,
      data: formData,
      onSuccess: (res) => DefaultResponse.fromJson(res.data),
    );
  }

  @override
  Future<ApiResult<UserCard>> scanKtp({required File imageFile}) async {
    FormData formData = FormData.fromMap({
      "card_image": await MultipartFile.fromFile(imageFile.path),
    });
    return await http.post(
      "scan-ktp",
      data: formData,
      authorization: true,
      onSuccess: (res) => UserCard.fromJson(res.data['data']),
    );
  }
}
