import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/notification/notification_model.dart';

abstract class NotificationRepository {
  Future<ApiResult<PaginationResponse<NotificationModel>>> getListNotification({
    int pagination = 10,
    int page = 1,
    String fromDate = "",
    String toDate = "",
  });
}
