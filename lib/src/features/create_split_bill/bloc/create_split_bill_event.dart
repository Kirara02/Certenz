part of 'create_split_bill_bloc.dart';

@freezed
class CreateSplitBillEvent with _$CreateSplitBillEvent {
  const factory CreateSplitBillEvent.createSplitBill({
    required String title,
    required int amount,
  }) = _CreateSplitBill;
}
