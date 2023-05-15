import 'package:dart_basics/dart_basics.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Test task 2', () {
      expect(intToBin(156813138), '1001010110001100011101010010');
      expect(binToInt('1001010110001100011101010010'), 156813138);
    });
    test('Test task 3', () {
      expect(
        searchNumInString('String value 50 50.0 50.2 80 2.2 parse int 89'),
        <num>{50, 50.2, 80, 2.2, 89},
      );
      expect(
        searchNumInString2('String value 50 50.0 50.2 80 2.2 parse int 89'),
        <num>{50, 50.2, 80, 2.2, 89},
      );
    });
    test('Test task 4', () {
      expect(
          searchWordCountInList(<String>[
            'String',
            'value',
            'value',
            '50',
            '50',
            '50',
            '80',
            'parse',
            'int',
            '89',
            '89',
          ]),
          <String, int>{
            'String': 1,
            'value': 2,
            '50': 3,
            '80': 1,
            'parse': 1,
            'int': 1,
            '89': 2,
          });
    });
    test('Test task 5', () {
      expect(
          worldIntToInt(<String>[
            'one',
            'value',
            'value',
            '50',
            'two',
            '50',
            '80',
            'parse',
            'three',
            '89',
            'zero',
            'eight',
          ]),
          <int>[1, 2, 3, 0, 8]);
    });
    test('Test task 6', () {
      expect(
          (Point(x: 0, y: 0, z: 0).distanceTo(Point(x: 1, y: 1, z: 1)) -
                      0.8660254037).abs() > 1E-10,
          true);
      expect(Point.unitVector().toString(),'x:1.0, y:1.0, z:1.0,');
      expect(Point.unitVectorX().toString(),'x:1.0, y:0.0, z:0.0,');
      expect(Point.unitVectorY().toString(),'x:0.0, y:1.0, z:0.0,');
      expect(Point.unitVectorZ().toString(),'x:0.0, y:0.0, z:1.0,');
    });
  });
}
