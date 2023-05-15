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
    }



  } on Exception catch(e, p){
    print(p);
    print(e);
  } catch(e, p){
    print(p);
    print(e);
  }
}
