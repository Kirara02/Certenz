// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SplitBillModelImpl _$$SplitBillModelImplFromJson(Map<String, dynamic> json) =>
    _$SplitBillModelImpl(
      id: json['split_id'] as int,
      userId: json['user_id'] as int,
      title: json['title'] as String,
      amountTotal: json['amount_total'] as String,
      setFairy: json['set_fairy'] as bool,
    );

Map<String, dynamic> _$$SplitBillModelImplToJson(
        _$SplitBillModelImpl instance) =>
    <String, dynamic>{
      'split_id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'amount_total': instance.amountTotal,
      'set_fairy': instance.setFairy,
    };
