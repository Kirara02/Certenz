part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.success(
    List<HistoryModel> histories,
    bool hasReachedMax,
  ) = _Success;
  const factory HistoryState.error(NetworkExceptions error) = _Error;
}
