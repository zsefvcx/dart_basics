
///7 Реализуйте метод, который вычисляет корень любой заданной степени из числа.
///Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на
///википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать
///методы math. В случае когда значение вернуть невозможно, необходимо бросать
///исключение с описанием ошибки.

extension CustomNum on num {

  ///for test
  static double pow(num x, num n){
    if(n <=1) {
      return x.toDouble();
    } else {
      return x*pow(x, n-1);
    }
  }
  /// n - any numbers
  /// dN - calculation accuracy. default = 1E-10
  /// itDef - number iteration. default = 1E10
  double rootNExp(num n, [num dN = 1E-10, num itDef = 1E10]){
    if(this==0 || n == 1 || this == 1) return toDouble();
    if(n == 0) return 1;
    if(n%2==0 && this < 0){
      throw Exception(
          'No solution. For an even degree of the root of a negative number, '
              'the solution lies in the imaginary region.'
      );
    }

    double current  = abs().toDouble()/100;
           //current += abs()/pow(current, n-1);
           // время дольше 10 секунд выход из цикла

    int it = 0;
    double buffer = 0;
    do{
      buffer = current;
      current = (abs()/pow(current, n-1) + current)/n;
      it++;
      if (it>= itDef){
        throw Exception(
           'Calculation error. Accuracy $dN not reached after $itDef iterations.'
                'Current dN: ${(current - buffer).abs()} it:$it result: $current'
       );
      }
    } while((current - buffer).abs() > dN);
    print('Current dN: ${(current - buffer).abs()} it:$it result: $current' );
    return this<0?-current:current;
  }


}