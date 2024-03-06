part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getAllNotification({
    required int page,
    int? pagination,
    String? fromDate,
    String? toDate,
  }) = _GetAllNotification;
}
