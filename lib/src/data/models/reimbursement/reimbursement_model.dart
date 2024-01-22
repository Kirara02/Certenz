import 'package:certenz/src/utils/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reimbursement_model.freezed.dart';
part 'reimbursement_model.g.dart';

@freezed
class ReimbursementModel with _$ReimbursementModel {
  factory ReimbursementModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? email,
    String? title,
    double? amount,
    @JsonKey(name: 'activity_details') List<String>? activityDetails,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'account_destination') int? accountDestination,
    String? notes,
    List<String>? documentation,
    @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
  }) = _ReimbursementModel;

  factory ReimbursementModel.fromJson(Map<String, dynamic> json) =>
      _$ReimbursementModelFromJson(json);
}
