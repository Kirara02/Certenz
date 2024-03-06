import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_qris_model.freezed.dart';
part 'payment_qris_model.g.dart';

@freezed
class PaymentQrisModel with _$PaymentQrisModel {
  const factory PaymentQrisModel({
    @JsonKey(name: "qris_image") required String qrisImage,
    @JsonKey(name: "partner_reff") required String partnerReff,
    @JsonKey(name: "partner_reff2") required String partnerReff2,
    required double amount,
    required String created,
    required String expired,
    @JsonKey(name: "customer_name") required String customerName,
    @JsonKey(name: "customer_email") required String customerEmail,
    @JsonKey(name: "url_callback") required String urlCallback,
  }) = _PaymentQrisModel;

  factory PaymentQrisModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentQrisModelFromJson(json);
}
