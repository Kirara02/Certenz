// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountModelImpl _$$BankAccountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountModelImpl(
      bankAccountId: json['bank_account_id'] as int?,
      bankId: json['bank_id'] as int?,
      userId: json['user_id'] as int?,
      bankName: json['bank_name'] as String?,
      bankImage: json['bank_image'] as String?,
      cardNumber: json['card_number'] as String?,
      accountNumber: json['account_number'] as String?,
      accountName: json['account_name'] as String?,
      expired: json['expired'] as String?,
      cvv: json['cvv'] as int?,
      expiredBbtt: json['expired_bbtt'] as String?,
    );

Map<String, dynamic> _$$BankAccountModelImplToJson(
        _$BankAccountModelImpl instance) =>
    <String, dynamic>{
      'bank_account_id': instance.bankAccountId,
      'bank_id': instance.bankId,
      'user_id': instance.userId,
      'bank_name': instance.bankName,
      'bank_image': instance.bankImage,
      'card_number': instance.cardNumber,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'expired': instance.expired,
      'cvv': instance.cvv,
      'expired_bbtt': instance.expiredBbtt,
    };
