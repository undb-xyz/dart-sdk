import 'package:dart_sdk/dart_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final undb = Undb("wKqt2g6MfrH68crJK7dPGs05lwc2NYVL3omiXRnS");

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      var records = await undb.table("tblk4h9pgm7").record.getMany();
      print(records);
    });
  });
}
