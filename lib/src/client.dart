import 'package:dart_sdk/src/api/http_client.dart';
import 'package:dart_sdk/src/api/table.dart';
export 'package:dart_sdk/src/api/types.dart';

/// Checks if you are awesome. Spoiler: you are.
class Undb {
  late final HttpClient httpClient;

  Undb(String apiKey) {
    httpClient = HttpClient(apiKey);
  }

  TableApi table(String tableId) {
    return TableApi(tableId, httpClient);
  }
}
