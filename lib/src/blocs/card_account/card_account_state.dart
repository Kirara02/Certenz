part of 'card_account_bloc.dart';

@freezed
class CardAccountState with _$CardAccountState {
  const factory CardAccountState.initial() = _Initial;
  const factory CardAccountState.loading() = _Loading;
  const factory CardAccountState.success(BankAccountModel data) = _Success;
  const factory CardAccountState.defaultSuccess(DefaultResponse response) =
      _DefaultSuccess;
  const factory CardAccountState.successList(List<BankAccountModel> data) =
      _SuccessList;
  const factory CardAccountState.error(NetworkExceptions error) = _Error;
}
