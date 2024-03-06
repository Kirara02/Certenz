import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/faq/faq_cs_model.dart';
import 'package:certenz/src/data/models/faq/faq_question_model.dart';

abstract class FaqRepository {
  Future<ApiResult<List<FaqQuestionModel>>> getQuestions();
  Future<ApiResult<List<FaqCsModel>>> getQuestionsByType({
    required String value,
  });
}
