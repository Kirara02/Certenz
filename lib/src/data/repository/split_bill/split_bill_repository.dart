import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_item_model.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:dio/dio.dart';

abstract class SplitBillRepository {
  Future<ApiResult<SplitBillModel>> createSplitBill({
    required String title,
    required int amount,
  });

  Future<ApiResult<List<SplitBillItemModel>>> createSplitBillItem({
    required int splitId,
    required FormData formData,
  });
}