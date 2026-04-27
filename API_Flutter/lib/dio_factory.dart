import 'package:dio/dio.dart';

class DioFactory {
  static Dio createDio(){
    Dio dio = Dio();
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: false,
        requestBody: true,
        responseHeader: false,
        responseBody: true
      )
    );

    return dio;
  }
}