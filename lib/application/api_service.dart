import 'dart:convert';

import 'package:dio/dio.dart';

class ApiService {
  static Dio dio = Dio();
  final baseUrl = 'https://api.paletmerkezi.com/Api/';

  String? accessToken;

  Future<Dio> init() async {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          if (!options.path.contains('http')) {
            options.path = baseUrl + options.path;
          }
          options.headers['Authorization'] =
              'Basic ${base64.encode(utf8.encode('test:test'))}';
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401 ||
              error.response?.statusCode == 403) {}
          return handler.next(error);
        },
      ),
    );
    return dio;
  }
}
