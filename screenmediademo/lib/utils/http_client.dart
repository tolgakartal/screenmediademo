import 'package:dio/dio.dart';

class HttpClient {
  static final HttpClient _httpClient = HttpClient._singleton();
  factory HttpClient() {
    return _httpClient;
  }
  HttpClient._singleton()
      : dio = Dio(
          BaseOptions(baseUrl: baseUrl),
        );

  final Dio dio;
  static const String baseUrl = 'https://cat-fact.herokuapp.com';
}
