// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_bank_va_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentBankVaModelImpl _$$PaymentBankVaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentBankVaModelImpl(
      vaCode: json['va_code'] as String,
      partnerReff: json['partner_reff'] as String?,
      partnerReff2: json['partner_reff2'] as String,
      amount: json['amount'] as int,
      created: json['created'] as String,
      expired: json['expired'] as String,
      bankName: json['bank_name'] as String,
      bankImage: json['bank_image'] as String,
      customerName: json['customer_name'] as String?,
      customerEmail: json['customer_email'] as String?,
      note: json['note'] as String?,
      urlCallback: json['url_callback'] as String,
    );

Map<String, dynamic> _$$PaymentBankVaModelImplToJson(
        _$PaymentBankVaModelImpl instance) =>
    <String, dynamic>{
      'va_code': instance.vaCode,
      'partner_reff': instance.partnerReff,
      'partner_reff2': instance.partnerReff2,
      'amount': instance.amount,
      'created': instance.created,
      'expired': instance.expired,
      'bank_name': instance.bankName,
      'bank_image': instance.bankImage,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'note': instance.note,
      'url_callback': instance.urlCallback,
    };
