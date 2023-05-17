
import 'dart:math';

import 'package:dart_basics/dart_basics.dart';

void main(List<String> arg) {
  print(arg);
  try {
    ///При выполнении мы запускаем только то задание ктоторое нам надо протестировать.
    final int numTask = int.parse(arg[0]);
    if (numTask == 1) {
      print(DelimetersCalculator(value: 15).gcd(20));
      print(DelimetersCalculator(value: 15).lcm(20));
      print(DelimetersCalculator(value: 124).fin());
    }
    if (numTask == 2) {
      ///2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно
      print('intToBin(156813138): ${intToBin(156813138)} \n'
          '                     1001010110001100011101010010');
      print(
          'intToBin(1001010110001100011101010010): ${binToInt('1001010110001100011101010010')} \n'
          '                                        156813138');
    }
    if (numTask == 3) {
      print(
          SearchNumInString(value: 'String value 50 50.0 50.2 80 2.2 parse int 89'));
      print(
          SearchNumInString(value: 'String 10.59 50 50.0 50.2 80 2.2 parse int 89'));
    }
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
      ]));
    }
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
    }
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
    if (numTask == 9) {
      void test({required Function func}){
        IntegralRiemann integral = IntegralRiemann(func: func, x0: -10, xN: 10, dX: 1);
        integral.execute();
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
    if (numTask ==10) {

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
