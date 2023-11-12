
import 'package:dio/dio.dart';
import 'package:palet/application/locator.dart';
import 'package:palet/domain/model/auth_model.dart';

abstract class AuthRepository {
  Future<void> login(String email, String password, String fcmToken);
}

class AuthRepositoryImpl implements AuthRepository {
  
  final Dio dio = getIt<Dio>();
  @override
  Future<BaseAuthResponseModel> login(String email, String password, String fcmToken) async {
    try{
      final response = await dio.post(
      'V2/Users/login',
      data: {
        'email': email,
        'password': password,
        'fcm_token': fcmToken,
      },
    );
    final authResponse = BaseAuthResponseModel.fromJson(response.data);
    return authResponse;
  }catch(e){
    throw Exception(e);
  }
  }
    
}
