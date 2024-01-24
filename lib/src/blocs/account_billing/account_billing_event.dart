part of 'account_billing_bloc.dart';

@freezed
class AccountBillingEvent with _$AccountBillingEvent {
  const factory AccountBillingEvent.create({
    required FormData formData,
  }) = _Create;
}
