import 'package:dart_sdk/dart_sdk.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

void main() {
  var env = DotEnv()..load();

  group('Test undb', () {
    var apiKey = env['API_KEY'];

    if (apiKey == null) {
      fail('环境变量 API_KEY 不存在或为空，测试终止。');
    }

    final undb = Undb(apiKey);

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      var records = await undb.table("tblk4h9pgm7").record.getMany();
      print(records);
    });
  });
}
