///7 Реализуйте метод, который вычисляет корень любой заданной степени из числа.
///Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на
///википедии как «Алгоритм нахождения корня n-й степени». Запрещается
///использовать методы math. В случае когда значение вернуть невозможно,
///необходимо бросать исключение с описанием ошибки.

extension CustomNum on num {
  /// n - any numbers
  /// dN - calculation accuracy. default = 1E-10
  /// itDef - number iteration. default = 1E10
  /// debug - this is DEBUG
  /// debugLevel2 - this is DEBUG Level2
  /// timeout - time out. default 5000 mks
  double rootNExp(num exponent,
      {
        num timeout = 5000,
        num dN = 1E-10,
        num itDef = 1E10,
        // bool debug = false,
        // bool debugLevel2 = false
      }) {
    //if(debug) print('Start: this:$this n:$exponent dN:$dN itDef:$itDef');
    if(this==0 || exponent == 1 || this == 1) return toDouble();
    if(exponent == 0) return 1;
    if(exponent%2==0 && this < 0){
      //return double.nan;
      throw Exception(
           'No solution. For an even degree of the root of a negative number, '
               'the solution lies in the imaginary region.'
      );
    }
    num pow(num x, num exponent) => exponent <=1 ? x : x*pow(x, exponent-1);
    double current  = (abs().toDouble()*(exponent-1))/exponent;
           current += abs()/pow(current, exponent-1);
    int it = 0;
    double buffer = 0;
    DateTime clockStart = DateTime.now();
    do {
      buffer = current;
      current = abs()/(exponent*pow(current, exponent-1)) + (current*(exponent-1)/exponent);
      //if(debugLevel2)print('Current: dN: ${(current - buffer).abs()} it:$it timeout:$timeout result: ${this<0?-current:current}');
      if (it++>= itDef){
        throw Exception(
           'Calculation error. Accuracy $dN not reached after $itDef iterations.'
                'Exception: dN: ${(current - buffer).abs()} it:$it timeout:$timeout result: ${this<0?-current:current}'
       );
      }
      if  (DateTime.now().difference(clockStart).inMilliseconds > timeout){
        throw Exception(
            'TimeOut error. Calculation takes too long.'
                'Exception: dN: ${(current - buffer).abs()} it:$it timeout:$timeout result: ${this<0?-current:current}'
        );
      }
    } while((current - buffer).abs() > dN);
    //if(debug)print('Final: dN: ${(current - buffer).abs()} it:$it timeout:$timeout result: ${this<0?-current:current}');
    return this<0?-current:current;
  }
}