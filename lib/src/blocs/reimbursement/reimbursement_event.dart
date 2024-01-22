part of 'reimbursement_bloc.dart';

@freezed
class ReimbursementEvent with _$ReimbursementEvent {
  const factory ReimbursementEvent.createReimbursement({
    required FormData formData,
  }) = _CreateReimbursement;
}
