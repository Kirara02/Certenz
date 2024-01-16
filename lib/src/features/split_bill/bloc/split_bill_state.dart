part of 'split_bill_bloc.dart';

@freezed
class SplitBillState with _$SplitBillState {
  const factory SplitBillState.initial() = _Initial;
  const factory SplitBillState.loading() = _Loading;
  const factory SplitBillState.success(List<SplitBillItemModel> data) =
      _Success;
  const factory SplitBillState.error(NetworkExceptions error) = _Error;
}
