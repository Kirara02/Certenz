part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.loadedVaBank(PaymentBankVaModel data) =
      _LoadedVaBank;
  const factory PaymentState.loadedQris(PaymentQrisModel data) = _LoadedQris;
  const factory PaymentState.error(NetworkExceptions error) = _Error;
}
