import 'package:json_annotation/json_annotation.dart';

part 'all_classified_model.g.dart';

@JsonSerializable()
class ClassifiedModel {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'data')
  List<BaseAllClassifiedModel>? data;

  ClassifiedModel({
    this.status,
    this.data,
  });

  factory ClassifiedModel.fromJson(Map<String, dynamic> json) =>
      _$ClassifiedModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClassifiedModelToJson(this);
}

@JsonSerializable()
class BaseAllClassifiedModel {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'classified_no')
  String? classifiedNo;
  @JsonKey(name: 'company_id')
  String? companyId;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'categories')
  List<Categories>? categories;
  @JsonKey(name: 'payment_term')
  String? paymentTerm;
  @JsonKey(name: 'piece')
  String? piece;
  @JsonKey(name: 'classifieds_status')
  String? classifiedsStatus;
  @JsonKey(name: 'control')
  bool? control;
  @JsonKey(name: 'deadline')
  String? deadline;
  @JsonKey(name: 'payment_type')
  String? paymentType;
  @JsonKey(name: 'delivery_address')
  String? deliveryAddress;
  @JsonKey(name: 'address_id')
  String? addressId;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'town')
  String? town;
  @JsonKey(name: 'city_id')
  String? cityId;
  @JsonKey(name: 'town_id')
  String? townId;
  @JsonKey(name: 'explanation')
  String? explanation;
  @JsonKey(name: 'customer_seller')
  String? customerSeller;
  @JsonKey(name: 'offers_count')
  int? offersCount;
  @JsonKey(name: 'active')
  String? active;
  @JsonKey(name: 'classifieds_remaining_time')
  String? classifiedsRemainingTime;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'classifieds_images')
  List<ClassifiedsImages>? classifiedsImages;
  @JsonKey(name: 'technical_image')
  String? technicalImage;

  BaseAllClassifiedModel({
    this.id,
    this.classifiedNo,
    this.companyId,
    this.title,
    this.categories,
    this.paymentTerm,
    this.piece,
    this.classifiedsStatus,
    this.control,
    this.deadline,
    this.paymentType,
    this.deliveryAddress,
    this.addressId,
    this.city,
    this.town,
    this.explanation,
    this.customerSeller,
    this.offersCount,
    this.active,
    this.classifiedsRemainingTime,
    this.updatedAt,
    this.createdAt,
    this.classifiedsImages,
  });

  factory BaseAllClassifiedModel.fromJson(Map<String, dynamic> json) =>
      _$BaseAllClassifiedModelFromJson(json);

  Map<String, dynamic> toJson() => _$BaseAllClassifiedModelToJson(this);
}

@JsonSerializable()
class Categories {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'parent')
  String? parent;
  @JsonKey(name: 'content')
  String? content;
  @JsonKey(name: 'input_content')
  String? inputContent;

  Categories({
    this.id,
    this.parent,
    this.content,
    this.inputContent,
  });

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class ClassifiedsImages {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'classifieds_id')
  String? classifiedsId;
  @JsonKey(name: 'order_id')
  String? orderId;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;

  ClassifiedsImages({
    this.id,
    this.classifiedsId,
    this.orderId,
    this.url,
    this.updatedAt,
    this.createdAt,
  });

  factory ClassifiedsImages.fromJson(Map<String, dynamic> json) =>
      _$ClassifiedsImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ClassifiedsImagesToJson(this);
}
