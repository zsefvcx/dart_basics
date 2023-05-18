///9. (Усложнённое). Реализуйте метод, который вычисляет значение определённого интеграла Римана
///в заданных значениях и с заданной точностью разбиения. По возможности учтите случаи, когда
///функция имеет точки разрыва. Реализованный метод должен принимать функцию, точки x1 и x2,
///точность разбиения.

class IntegralRiemann {
  final double _x0;
  final double _xN;
  final double _dX;
  final double _accuracy;

  double? _result;

  final List<double> _pointRemoveNaN = [];
  final List<double> _integralPoint = [];

  double get result => _result??execute();

  List<double> get integralPoint =>  _integralPoint;
  List<double> get pointRemoveNaN => _pointRemoveNaN;

  final Function _func;

  IntegralRiemann({
    required Function func,
    required double x1,
    required double x2,
    required double dX,
    double accuracy = 1E-10,
  })  : _func = func,
        _x0 = x1,
        _xN = x2,
        _dX = dX,
  _accuracy = accuracy;

  double execute() {
    if(_pointRemoveNaN.isNotEmpty) _pointRemoveNaN.clear();
    if(_integralPoint.isNotEmpty) _integralPoint.clear();
    _result = 0;
    for (double y = _x0; y <= _xN; y += _dX) {
      if (_func(y) == double.infinity) {
        _pointRemoveNaN.add(y);
      } else {
        _integralPoint.add(_func(y) * _dX);
        _result = _result! + _integralPoint.last;
      }
    }
    _result = _result!>_accuracy?_result:0;
    return _result??0;
  }
}
