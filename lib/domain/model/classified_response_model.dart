import 'package:json_annotation/json_annotation.dart';


part 'classified_response_model.g.dart';

@JsonSerializable()
class ClassifiedsResponse {
  final String? status;
  final List<BaseClassifiedsResponse>? data;

  ClassifiedsResponse({
    this.status,
    this.data,
  });

  factory ClassifiedsResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassifiedsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClassifiedsResponseToJson(this);
}



@JsonSerializable()
class BaseClassifiedsResponse {
  final String? id;
  final String? content;
  final String? parent;
  @JsonKey(name: 'is_technical_detail')
  final String? isTechnicalDetail;
  @JsonKey(name: 'is_technical_image')
  final String? isTechnicalImage;
  @JsonKey(name: 'is_title')
  final String? isTitle;
  @JsonKey(name: 'is_input')
  final String? isInput;
  late final List<BaseClassifiedsResponse>? children;

  BaseClassifiedsResponse({
    this.id,
    this.content,
    this.parent,
    this.isTechnicalDetail,
    this.isTechnicalImage,
    this.isTitle,
    this.isInput,
    this.children,
  });

  factory BaseClassifiedsResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseClassifiedsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseClassifiedsResponseToJson(this);

  @override
  String toString() {
    return content!;
  }

 
}

extension CategoryX on BaseClassifiedsResponse {
  bool get isTitleMI => isTitle == '1';
  bool get isInputMI => isInput == '1';
  bool get isTechnicalDetailMI => isTechnicalDetail == '1';
  bool get isTechnicalImageMI => isTechnicalImage == '1';
}
