import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/faq/faq_cs_model.dart';
import 'package:certenz/src/data/models/faq/faq_question_model.dart';
import 'package:certenz/src/data/repository/faq_repository.dart';

class FaqService implements FaqRepository {
  late UXHttp http;

  FaqService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<List<FaqQuestionModel>>> getQuestions() async {
    return await http.get("faq",
        onSuccess: (res) => (res.data['data'] as List)
            .map((e) => FaqQuestionModel.fromJson(e))
            .toList());
  }

  @override
  Future<ApiResult<List<FaqCsModel>>> getQuestionsByType({
    required String value,
  }) async {
    return await http.get("customer-service?type=$value",
        onSuccess: (res) => (res.data['data'] as List)
            .map((e) => FaqCsModel.fromJson(e))
            .toList());
  }
}
