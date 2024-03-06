import 'dart:convert';
import 'dart:io';

import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/reimbursement/reimbursement_model.dart';
import 'package:certenz/src/data/repository/reimbursement_repository.dart';
import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as httpx;

class ReimbursementService implements ReimbursementRepository {
  late UXHttp http;

  ReimbursementService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<ReimbursementModel>> postReimbursement({
    required FormData formData,
  }) async {
    // final String? token = await SecureStorageHelper.getToken;
    // final res = await httpx.post(
    //     Uri.parse(
    //       "${AppConstants.BASEURL}reimbursement",
    //     ),
    //     body: jsonEncode({
    //       "email": "admin@mail.com",
    //       "title": "hsudkdj",
    //       "amount": 100000.toString(),
    //       "activity_details": ["sajshjash"].toList(),
    //       "start_date": "2024-02-11",
    //       "notes": "",
    //       "with_fee": false,
    //     }),
    //     headers: {
    //       "Accept": "application/json",
    //       "Content-Type": "application/json",
    //       "Authorization": "Bearer $token"
    //     });
    //
    // if (res.statusCode == 500) {
    //   vLog(res.body);
    // } else {
    //   vLog(res.body);
    // }

    return await http.post(
      "reimbursement",
      authorization: true,
      data: formData,
      options: Options(headers: {
        HttpHeaders.acceptHeader: "application/json",
        HttpHeaders.contentTypeHeader: "application/json"
      }),
      onSuccess: (res) => ReimbursementModel.fromJson(res.data['data']),
    );
  }
}
