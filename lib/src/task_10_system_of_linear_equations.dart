///10 (Очень сложно). Реализуйте метод, который принимает коэффициенты системы линейных уравнений
///       (для любого числа неизвестных). Данный метод создаёт матрицу коэффициентов, приводит её к
///       треугольному виду и находит все неизвестные данной системы.
///https://matrixcalc.org/ru/slu.html
///Метод Гаусса — Жордана (метод полного исключения неизвестных Gauss Jordan Method)

import 'dart:math';

class SystemLinearEquations {
  final List<List<double>> _valueAB;
  final List<double> _valueX = [];

  List<double> get valueX => _valueX;

  SystemLinearEquations(
      {required List<List<double>> valueA, required List<double> valueB})
      : assert(valueB.isNotEmpty && valueA.isNotEmpty),
        assert(valueB.length == valueA.length),
        assert(valueA.fold(valueA.length, (previousValue, element) =>
            min(previousValue, element.length))==valueA.length),
        assert(valueA[0][0]!=0),
        _valueAB = valueA{
    for(int i = 0; i < _valueAB.length; i++) {
      _valueAB[i].add(valueB[i]);
    }
    _calculation();
  }

  void _calculation() {
      if(_valueX.isNotEmpty) _valueX.clear();
      for (int i = 0; i < _valueAB.length; i++) {
      double buffer = _valueAB[i][i];
      for (int j = i; j < _valueAB[i].length; j++) {
        _valueAB[i][j] /= buffer;
      }
      for (int k = i + 1; k < _valueAB.length; k++) {
        double buffer = _valueAB[k][i];
        for (int l = 0; l < _valueAB[k].length; l++) {
          _valueAB[k][l] -= _valueAB[i][l] * buffer;
        }
      }
    }
    for (int i = _valueAB.length - 1; i >= 0; i--) {
      double buffer = _valueAB[i][i];
      for (int j = i; j < _valueAB[i].length; j++) {
        _valueAB[i][j] *= buffer;
      }
      for (int k = i - 1; k >= 0; k--) {
        double buffer = _valueAB[k][i];
        for (int l = 0; l < _valueAB[k].length; l++) {
          _valueAB[k][l] -= _valueAB[i][l] * buffer;
        }
      }
    }
    for (int i = 0; i < _valueAB.length; i++) {
      _valueX.add(
          double.parse(_valueAB[i][_valueAB[i].length-1].toStringAsFixed(10))
      );
    }
  }

  @override
  String toString() {
    return _valueX.toString();
  }
}
