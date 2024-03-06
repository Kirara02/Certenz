// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryModelImpl _$$HistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HistoryModelImpl(
      transactionId: json['transaction_id'] as int?,
      transactionNumber: json['transaction_number'] as String?,
      transactionTitle: json['transaction_title'] as String?,
      amountTotal: json['amount_total'] as int?,
      transactionTime: json['transaction_time'] as String?,
      transactionCategory: json['transaction_category'] as String?,
      transactionStatus: json['transaction_status'] as String?,
      criteria: json['criteria'] as String?,
      fromName: json['from_name'] as String?,
    );

Map<String, dynamic> _$$HistoryModelImplToJson(_$HistoryModelImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'transaction_number': instance.transactionNumber,
      'transaction_title': instance.transactionTitle,
      'amount_total': instance.amountTotal,
      'transaction_time': instance.transactionTime,
      'transaction_category': instance.transactionCategory,
      'transaction_status': instance.transactionStatus,
      'criteria': instance.criteria,
      'from_name': instance.fromName,
    };
