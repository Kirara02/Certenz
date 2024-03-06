// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_qris_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentQrisModelImpl _$$PaymentQrisModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentQrisModelImpl(
      qrisImage: json['qris_image'] as String,
      partnerReff: json['partner_reff'] as String,
      partnerReff2: json['partner_reff2'] as String,
      amount: (json['amount'] as num).toDouble(),
      created: json['created'] as String,
      expired: json['expired'] as String,
      customerName: json['customer_name'] as String,
      customerEmail: json['customer_email'] as String,
      urlCallback: json['url_callback'] as String,
    );

Map<String, dynamic> _$$PaymentQrisModelImplToJson(
        _$PaymentQrisModelImpl instance) =>
    <String, dynamic>{
      'qris_image': instance.qrisImage,
      'partner_reff': instance.partnerReff,
      'partner_reff2': instance.partnerReff2,
      'amount': instance.amount,
      'created': instance.created,
      'expired': instance.expired,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'url_callback': instance.urlCallback,
    };
