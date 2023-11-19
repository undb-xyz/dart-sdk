// TODO: Put public facing types in this file.

import 'package:dart_sdk/src/api/http_client.dart';
import 'package:dart_sdk/src/api/table.dart';

/// Checks if you are awesome. Spoiler: you are.
class Undb {
  late final HttpClient httpClient;

  Undb() {
    httpClient = HttpClient();
  }

  TableApi table(String tableId) {
    return TableApi(tableId, httpClient);
  }
}
