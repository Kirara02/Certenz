part of 'faq_bloc.dart';

@freezed
class FaqEvent with _$FaqEvent {
  const factory FaqEvent.getQuestions() = _GetQuestions;
  const factory FaqEvent.getQuestionsByCS({
    required String value,
  }) = _GetQuestionsByCS;
}
