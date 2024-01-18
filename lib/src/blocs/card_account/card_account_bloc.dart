import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/bank/bank_account_model.dart';
import 'package:certenz/src/data/services/card_account/card_account_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'card_account_event.dart';
part 'card_account_state.dart';
part 'card_account_bloc.freezed.dart';

class CardAccountBloc extends Bloc<CardAccountEvent, CardAccountState> {
  CardAccountBloc() : super(const CardAccountState.initial()) {
    on<CardAccountEvent>((event, emit) async {
      await event.when(
        addCard: (formData) async {
          emit(const CardAccountState.loading());
          ApiResult<BankAccountModel> result =
              await CardAccountService().addCard(formData: formData);

          result.when(
            success: (data) => emit(CardAccountState.success(data)),
            failure: (error) => emit(CardAccountState.error(error)),
          );
        },
        getCards: () async {
          emit(const CardAccountState.loading());
          ApiResult<List<BankAccountModel>> results =
              await CardAccountService().getCardAccountById();

          results.when(
            success: (data) => emit(CardAccountState.successList(data)),
            failure: (error) => emit(CardAccountState.error(error)),
          );
        },
        deleteCard: (cardId) async {
          emit(const CardAccountState.loading());
          ApiResult<DefaultResponse> result =
              await CardAccountService().deleteCardAccountById(cardId: cardId);

          result.when(
            success: (data) => emit(CardAccountState.defaultSuccess(data)),
            failure: (error) => emit(CardAccountState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(CardAccountEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<CardAccountState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
