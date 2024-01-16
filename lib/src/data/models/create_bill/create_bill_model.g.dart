// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBillModelImpl _$$CreateBillModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBillModelImpl(
      id: json['id'] as int?,
      billNumber: json['bill_number'] as String?,
      userId: json['user_id'] as int?,
      title: json['title'] as String?,
      totalAmountBill: json['total_amount_bill'] as String?,
      toEmail: json['to_email'] as String?,
      transactionDatetime: json['transaction_datetime'] as String?,
      toName: json['to_name'] as String?,
      fromAccount: json['from_account'] as String?,
      paymentMethod: json['payment_method'] as String?,
      fromName: json['from_name'] as String?,
      toAccount: json['to_account'] as String?,
      billType: json['bill_type'] as String?,
      phoneNumber: json['phone_number'] as String?,
      note: json['note'] as String?,
      qrCode: json['qr_code'] as String?,
      splitId: json['split_id'] as int?,
      createBillStatus: json['create_bill_status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$CreateBillModelImplToJson(
        _$CreateBillModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bill_number': instance.billNumber,
      'user_id': instance.userId,
      'title': instance.title,
      'total_amount_bill': instance.totalAmountBill,
      'to_email': instance.toEmail,
      'transaction_datetime': instance.transactionDatetime,
      'to_name': instance.toName,
      'from_account': instance.fromAccount,
      'payment_method': instance.paymentMethod,
      'from_name': instance.fromName,
      'to_account': instance.toAccount,
      'bill_type': instance.billType,
      'phone_number': instance.phoneNumber,
      'note': instance.note,
      'qr_code': instance.qrCode,
      'split_id': instance.splitId,
      'create_bill_status': instance.createBillStatus,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
