import 'package:dart_sdk/src/api/http_client.dart';

class RecordApi {
  String tableId;
  late final HttpClient httpClient;

  RecordApi(this.tableId, this.httpClient);

  Future<dynamic> getMany() {
    return httpClient.request('/api/v1/openapi/tables/$tableId/records', 'GET');
  }
}
