
import 'dart:math';

import 'package:dart_basics/dart_basics.dart';

void main(List<String> arg) {
  try {
    int numTask = 1;print('\ntask #$numTask\n');
    if (numTask == 1) {
      print(DelimetersCalculator(value: 15).gcd(20));
      print(DelimetersCalculator(value: 15).lcm(20));
      print(DelimetersCalculator(value: 124).fin());
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 2) {
      void tests<T>(T value){
        try {
          print(ConvertBoolean(value: value).result);
        } catch (e, p) {
          print('Error value:$value');
          print('${StackTrace.current}');
          print(p);
          print(e);
          print('');
        }
      }
      tests(0);
      tests('0');
      tests('');
      tests(-5);
      tests('-5');
      tests(5.0);
      tests('10ФФФ');
      tests('500');
      tests(5);
      tests(50);
      tests(500);
      tests(156813138);
      tests('10');
      tests('111111111');
      tests('101010111');
      tests('1001010110001100011101010010');

    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 3) {

      print(
          SearchNumInString(value: '5 -5 - 5'));
      print(
          SearchNumInString(value: '5 -5 - 5').result);
      print(
          SearchNumInString(value: '5 -5 - 5').search());

      print(
          SearchNumInString(value: 'String value 50 50.0 50.2 80 2.2 parse int 89'));
      print(
          SearchNumInString(value: 'String 10.59 50 50.0 50.2 80 2.2 parse int 89'));
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 4) {
      print(SearchWordCountInList(value: <String>[
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
      ]).search());
      print(SearchWordCountInList(value: <String>[
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
      ]));
      print(SearchWordCountInList(value: <String>[
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
      ]).result);
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 5) {
      print(WordIntToInt(value: <String>[
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
      ]));
      print(WordIntToInt(value: <String>[
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
      ]).result);
      print(WordIntToInt(value: <String>[
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
      ]).convert());
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 6) {
      print(Point(x: 0, y: 0, z: 0).distanceTo(Point(x: 1, y: 1, z: 1)));
      print(Point.spaceTriangle(
        p1: Point(x: 0, y: 0, z: 0),
        p2: Point(x: 1, y: 0, z: 1),
        p3: Point(x: 1, y: 1, z: 0),
      ));
      print(Point.unitVector());
      print(Point.unitVectorX());
      print(Point.unitVectorY());
      print(Point.unitVectorZ());
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 7) {
      num pow(num x, num exponent) => exponent <=1 ? x : x*pow(x, exponent-1);
      print('2√1... ${pow(1.rootNExp(2), 2)} ?=? 1.0');
      print('3√2... ${pow(2.rootNExp(3), 3)} ?=? 2.0');
      print('5√3... ${pow(3.rootNExp(5), 5)} ?=? 3.0');
      print('7√4... ${pow(4.rootNExp(7), 7)} ?=? 4.0');
      print('2√5... ${pow(5.rootNExp(2), 2)} ?=? 5.0');
      try {
        print('2√(-5)... ${pow((-5).rootNExp(2), 2)} ?=? NaN');
      } on Exception catch (e, p) {
        print('${StackTrace.current}');
        print(p);
        print(e);
      } catch (_) {
        rethrow;
      }
      print('3√(27)... ${pow((27).rootNExp(3), 3)} ?=? 27');
      print('3√(-27)... ${pow((-27).rootNExp(3), 3)} ?=? -27');
      print('8√(275555)... ${pow((275555).rootNExp(8), 8)} ?=? 275555');
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 8) {
      User user = User(email: 'email@mail.ru');
      print(user.toString());
      GeneralUser generalUser = GeneralUser(email: 'GeneralUser@mail.ru');
      print(generalUser.toString());
      print('MailSystem: ${generalUser.getMailSystem()}');
      AdminUser adminUser = AdminUser(email: 'AdminUser@mail.ru');
      print(adminUser.toString());
      print('MailSystem: ${adminUser.getMailSystem()}');
      UserManager userManager = UserManager();

      userManager.add(user);
      userManager.add(generalUser);
      userManager.add(adminUser);
      try {
        userManager.add(adminUser);
      } on Exception catch (e, p) {
        print('${StackTrace.current}');
        print(p);
        print(e);
      } catch(_){
        rethrow;
      }
      print(userManager.usersEmail);
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask == 9) {
      void test({required Function func}){
        IntegralRiemann integral = IntegralRiemann(func: func, x1: -10, x2: 10, dX: 1);
        print(integral.execute());
        print(integral.execute());
        print(integral.result);
        print(integral.pointRemoveNaN);
        print(integral.integralPoint);
      }
      test(func: (double x)=> x);
      test(func: (double x)=> x*x);
      test(func: (double x)=> x*x*x);
      test(func: (double x)=> 1/x);
      test(func: (double x)=> 1/x+10);
      test(func: (double x)=> tan(x));
      test(func: (double x)=> 1/tan(x));
    }
    numTask++;print('\ntask #$numTask\n');
    if (numTask ==10) {
      try {
        void tests({required List<List<double>> valueA, required List<double> valueB}) {
          try {
            print(SystemLinearEquations(
              valueA: valueA,
              valueB: valueB,
            ).valueX);
          } catch (e, p) {
            print('${StackTrace.current}');
            print(p);
            print(e);
          }
        }
        tests(
          valueA: [
            [2, -2, 1,],
            [1, 3, -2,],
            [3, -1, -1,],
          ],
          valueB: [-3, 1, 2],
        );
        tests(
          valueA: [
            [0, -2, 1,],
            [1, 3, -2,],
            [3, -1, -1,],
          ],
          valueB: [-3, 1, 2],
        );
        tests(
          valueA: [
            [1, 0, 0,],
            [0, 0, 0,],
            [0, 0, 0,],
          ],
          valueB: [-3, 1, 2],
        );
        tests(
          valueA: [
            [1, 1, 1,],
            [1, 1, 1,],
            [1, 1, 1,],
          ],
          valueB: [1, 1, 1],
        );

      } on Exception catch (e, p) {
        print('${StackTrace.current}');
        print(p);
        print(e);
      } catch(_){
        rethrow;
      }
    }
  } on Exception catch (e, p) {
    print('${StackTrace.current}');
    print(p);
    print(e);
  } catch (e, p) {
    print('${StackTrace.current}');
    print(p);
    print(e);
  }
}
