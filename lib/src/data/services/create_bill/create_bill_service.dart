import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/repository/create_bill/create_bill_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CreateBillService implements CreateBillRepository {
  late UXHttp http;

  CreateBillService() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL'],
    );
  }

  @override
  Future<ApiResult<BillModel>> createBill({
    required FormData formData,
  }) async {
    return await http.post(
      "create-bill",
      data: formData,
      authorization: true,
      onSuccess: (res) => BillModel.fromJson(res.data['data']),
    );
  }
}
