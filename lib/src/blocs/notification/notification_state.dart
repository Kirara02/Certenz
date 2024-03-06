part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.successPagination(
      PaginationResponse<NotificationModel> response) = _SuccessPagination;

  const factory NotificationState.error(NetworkExceptions error) = _Error;
}
