// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SplitBillModelImpl _$$SplitBillModelImplFromJson(Map<String, dynamic> json) =>
    _$SplitBillModelImpl(
      id: json['split_id'] as int,
      userId: json['user_id'] as int,
      billNumber: json['bill_number'] as String,
      title: json['title'] as String,
      amountTotal: (json['amount_total'] as num).toDouble(),
      setFairy: json['set_fairy'] as bool,
    );

Map<String, dynamic> _$$SplitBillModelImplToJson(
        _$SplitBillModelImpl instance) =>
    <String, dynamic>{
      'split_id': instance.id,
      'user_id': instance.userId,
      'bill_number': instance.billNumber,
      'title': instance.title,
      'amount_total': instance.amountTotal,
      'set_fairy': instance.setFairy,
    };
