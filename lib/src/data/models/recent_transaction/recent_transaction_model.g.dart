// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentTransactionModelImpl _$$RecentTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentTransactionModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      imgProfile: json['imgProfile'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$RecentTransactionModelImplToJson(
        _$RecentTransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgProfile': instance.imgProfile,
      'amount': instance.amount,
    };
