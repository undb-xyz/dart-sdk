import 'package:dart_sdk/src/api/http_client.dart';
import 'package:dart_sdk/src/api/types.dart';

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

  Future<dynamic> createOne(CreateRecordDTO dto) {
    return httpClient.request(
      '/api/v1/openapi/tables/$tableId/records',
      'POST',
      body: {"id": dto.id, "values": dto.values},
    );
  }

  Future<void> deleteOne(String recordId) {
    return httpClient.request(
        '/api/v1/openapi/tables/$tableId/records/$recordId', 'DELETE');
  }
}
