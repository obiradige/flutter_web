import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:palet/application/alert_service.dart';
import 'package:palet/application/api_service.dart';
import 'package:palet/application/navigation_service.dart';
import 'package:palet/application/secure_storage_service.dart';
import 'package:palet/config/router/app_router.dart';


final getIt = GetIt.instance;

Future<void> locator() async {
  getIt
    ..registerLazySingleton(() => AppRouter())
    ..registerSingleton<NavigationService>(NavigationService())
    ..registerSingleton<SecureStorageService>(SecureStorageService())
    ..registerSingleton<AlertService>(AlertService())
    ..registerSingletonAsync<Dio>(() async {
      final api = ApiService();
      final dio = await api.init();
      return dio;
    });
}
