import 'package:dart_sdk/src/api/http_client.dart';

class RecordApi {
  String tableId;
  late final HttpClient httpClient;

  RecordApi(this.tableId, this.httpClient);

  Future<dynamic> getMany() {
    return httpClient.request('/api/v1/openapi/tables/$tableId/records', 'GET');
  }

  Future<dynamic> getOne(String recordId) {
    return httpClient.request(
        '/api/v1/openapi/tables/$tableId/records/$recordId', 'GET');
  }

  Future<void> deleteOne(String recordId) {
    return httpClient.request(
        '/api/v1/openapi/tables/$tableId/records/$recordId', 'DELETE');
  }
}
