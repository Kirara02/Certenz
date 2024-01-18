import 'package:certenz/src/utils/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_question_model.freezed.dart';
part 'faq_question_model.g.dart';

@freezed
class FaqQuestionModel with _$FaqQuestionModel {
  factory FaqQuestionModel({
    required int id,
    required String question,
    required String answer,
    @JsonKey(name: 'created_at')
    @DateTimeConverter()
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    @DateTimeConverter()
    required DateTime updatedAt,
  }) = _FaqQuestionModel;

  factory FaqQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$FaqQuestionModelFromJson(json);
}
