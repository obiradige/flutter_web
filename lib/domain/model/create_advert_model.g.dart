// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_advert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAdvertRequest _$CreateAdvertRequestFromJson(Map<String, dynamic> json) =>
    CreateAdvertRequest(
      images: json['images'] as List<dynamic>,
      companyId: json['company_id'] as String,
      classifiedId: json['classified_id'] as String?,
      title: json['title'] as String,
      piece: json['piece'] as String,
      deadline: json['deadline'] as String,
      paymentType: json['payment_type'] as String,
      deliveryAddress: json['delivery_address'] as String,
      explanation: json['explanation'] as String,
      customerSeller: json['customer_seller'] as String,
      cityId: json['city_id'] as String,
      townId: json['town_id'] as String,
      classifiedsRemainingTime: json['classifieds_remaining_time'] as String,
      paymentTerm: json['payment_term'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories2.fromJson(e as Map<String, dynamic>))
          .toList(),
      techImages: json['technical_image'] as String?,
      addressId: json['address_id'] as String?,
    );

Map<String, dynamic> _$CreateAdvertRequestToJson(
        CreateAdvertRequest instance) =>
    <String, dynamic>{
      'images': instance.images,
      'company_id': instance.companyId,
      'classified_id': instance.classifiedId,
      'title': instance.title,
      'piece': instance.piece,
      'deadline': instance.deadline,
      'payment_type': instance.paymentType,
      'delivery_address': instance.deliveryAddress,
      'explanation': instance.explanation,
      'customer_seller': instance.customerSeller,
      'city_id': instance.cityId,
      'town_id': instance.townId,
      'classifieds_remaining_time': instance.classifiedsRemainingTime,
      'payment_term': instance.paymentTerm,
      'categories': instance.categories,
      'technical_image': instance.techImages,
      'address_id': instance.addressId,
    };

Categories2 _$Categories2FromJson(Map<String, dynamic> json) => Categories2(
      id: json['id'] as String?,
      parent: json['parent'] as String?,
      content: json['content'] as String?,
      inputContent: json['input_content'] as String?,
      isTitle: json['is_title'] as String?,
    );

Map<String, dynamic> _$Categories2ToJson(Categories2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'content': instance.content,
      'input_content': instance.inputContent,
      'is_title': instance.isTitle,
    };

CreateAdvertResponse _$CreateAdvertResponseFromJson(
        Map<String, dynamic> json) =>
    CreateAdvertResponse(
      status: json['status'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$CreateAdvertResponseToJson(
        CreateAdvertResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
