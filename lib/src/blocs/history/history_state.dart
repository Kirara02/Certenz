part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.successPagination(
      PaginationResponse<HistoryModel> response) = _SuccessPagination;
  const factory HistoryState.error(NetworkExceptions error) = _Error;
}
