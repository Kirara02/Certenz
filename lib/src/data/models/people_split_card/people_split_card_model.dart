import 'package:freezed_annotation/freezed_annotation.dart';

part 'people_split_card_model.freezed.dart';
part 'people_split_card_model.g.dart';

@freezed
class PeopleSplitCardModel with _$PeopleSplitCardModel {
  factory PeopleSplitCardModel({
    required String email,
    required String nohp,
    required double amount,
    required String status,
  }) = _PeopleSplitCardModel;

  factory PeopleSplitCardModel.fromJson(Map<String, dynamic> json) =>
      _$PeopleSplitCardModelFromJson(json);
}
