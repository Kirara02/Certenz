part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.getAllHistories(
      {required int page, int? pagination}) = _GetAllHistories;
  const factory HistoryEvent.getAllSuccessHistories(
      {required int page, int? pagination}) = _GetAllSuccessHistories;
  const factory HistoryEvent.getAllPendingHistories(
      {required int page, int? pagination}) = _GetAllPendingHistories;
}
