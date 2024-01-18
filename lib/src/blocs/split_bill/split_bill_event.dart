part of 'split_bill_bloc.dart';

@freezed
class SplitBillEvent with _$SplitBillEvent {
  const factory SplitBillEvent.createSplitBill({
    required String title,
    required int amount,
  }) = _CreateSplitBill;
  const factory SplitBillEvent.addSplitBill({
    required int splitId,
    required FormData formData,
  }) = _AddSplitBill;
}
