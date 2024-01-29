import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/data/services/history/history_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {
      await event.when(
        getAllHistories: (page, pagination) async {
          emit(const HistoryState.loading());
          ApiResult<PaginationResponse<HistoryModel>> result =
              await HistoryService()
                  .getAllHistories(page: page, pagination: pagination ?? 5);

          result.when(
            success: (response) =>
                emit(HistoryState.successPagination(response)),
            failure: (error) => emit(HistoryState.error(error)),
          );
        },
        getAllSuccessHistories: (page, pagination) async {
          emit(const HistoryState.loading());
          ApiResult<PaginationResponse<HistoryModel>> result =
              await HistoryService()
                  .getSuccessHistories(page: page, pagination: pagination ?? 5);

          result.when(
            success: (response) =>
                emit(HistoryState.successPagination(response)),
            failure: (error) => emit(HistoryState.error(error)),
          );
        },
        getAllPendingHistories: (page, pagination) async {
          emit(const HistoryState.loading());
          ApiResult<PaginationResponse<HistoryModel>> result =
              await HistoryService()
                  .getPendingHistories(page: page, pagination: pagination ?? 5);

          result.when(
            success: (response) =>
                emit(HistoryState.successPagination(response)),
            failure: (error) => emit(HistoryState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(HistoryEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<HistoryState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
