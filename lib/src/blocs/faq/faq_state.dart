part of 'faq_bloc.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState.initial() = _Initial;
  const factory FaqState.loading() = _Loading;
  const factory FaqState.successQuestion(List<FaqQuestionModel> data) =
      _SuccessQuestion;
  const factory FaqState.successQuestionType(List<FaqCsModel> data) =
      _SuccessQuestionType;
  const factory FaqState.error(NetworkExceptions error) = _Error;
}
