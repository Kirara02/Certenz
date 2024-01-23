// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryResponseImpl _$$HistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => HistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      success: json['success'] as String,
    );

Map<String, dynamic> _$$HistoryResponseImplToJson(
        _$HistoryResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'pagination': instance.pagination,
      'success': instance.success,
    };
