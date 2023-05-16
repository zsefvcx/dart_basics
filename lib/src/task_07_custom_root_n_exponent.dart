
///7 Реализуйте метод, который вычисляет корень любой заданной степени из числа.
///Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на
///википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать
///методы math. В случае когда значение вернуть невозможно, необходимо бросать
///исключение с описанием ошибки.

extension CustomNum on num {

  /// n - any numbers
  /// dN - calculation accuracy. default = 1E-10
  /// itDef - number iteration. default = 1E10
  double rootNExp(num n, [double dN = 1E-10, int itDef = 1000000]){
    double result = 0;
    double current = 2;

    double pow(num x, num n){
      if(n <=0) {
        return x.toDouble();
      } else {
        return x*pow(x, n-1);
      }
    }

    // время дольше 10 секунд
    int it = 0;
    print(this);
    do{
      result = current;
      current = (((n-1)*result/n) + this/pow(result, n))/n;

      //it++;
      //if (it>= itDef){
      //  throw Exception(
      //     'Calculation error. Accuracy $dN not reached after $itDef iterations.'
      //          'Current dN: ${(current - result).abs()} it:$it result: $current'
      // );
      //}
      print('Current dN: ${(current - result).abs()} it:$it result: $current' );
    } while((current - result).abs() > dN);

    return current;
    // тут вызывваем исключение
  }


}