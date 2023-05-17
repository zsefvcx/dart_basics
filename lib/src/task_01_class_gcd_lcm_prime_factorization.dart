
///1.  Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод,
///который разбивает число - на простые множители и возвращает их.

class DelimetersCalculator {

  final int _value;

  final List<int> _result = [];
  //final int?


  DelimetersCalculator({required int value}) : _value = value{
    //_convert();
  }

  ///Наибольший общий делитель (англ. greatest common divisor)
  int gcd(int b){
    int min = _value>b?b:_value;
    int max = _value>b?_value:b;
    int search(int max, int min){
      return min > 0 ? search(min, max%=min) : max;
    }
    return search(min, max);
  }

  ///Наименьшее общее кратное (англ. least common multiple)
  int lcm(int b) {
     return (_value ~/ gcd(b)) * b;
  }

  ///Факториза́цией натурального числа
  //Factorization of a natural number

  @override
  String toString() {
    return _result.toString();
  }
}