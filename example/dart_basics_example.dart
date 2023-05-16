
import 'package:dart_basics/dart_basics.dart';

void main(List<String> arg) {
  print(arg);
  try {
    final int numTask = int.parse(arg[0]);
    if (numTask == 1) {}
    if (numTask == 2) {
      ///2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно
      print('intToBin(156813138): ${intToBin(156813138)} \n'
          '                     1001010110001100011101010010');
      print(
          'intToBin(1001010110001100011101010010): ${binToInt('1001010110001100011101010010')} \n'
          '                                        156813138');
    }
    if (numTask == 3) {
      ///3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
      ///Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
      print(searchNumInString('String value 50 50.0 50.2 80 2.2 parse int 89'));
      print(
          searchNumInString2('String value 50 50.0 50.2 80 2.2 parse int 89'));
    }
    if (numTask == 4) {
      ///4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и
      /// количество его вхождений в данную коллекцию.
      print(searchWordCountInList(<String>[
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
      ///Задача: 5. Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. Реализуйте метод,
      ///возвращающий цифры без повторений, которые встречаются в данной строке. Однако цифры встречаются в виде
      ///английских слов от zero до nine. Например, в результате строки ‘one, two, zero, zero’ мы получим следующий
      ///результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
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
      print('2√1... ${CustomNum.pow(1.rootNExp(2), 2)} ?=? 1.0');
      print('3√2... ${CustomNum.pow(2.rootNExp(3), 3)} ?=? 2.0');
      print('5√3... ${CustomNum.pow(3.rootNExp(5), 5)} ?=? 3.0');
      print('7√4... ${CustomNum.pow(4.rootNExp(7), 7)} ?=? 4.0');
      print('2√5... ${CustomNum.pow(5.rootNExp(2), 2)} ?=? 5.0');
      print('2√(-5)... ${CustomNum.pow((-5).rootNExp(2), 2)} ?=? NaN');
      print('3√(27)... ${CustomNum.pow((27).rootNExp(3, debug: true, debugLevel2: true, itDef: 1000), 3)} ?=? 27');
      print('3√(-27)... ${CustomNum.pow((-27).rootNExp(3), 3)} ?=? -27');
      print('3√(27)... ${CustomNum.pow((275555).rootNExp(8, debug: true, debugLevel2: true, itDef: 1000), 3)} ?=? 27');
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
