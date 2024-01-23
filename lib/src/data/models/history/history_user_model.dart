import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_user_model.freezed.dart';
part 'history_user_model.g.dart';

@freezed
class HistoryUserModel with _$HistoryUserModel {
  const factory HistoryUserModel({
    String? name,
    String? email,
    @JsonKey(name: 'account_number') String? accountNumber,
  }) = _HistoryUserModel;

  factory HistoryUserModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryUserModelFromJson(json);
}
