// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_cs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqCsModelImpl _$$FaqCsModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqCsModelImpl(
      id: json['id'] as int,
      type: json['type'] as String,
      title: json['title'] as String,
      detail: json['detail'] as String?,
      createdAt:
          const DateTimeConverter().fromJson(json['created_at'] as String),
      updatedAt:
          const DateTimeConverter().fromJson(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FaqCsModelImplToJson(_$FaqCsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'detail': instance.detail,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'updated_at': const DateTimeConverter().toJson(instance.updatedAt),
    };
