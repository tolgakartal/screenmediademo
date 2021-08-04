import 'package:dio/dio.dart';

class HttpClient {
  static const String baseUrl = 'https://cat-fact.herokuapp.com';
  static final HttpClient _httpClient = HttpClient._singleton();
  final Dio dio;

  HttpClient._singleton()
      : dio = Dio(
          BaseOptions(baseUrl: baseUrl),
        );

  factory HttpClient() {
    return _httpClient;
  }
}
