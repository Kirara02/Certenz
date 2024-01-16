import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/create_bill/create_bill_model.dart';
import 'package:dio/dio.dart';

abstract class CreateBillRepository {
  Future<ApiResult<BillModel>> createBill({required FormData formData});
}
