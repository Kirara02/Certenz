part of 'reimbursement_bloc.dart';

@freezed
class ReimbursementState with _$ReimbursementState {
  const factory ReimbursementState.initial() = _Initial;
  const factory ReimbursementState.loading() = _Loading;
  const factory ReimbursementState.success(ReimbursementModel data) = _Success;
  const factory ReimbursementState.error(NetworkExceptions error) = _Error;
}
