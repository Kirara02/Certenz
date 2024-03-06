// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillModelImpl _$$BillModelImplFromJson(Map<String, dynamic> json) =>
    _$BillModelImpl(
      id: json['id'] as int?,
      billNumber: json['bill_number'] as String,
      userId: json['user_id'] as int,
      title: json['title'] as String,
      totalAmountBill: (json['total_amount_bill'] as num).toDouble(),
      transactionDatetime: json['transaction_datetime'] as String,
      toEmail: json['to_email'] as String?,
      toName: json['to_name'] as String?,
      toAccount: json['to_account'] as String?,
      fromAccount: json['from_account'] as String,
      fromName: json['from_name'] as String,
      paymentMethod: json['payment_method'] as String?,
      billType: json['bill_type'] as String,
      phoneNumber: json['phone_number'] as String?,
      note: json['note'] as String?,
      qrCode: json['qr_code'] as String?,
      splitId: json['split_id'] as int?,
      tenantPeriod: json['tenant_period'] as String?,
      paidOnDate: json['paid_on_date'] as String?,
      paidOnTime: json['paid_on_time'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BillModelImplToJson(_$BillModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bill_number': instance.billNumber,
      'user_id': instance.userId,
      'title': instance.title,
      'total_amount_bill': instance.totalAmountBill,
      'transaction_datetime': instance.transactionDatetime,
      'to_email': instance.toEmail,
      'to_name': instance.toName,
      'to_account': instance.toAccount,
      'from_account': instance.fromAccount,
      'from_name': instance.fromName,
      'payment_method': instance.paymentMethod,
      'bill_type': instance.billType,
      'phone_number': instance.phoneNumber,
      'note': instance.note,
      'qr_code': instance.qrCode,
      'split_id': instance.splitId,
      'tenant_period': instance.tenantPeriod,
      'paid_on_date': instance.paidOnDate,
      'paid_on_time': instance.paidOnTime,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
