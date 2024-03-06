import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/notification/notification_model.dart';
import 'package:certenz/src/data/services/notification_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(const NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.when(
        getAllNotification: (page, pagination, fromDate, toDate) async {
          emit(const NotificationState.loading());
          ApiResult<PaginationResponse<NotificationModel>> result =
              await NotificationService().getListNotification(
                  page: page,
                  pagination: pagination ?? 10,
                  fromDate: fromDate ?? "",
                  toDate: toDate ?? "");

          result.when(
            success: (data) => emit(NotificationState.successPagination(data)),
            failure: (error) => emit(NotificationState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(NotificationEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<NotificationState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
