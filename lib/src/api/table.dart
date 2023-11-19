import 'package:dart_sdk/src/api/http_client.dart';
import 'package:dart_sdk/src/api/record.dart';

class TableApi {
  String tableId;
  late final RecordApi record;
  late final HttpClient httpClient;

  TableApi(this.tableId, this.httpClient) {
    record = RecordApi(tableId, httpClient);
  }
}
