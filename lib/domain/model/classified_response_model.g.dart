// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classified_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassifiedsResponse _$ClassifiedsResponseFromJson(Map<String, dynamic> json) =>
    ClassifiedsResponse(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              BaseClassifiedsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassifiedsResponseToJson(
        ClassifiedsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

BaseClassifiedsResponse _$BaseClassifiedsResponseFromJson(
        Map<String, dynamic> json) =>
    BaseClassifiedsResponse(
      id: json['id'] as String?,
      content: json['content'] as String?,
      parent: json['parent'] as String?,
      isTechnicalDetail: json['is_technical_detail'] as String?,
      isTechnicalImage: json['is_technical_image'] as String?,
      isTitle: json['is_title'] as String?,
      isInput: json['is_input'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) =>
              BaseClassifiedsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BaseClassifiedsResponseToJson(
        BaseClassifiedsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'parent': instance.parent,
      'is_technical_detail': instance.isTechnicalDetail,
      'is_technical_image': instance.isTechnicalImage,
      'is_title': instance.isTitle,
      'is_input': instance.isInput,
      'children': instance.children,
    };
