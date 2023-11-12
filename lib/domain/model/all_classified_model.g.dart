// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_classified_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassifiedModel _$ClassifiedModelFromJson(Map<String, dynamic> json) =>
    ClassifiedModel(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => BaseAllClassifiedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassifiedModelToJson(ClassifiedModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

BaseAllClassifiedModel _$BaseAllClassifiedModelFromJson(
        Map<String, dynamic> json) =>
    BaseAllClassifiedModel(
      id: json['id'] as String?,
      classifiedNo: json['classified_no'] as String?,
      companyId: json['company_id'] as String?,
      title: json['title'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentTerm: json['payment_term'] as String?,
      piece: json['piece'] as String?,
      classifiedsStatus: json['classifieds_status'] as String?,
      control: json['control'] as bool?,
      deadline: json['deadline'] as String?,
      paymentType: json['payment_type'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      addressId: json['address_id'] as String?,
      city: json['city'] as String?,
      town: json['town'] as String?,
      explanation: json['explanation'] as String?,
      customerSeller: json['customer_seller'] as String?,
      offersCount: json['offers_count'] as int?,
      active: json['active'] as String?,
      classifiedsRemainingTime: json['classifieds_remaining_time'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      classifiedsImages: (json['classifieds_images'] as List<dynamic>?)
          ?.map((e) => ClassifiedsImages.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..cityId = json['city_id'] as String?
      ..townId = json['town_id'] as String?
      ..technicalImage = json['technical_image'] as String?;

Map<String, dynamic> _$BaseAllClassifiedModelToJson(
        BaseAllClassifiedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classified_no': instance.classifiedNo,
      'company_id': instance.companyId,
      'title': instance.title,
      'categories': instance.categories,
      'payment_term': instance.paymentTerm,
      'piece': instance.piece,
      'classifieds_status': instance.classifiedsStatus,
      'control': instance.control,
      'deadline': instance.deadline,
      'payment_type': instance.paymentType,
      'delivery_address': instance.deliveryAddress,
      'address_id': instance.addressId,
      'city': instance.city,
      'town': instance.town,
      'city_id': instance.cityId,
      'town_id': instance.townId,
      'explanation': instance.explanation,
      'customer_seller': instance.customerSeller,
      'offers_count': instance.offersCount,
      'active': instance.active,
      'classifieds_remaining_time': instance.classifiedsRemainingTime,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'classifieds_images': instance.classifiedsImages,
      'technical_image': instance.technicalImage,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      id: json['id'] as String?,
      parent: json['parent'] as String?,
      content: json['content'] as String?,
      inputContent: json['input_content'] as String?,
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'content': instance.content,
      'input_content': instance.inputContent,
    };

ClassifiedsImages _$ClassifiedsImagesFromJson(Map<String, dynamic> json) =>
    ClassifiedsImages(
      id: json['id'] as String?,
      classifiedsId: json['classifieds_id'] as String?,
      orderId: json['order_id'] as String?,
      url: json['url'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ClassifiedsImagesToJson(ClassifiedsImages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classifieds_id': instance.classifiedsId,
      'order_id': instance.orderId,
      'url': instance.url,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
