// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DefaultResponseImpl _$$DefaultResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DefaultResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$DefaultResponseImplToJson(
        _$DefaultResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'success': instance.success,
    };
