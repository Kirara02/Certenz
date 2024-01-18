part of 'split_bill_bloc.dart';

@freezed
class SplitBillState with _$SplitBillState {
  const factory SplitBillState.initial() = _Initial;
  const factory SplitBillState.loading() = _Loading;
  const factory SplitBillState.success(List<BillModel> data) = _Success;
  const factory SplitBillState.successCreateSplit(SplitBillModel data) =
      _SuccessCreateSplit;
  const factory SplitBillState.error(NetworkExceptions error) = _Error;
}
