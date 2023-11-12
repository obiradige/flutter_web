import 'package:json_annotation/json_annotation.dart';

part 'create_advert_model.g.dart';

@JsonSerializable()
class CreateAdvertRequest {
  CreateAdvertRequest({
    required this.images,
    required this.companyId,
    this.classifiedId,
    required this.title,
    required this.piece,
    required this.deadline,
    required this.paymentType,
    required this.deliveryAddress,
    required this.explanation,
    required this.customerSeller,
    required this.cityId,
    required this.townId,
    required this.classifiedsRemainingTime,
    required this.paymentTerm,
    required this.categories,
     this.techImages,
    required this.addressId,
  });

  final List images;
  @JsonKey(name: 'company_id')
  final String companyId;
  @JsonKey(name: 'classified_id')
  final String? classifiedId;
  final String title;
  final String piece;
  final String deadline;
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @JsonKey(name: 'delivery_address')
  final String deliveryAddress;
  final String explanation;
  @JsonKey(name: 'customer_seller')
  final String customerSeller;
  @JsonKey(name: 'city_id')
  final String cityId;
  @JsonKey(name: 'town_id')
  final String townId;
  @JsonKey(name: 'classifieds_remaining_time')
  final String classifiedsRemainingTime;
  @JsonKey(name: 'payment_term')
  final String paymentTerm;
  final List<Categories2> categories;
  @JsonKey(name: 'technical_image')
  final String? techImages;
  @JsonKey(name: 'address_id')
  final String? addressId;

  factory CreateAdvertRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAdvertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAdvertRequestToJson(this);
}

@JsonSerializable()
class Categories2 {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'parent')
  String? parent;
  @JsonKey(name: 'content')
  String? content;
  @JsonKey(name: 'input_content')
  String? inputContent;
  @JsonKey(name: 'is_title')
  String? isTitle;
  

  Categories2({
    this.id,
    this.parent,
    this.content,
    this.inputContent,
    this.isTitle,
  });

  factory Categories2.fromJson(Map<String, dynamic> json) =>
      _$Categories2FromJson(json);

  Map<String, dynamic> toJson() => _$Categories2ToJson(this);

  @override
  String toString() {
    return '\nCategories2(id: $id, content: $content)\n';
  }
}

@JsonSerializable()
class CreateAdvertResponse {
  CreateAdvertResponse({
    required this.status,
    required this.message,
  });
  final String status;
  final String message;

  factory CreateAdvertResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAdvertResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAdvertResponseToJson(this);
}
