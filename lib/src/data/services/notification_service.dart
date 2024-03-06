import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/data/data_source/common/http.dart';
import 'package:certenz/src/data/models/common/pagination_response.dart';
import 'package:certenz/src/data/models/notification/notification_model.dart';
import 'package:certenz/src/data/repository/notification_repository.dart';

class NotificationService implements NotificationRepository {
  late UXHttp http;

  NotificationService() {
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<PaginationResponse<NotificationModel>>> getListNotification({
    int pagination = 10,
    int page = 1,
    String fromDate = "",
    String toDate = "",
  }) async {
    return await http.get(
      "transaction-notification?paginate=$pagination&page=$page&from_date=$fromDate&to_date=$toDate",
      authorization: true,
      onSuccess: (res) => PaginationResponse<NotificationModel>.fromJson(
          res.data,
          (json) => NotificationModel.fromJson(json as Map<String, dynamic>)),
    );
  }
}
