import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bank_va_model.freezed.dart';
part 'payment_bank_va_model.g.dart';

@freezed
class PaymentBankVaModel with _$PaymentBankVaModel {
  const factory PaymentBankVaModel({
    @JsonKey(name: "va_code") required String vaCode,
    @JsonKey(name: "partner_reff") required String? partnerReff,
    @JsonKey(name: "partner_reff2") required String partnerReff2,
    @JsonKey(name: "amount") required int amount,
    @JsonKey(name: "created") required String created,
    @JsonKey(name: "expired") required String expired,
    @JsonKey(name: "bank_name") required String bankName,
    @JsonKey(name: "bank_image") required String bankImage,
    @JsonKey(name: "customer_name") String? customerName,
    @JsonKey(name: "customer_email") String? customerEmail,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "url_callback") required String urlCallback,
  }) = _PaymentBankVaModel;

  factory PaymentBankVaModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentBankVaModelFromJson(json);
}
