part of 'create_bill_bloc.dart';

@freezed
class CreateBillEvent with _$CreateBillEvent {
  const factory CreateBillEvent.createBill({
    required FormData formData,
  }) = _CreateBill;
}
