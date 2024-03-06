// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_split_bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistorySplitBillModelImpl _$$HistorySplitBillModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistorySplitBillModelImpl(
      id: json['transaction_id'] as int,
      userId: json['user_id'] as int,
      billNumber: json['bill_number'] as String,
      title: json['title'] as String,
      splitData: (json['split_data'] as List<dynamic>)
          .map((e) => HistoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistorySplitBillModelImplToJson(
        _$HistorySplitBillModelImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.id,
      'user_id': instance.userId,
      'bill_number': instance.billNumber,
      'title': instance.title,
      'split_data': instance.splitData,
    };
