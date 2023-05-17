
import 'package:test/test.dart';

import 'package:dart_basics/dart_basics.dart';


void main() {
  group('A group of tests', () {
    test('Test task 1', () {
      expect(DelimetersCalculator(value: 15).gcd(20) ,5);
      expect(DelimetersCalculator(value: 15).gcd(20) ,5);
      expect(DelimetersCalculator(value: 15).gcd(35) ,5);
      expect(DelimetersCalculator(value: 12).gcd(30) ,6);
      expect(DelimetersCalculator(value: 72).gcd(64) ,8);

      expect(DelimetersCalculator(value: 15).lcm(89) ,1335);
      expect(DelimetersCalculator(value: 15).lcm(20) ,60);
      expect(DelimetersCalculator(value: 15).lcm(35) ,105);
      expect(DelimetersCalculator(value: 12).lcm(30) ,60);
      expect(DelimetersCalculator(value: 72).lcm(64) ,576);

      expect(DelimetersCalculator(value: 124).fin() ,<int>[2, 2, 31]);
      expect(DelimetersCalculator(value: 15).fin()  ,<int>[3, 5]);
      expect(DelimetersCalculator(value: 1500).fin(),<int>[2, 2, 3, 5, 5, 5]);
      expect(DelimetersCalculator(value: 12).fin()  ,<int>[2, 2, 3]);
      expect(DelimetersCalculator(value: 72).fin()  ,<int>[2, 2, 2, 3, 3]);

    });
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
          SearchWordCountInList(value: <String>[
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
          ]).result,
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
          WordIntToInt(value: <String>[
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
          ]).result,
          <int>[1, 2, 3, 0, 8]);
    });
    test('Test task 6', () {
      expect(
          (Point(x: 0, y: 0, z: 0).distanceTo(Point(x: 1, y: 1, z: 1)) -
              1.7320508075688772).abs() < 1E-10,
          true);
      expect(
          (Point(x: 1, y: 1, z: 1).distanceTo(Point(x: 2, y: 2, z: 2)) -
              1.7320508075688772).abs() < 1E-10,
          true);
      expect(
          (Point(x: 0, y: 0, z: 0).distanceTo(Point(x: 2, y: 2, z: 2)) -
              3.4641016151377544).abs() < 1E-10,
          true);
      expect(
          (Point(x: 0, y: 0, z: 0).distanceTo(Point(x: 1, y: 2, z: 3)) -
              3.7416573867739413).abs() < 1E-10,
          true);
      expect(
          (Point(x: 0, y: 0, z: 0).distanceTo(Point(x: 1, y: 0, z: 1)) -
              1.4142135623730951).abs() < 1E-10,
          true);
      expect(
          (Point(x: 5, y: 8, z: 20).distanceTo(Point(x: 1, y: 8, z: -10)) -
              30.265491900843113).abs() < 1E-10,
          true);
      expect(
           (Point.spaceTriangle(
             p1: Point(x: 0, y: 0, z: 0),
             p2: Point(x: 1, y: 0, z: 1),
             p3: Point(x: 1, y: 1, z: 0),
           ) - 0.8660254037844386).abs() < 1E-10,
           true);
      expect(Point.unitVector().toString(),'x:1.0, y:1.0, z:1.0,');
      expect(Point.unitVectorX().toString(),'x:1.0, y:0.0, z:0.0,');
      expect(Point.unitVectorY().toString(),'x:0.0, y:1.0, z:0.0,');
      expect(Point.unitVectorZ().toString(),'x:0.0, y:0.0, z:1.0,');
    });
    test('Test task 7', () {
      expect(( 4).rootNExp(2), 2);
      expect(( 9).rootNExp(2), 3);
      expect((27).rootNExp(2), 5.196152422706632);
      expect((27).rootNExp(3), 3);
      expect((-27).rootNExp(3), -3);
      expect((275555).rootNExp(8), 4.786587881808159);
    });
    test('Test task 8', () {
      User user = User(email: 'email@mail.ru');
      expect(user.toString(), 'Instance of \'User\'');
      GeneralUser generalUser = GeneralUser(email: 'GeneralUser@mail.ru');
      expect(generalUser.toString(), 'Instance of \'GeneralUser\'');
      expect(generalUser.getMailSystem(), 'mail.ru');
      AdminUser adminUser = AdminUser(email: 'AdminUser@mail.ru');
      expect(adminUser.toString(), 'Instance of \'AdminUser\'');
      expect(adminUser.getMailSystem(), 'mail.ru');
      UserManager userManager = UserManager();
      userManager.add(user);
      userManager.add(generalUser);
      userManager.add(adminUser);
      expect(userManager.usersEmail,
          <String>['email@mail.ru', 'GeneralUser@mail.ru', 'mail.ru']);
    });
  });
}
