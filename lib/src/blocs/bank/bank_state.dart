part of 'bank_bloc.dart';

@freezed
class BankState with _$BankState {
  const factory BankState.initial() = _Initial;
  const factory BankState.loading() = _Loading;
  const factory BankState.success(List<BankModel> data) = _Success;
  const factory BankState.error(NetworkExceptions error) = _Error;
}
