// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reimbursement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReimbursementModelImpl _$$ReimbursementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReimbursementModelImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      email: json['email'] as String?,
      title: json['title'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      activityDetails: (json['activity_details'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      startDate: json['start_date'] as String?,
      accountDestination: json['account_destination'] as int?,
      notes: json['notes'] as String?,
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$ReimbursementModelImplToJson(
        _$ReimbursementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'email': instance.email,
      'title': instance.title,
      'amount': instance.amount,
      'activity_details': instance.activityDetails,
      'start_date': instance.startDate,
      'account_destination': instance.accountDestination,
      'notes': instance.notes,
      'documentation': instance.documentation,
      'created_at': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeConverter().toJson),
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
