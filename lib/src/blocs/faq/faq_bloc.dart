import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/faq/faq_cs_model.dart';
import 'package:certenz/src/data/models/faq/faq_question_model.dart';
import 'package:certenz/src/data/services/faq_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'faq_event.dart';
part 'faq_state.dart';
part 'faq_bloc.freezed.dart';

class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqBloc() : super(const FaqState.initial()) {
    on<FaqEvent>((event, emit) async {
      await event.when(
        getQuestions: () async {
          emit(const FaqState.loading());
          ApiResult<List<FaqQuestionModel>> results =
              await FaqService().getQuestions();

          results.when(
            success: (data) => emit(FaqState.successQuestion(data)),
            failure: (error) => emit(FaqState.error(error)),
          );
        },
        getQuestionsByCS: (value) async {
          emit(const FaqState.loading());
          ApiResult<List<FaqCsModel>> results =
              await FaqService().getQuestionsByType(value: value);

          results.when(
            success: (data) => emit(FaqState.successQuestionType(data)),
            failure: (error) => emit(FaqState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(FaqEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<FaqState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
