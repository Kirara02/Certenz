part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.payWithBankAccount({
    required int billId,
    required String bankCode,
    required String type,
  }) = _PayWithBankAccount;

  const factory PaymentEvent.payWithQris({
    required int billId,
    required String type,
  }) = _PayWithQris;
}
