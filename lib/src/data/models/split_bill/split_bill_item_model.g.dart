// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_bill_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SplitBillItemModelImpl _$$SplitBillItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SplitBillItemModelImpl(
      title: json['title'] as String,
      billNumber: json['bill_number'] as String,
      toEmail: json['to_email'] as String,
      note: json['note'] as String?,
      phoneNumber: json['phone_number'] as String?,
      userId: json['user_id'] as int,
      fromAccount: json['from_account'] as String,
      fromName: json['from_name'] as String,
      toAccount: json['to_account'] as String,
      toName: json['to_name'] as String,
      paymentMethod: json['payment_method'] as String,
      transactionDatetime: json['transaction_datetime'] as String,
      billType: json['bill_type'] as String,
      createBillStatus: json['create_bill_status'] as String,
      splitId: json['split_id'] as int,
      totalAmountBill: json['total_amount_bill'] as int,
    );

Map<String, dynamic> _$$SplitBillItemModelImplToJson(
        _$SplitBillItemModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'bill_number': instance.billNumber,
      'to_email': instance.toEmail,
      'note': instance.note,
      'phone_number': instance.phoneNumber,
      'user_id': instance.userId,
      'from_account': instance.fromAccount,
      'from_name': instance.fromName,
      'to_account': instance.toAccount,
      'to_name': instance.toName,
      'payment_method': instance.paymentMethod,
      'transaction_datetime': instance.transactionDatetime,
      'bill_type': instance.billType,
      'create_bill_status': instance.createBillStatus,
      'split_id': instance.splitId,
      'total_amount_bill': instance.totalAmountBill,
    };
