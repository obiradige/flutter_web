import 'package:palet/domain/model/auth_model.dart';
import 'package:palet/domain/repository/auth/auth_repository.dart';

abstract class AuthServices {
  Future<BaseAuthResponseModel> login(
      String email, String password, String fcmToken);
}

class AuthServicesImpl implements AuthServices {
  final AuthRepositoryImpl authRepositoryImpl = AuthRepositoryImpl();
  @override
  Future<BaseAuthResponseModel> login(String email, String password, String fcmToken) {
    return authRepositoryImpl.login(email, password, fcmToken);
  }
}
