import 'package:dart_basics/dart_basics.dart';

void main(List<String> arg) {
  print(arg);
  try {
    final int numTask = int.parse(arg[0]);
    if (numTask == 1) {

    } else if (numTask == 2) {
      ///2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно
      print('intToBin(156813138): ${intToBin(156813138)} \n'
            '                     1001010110001100011101010010');
      print('intToBin(1001010110001100011101010010): ${binToInt('1001010110001100011101010010')} \n'
            '                                        156813138');
    } else if (numTask == 3) {
      ///3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
      ///Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
      print(searchNumInString('String value 50 50.0 50.2 80 2.2 parse int 89'));
      print(searchNumInString2('String value 50 50.0 50.2 80 2.2 parse int 89'));
    } else if (numTask == 4) {
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
  } on Exception catch(e, p){
    print(p);
    print(e);
  } catch(e, p){
    print(p);
    print(e);
  }
}
