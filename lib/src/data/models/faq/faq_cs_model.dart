import 'package:certenz/src/utils/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_cs_model.freezed.dart';
part 'faq_cs_model.g.dart';

@freezed
class FaqCsModel with _$FaqCsModel {
  const factory FaqCsModel({
    required int id,
    required String type,
    required String title,
    String? detail, // Nullable field
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _FaqCsModel;

  factory FaqCsModel.fromJson(Map<String, dynamic> json) =>
      _$FaqCsModelFromJson(json);
}
