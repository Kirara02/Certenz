// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqQuestionModelImpl _$$FaqQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FaqQuestionModelImpl(
      id: json['id'] as int,
      question: json['question'] as String,
      answer: json['answer'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['created_at'] as String),
      updatedAt:
          const DateTimeConverter().fromJson(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FaqQuestionModelImplToJson(
        _$FaqQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'updated_at': const DateTimeConverter().toJson(instance.updatedAt),
    };
