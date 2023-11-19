import "package:dio/dio.dart";

class HttpClient {
  final String apiKey;
  String baseUrl = 'http://0.0.0.0:4000';
  late final Dio dio;

  HttpClient(
    this.apiKey, {
    baseUrl,
  }) {
    dio = Dio(BaseOptions(baseUrl: this.baseUrl, headers: {
      "Content-Type": "application/json",
      "x-undb-api-token": apiKey,
    }));
  }

  Future<dynamic> request(String endpoint, String method,
      {Map<String, dynamic> body = const {}}) {
    dynamic data;

    final response = dio.request(
      endpoint,
      options: Options(method: method),
    );

    data = response;

    return data;
  }
}
