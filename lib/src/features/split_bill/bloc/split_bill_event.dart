part of 'split_bill_bloc.dart';

@freezed
class SplitBillEvent with _$SplitBillEvent {
  const factory SplitBillEvent.started({
    required int splitId,
    required FormData formData,
  }) = _Started;
}
