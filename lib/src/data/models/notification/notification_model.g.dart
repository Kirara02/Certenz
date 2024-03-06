// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      transactionId: json['transaction_id'] as int?,
      transactionNumber: json['transaction_number'] as String?,
      transactionTitle: json['transaction_title'] as String?,
      amountTotal: json['amount_total'] as int?,
      transactionTime: json['transaction_time'] as String?,
      transactionCategory: json['transaction_category'] as String?,
      transactionStatus: json['transaction_status'] as String?,
      fromName: json['from_name'] as String?,
      toName: json['to_name'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'transaction_number': instance.transactionNumber,
      'transaction_title': instance.transactionTitle,
      'amount_total': instance.amountTotal,
      'transaction_time': instance.transactionTime,
      'transaction_category': instance.transactionCategory,
      'transaction_status': instance.transactionStatus,
      'from_name': instance.fromName,
      'to_name': instance.toName,
    };
