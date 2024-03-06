import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/data/repository/split_bill_repository.dart';
import 'package:dio/src/form_data.dart';

class SplitBillService implements SplitBillRepository {
  late UXHttp http;

  SplitBillService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<SplitBillModel>> createSplitBill({
    required String title,
    required int amount,
    required bool withFee,
  }) async {
    return await http.post(
      "split-bill",
      data: {
        "title": title,
        "amount_total": amount.toString(),
      },
      authorization: true,
      onSuccess: (res) => SplitBillModel.fromJson(res.data['data']),
    );
  }

  @override
  Future<ApiResult<List<BillModel>>> createSplitBillItem({
    required int splitId,
    required FormData formData,
  }) async {
    return await http.post(
      "split-bill/$splitId",
      authorization: true,
      data: formData,
      onSuccess: (res) =>
          (res.data['data'] as List).map((e) => BillModel.fromJson(e)).toList(),
    );
  }
}
