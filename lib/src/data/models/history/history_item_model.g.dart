// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryItemModelImpl _$$HistoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryItemModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      billNumber: json['bill_number'] as String?,
      splitId: json['split_id'] as int?,
      userId: json['user_id'] as int?,
      totalAmountBill: (json['total_amount_bill'] as num?)?.toDouble(),
      toEmail: json['to_email'] as String?,
      toName: json['to_name'] as String?,
      toAccount: json['to_account'] as String?,
      fromEmail: json['from_email'] as String?,
      fromName: json['from_name'] as String?,
      fromAccount: json['from_account'] as String?,
      transactionDatetime: json['transaction_datetime'] as String?,
      paymentMethod: json['payment_method'] as String?,
      billType: json['bill_type'] as String?,
      note: json['note'] as String?,
      qrCode: json['qr_code'] as String?,
      status: json['status'] as String?,
      showSplitRedirect: json['show_split_redirect'] as String?,
      tenantPeriod: json['tenant_period'] as String?,
      paidOnDate: json['paid_on_date'] as String?,
      paidOnTime: json['paid_on_time'] as String?,
      withFee: json['with_fee'] as bool?,
    );

Map<String, dynamic> _$$HistoryItemModelImplToJson(
        _$HistoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bill_number': instance.billNumber,
      'split_id': instance.splitId,
      'user_id': instance.userId,
      'total_amount_bill': instance.totalAmountBill,
      'to_email': instance.toEmail,
      'to_name': instance.toName,
      'to_account': instance.toAccount,
      'from_email': instance.fromEmail,
      'from_name': instance.fromName,
      'from_account': instance.fromAccount,
      'transaction_datetime': instance.transactionDatetime,
      'payment_method': instance.paymentMethod,
      'bill_type': instance.billType,
      'note': instance.note,
      'qr_code': instance.qrCode,
      'status': instance.status,
      'show_split_redirect': instance.showSplitRedirect,
      'tenant_period': instance.tenantPeriod,
      'paid_on_date': instance.paidOnDate,
      'paid_on_time': instance.paidOnTime,
      'with_fee': instance.withFee,
    };
