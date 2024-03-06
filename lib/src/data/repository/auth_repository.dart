import 'dart:io';

import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/data/models/auth/auth_model.dart';
import 'package:certenz/src/data/models/auth/register_model.dart';
import 'package:certenz/src/data/models/user/user_card.dart';
import 'package:dio/dio.dart';

abstract class AuthRepository {
  Future<ApiResult<AuthModel>> login({
    required String email,
    required String password,
  });

  Future<ApiResult<RegisterModel>> register({required FormData data});
  Future<ApiResult<DefaultResponse>> logout();
  Future<ApiResult<Response>> pusherAuth({
    String? channelName,
    String? socketId,
  });
  Future<ApiResult<DefaultResponse>> userKtpVerip({FormData? formData});
  Future<ApiResult<UserCard>> scanKtp({required File imageFile});
}
