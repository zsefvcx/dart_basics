import 'package:dart_basics/dart_basics.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {

    test('Test task2', () {
      expect(intToBin(156813138), '1001010110001100011101010010');
                  expect(binToInt('1001010110001100011101010010'), 156813138);
    });



  });
}
