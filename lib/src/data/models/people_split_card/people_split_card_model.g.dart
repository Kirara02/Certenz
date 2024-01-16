// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_split_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeopleSplitCardModelImpl _$$PeopleSplitCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PeopleSplitCardModelImpl(
      email: json['email'] as String,
      nohp: json['nohp'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PeopleSplitCardModelImplToJson(
        _$PeopleSplitCardModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nohp': instance.nohp,
      'amount': instance.amount,
      'status': instance.status,
    };
