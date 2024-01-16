// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountBankModelImpl _$$AccountBankModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountBankModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      norek: json['norek'] as int,
      bank: json['bank'] as String,
      bankImage: json['bankImage'] as String,
    );

Map<String, dynamic> _$$AccountBankModelImplToJson(
        _$AccountBankModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'norek': instance.norek,
      'bank': instance.bank,
      'bankImage': instance.bankImage,
    };
