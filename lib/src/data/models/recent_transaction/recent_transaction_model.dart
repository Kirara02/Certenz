import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_transaction_model.freezed.dart';
part 'recent_transaction_model.g.dart';

@freezed
class RecentTransactionModel with _$RecentTransactionModel {
  factory RecentTransactionModel({
    required int id,
    required String name,
    required String imgProfile,
    required double amount,
  }) = _RecentTransactionModel;

  factory RecentTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$RecentTransactionModelFromJson(json);
}
