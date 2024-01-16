// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseMessageImpl _$$ErrorResponseMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseMessageImpl(
      message: json['message'] as String?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ErrorResponseMessageImplToJson(
        _$ErrorResponseMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };
