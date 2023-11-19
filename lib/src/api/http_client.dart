import "package:http/http.dart" as http;

class HttpClient {
  Future<dynamic> request(String endpoint, String method,
      {Map<String, dynamic> body = const {}}) {
    var url = Uri.parse(endpoint);
    dynamic data;

    final request = http.Request(method, url);

    data = request;

    return data;
  }
}
