part of 'create_split_bill_bloc.dart';

@freezed
class CreateSplitBillState with _$CreateSplitBillState {
  const factory CreateSplitBillState.initial() = _Initial;
  const factory CreateSplitBillState.loading() = _Loading;
  const factory CreateSplitBillState.success(SplitBillModel data) = _Success;
  const factory CreateSplitBillState.error(NetworkExceptions error) = _Error;
}
