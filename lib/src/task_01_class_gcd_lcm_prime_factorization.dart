
///1.  Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод,
///который разбивает число - на простые множители и возвращает их.

class DelimetersCalculator {

  final int _value;

  DelimetersCalculator({required int value}) : _value = value;

  ///Наибольший общий делитель (англ. greatest common divisor)
  int gcd(int x){
    int min = _value>x?x:_value;
    int max = _value>x?_value:x;
    int search(int max, int min){
      return min > 0 ? search(min, max%=min) : max;
    }
    return search(min, max);
  }

  ///Наименьшее общее кратное (англ. least common multiple)
  int lcm(int x) {
     return (_value ~/ gcd(x)) * x;
  }

  ///Факториза́ция натурального числа (англ. integer factorization)
  List<int> fin(){
    List<int> result = [];
    int j = 2;
    int buffer = _value;
    while(j*j <= buffer){
      if(buffer%j==0){
        result.add(j);
        buffer ~/= j;
        j = 2;
      } else {
        ++j;
      }
    }
    result.add(buffer);
    return result;
  }


  @override
  String toString() {
    return _value.toString();
  }
}