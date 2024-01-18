part of 'create_bill_bloc.dart';

@freezed
class CreateBillState with _$CreateBillState {
  const factory CreateBillState.initial() = _Initial;
  const factory CreateBillState.loading() = _Loading;
  const factory CreateBillState.success(BillModel data) = _Success;
  const factory CreateBillState.error(NetworkExceptions error) = _Error;
}
