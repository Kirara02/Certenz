// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_billing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountBillingModelImpl _$$AccountBillingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountBillingModelImpl(
      userId: json['user_id'] as int?,
      billNumber: json['bill_number'] as String?,
      title: json['title'] as String?,
      totalAmountBill: json['total_amount_bill'] as int?,
      qrCode: json['qr_code'] as String?,
      transactionDatetime: json['transaction_datetime'] as String?,
      toName: json['to_name'] as String?,
      toAccount: json['to_account'] as String?,
      toEmail: json['to_email'] as String?,
      fromAccount: json['from_account'] as String?,
      fromName: json['from_name'] as String?,
      tenantPeriod: json['tenant_period'] as String?,
      paidOnDate: json['paid_on_date'] as String?,
      paidOnTime: json['paid_on_time'] as String?,
      paymentMethod: json['payment_method'] as int?,
      accountDestination: json['account_destination'] as int?,
      note: json['note'] as String?,
      billType: json['bill_type'] as String?,
      billStatus: json['bill_status'] as String?,
    );

Map<String, dynamic> _$$AccountBillingModelImplToJson(
        _$AccountBillingModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'bill_number': instance.billNumber,
      'title': instance.title,
      'total_amount_bill': instance.totalAmountBill,
      'qr_code': instance.qrCode,
      'transaction_datetime': instance.transactionDatetime,
      'to_name': instance.toName,
      'to_account': instance.toAccount,
      'to_email': instance.toEmail,
      'from_account': instance.fromAccount,
      'from_name': instance.fromName,
      'tenant_period': instance.tenantPeriod,
      'paid_on_date': instance.paidOnDate,
      'paid_on_time': instance.paidOnTime,
      'payment_method': instance.paymentMethod,
      'account_destination': instance.accountDestination,
      'note': instance.note,
      'bill_type': instance.billType,
      'bill_status': instance.billStatus,
    };
