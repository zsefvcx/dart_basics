import 'package:dart_basics/dart_basics.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {

    test('Test task 2', () {
      expect(intToBin(156813138), '1001010110001100011101010010');
                  expect(binToInt('1001010110001100011101010010'), 156813138);
    });
    test('Test task 3', () {
      expect(searchNumInString('String value 50 50.0 50.2 80 2.2 parse int 89'), <num>{50, 50.2, 80, 2.2, 89});
      expect(searchNumInString2('String value 50 50.0 50.2 80 2.2 parse int 89'), <num>{50, 50.2, 80, 2.2, 89});
    });


  });
}
