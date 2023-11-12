import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';


@JsonSerializable()
class LoginRequestModel {
  LoginRequestModel({
    required this.email,
    required this.password,
    required this.fcmToken,
  });
  final String email;
  final String password;
  @JsonKey(name: 'fcm_token')
  final String fcmToken;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}



@JsonSerializable()
class AuthResponseModel {
  AuthResponseModel({
    this.status,
    this.message,
    this.data,
  });
  final String? status;
  final String? message;
  final BaseAuthResponseModel? data;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@JsonSerializable()
class BaseAuthResponseModel {
  BaseAuthResponseModel({
    this.companyId,
    this.userId,
    this.name,
    this.surname,
    this.phone,
    this.email,
    this.role,
    this.active,
    this.updatedAt,
    this.createdAt,
  });
  @JsonKey(name: 'company_id')
  final String? companyId;
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? name;
  final String? surname;
  final String? phone;
  final String? email;
  final String? role;
  final String? active;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'created_at')
  final String? createdAt;

  factory BaseAuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseAuthResponseModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$BaseAuthResponseModelToJson(this);
}
