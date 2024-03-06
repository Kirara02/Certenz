part of 'account_billing_bloc.dart';

@freezed
class AccountBillingState with _$AccountBillingState {
  const factory AccountBillingState.initial() = _Initial;
  const factory AccountBillingState.loading() = _Loading;
  const factory AccountBillingState.success(BillModel data) = _Success;
  const factory AccountBillingState.error(NetworkExceptions error) = _Error;
}
