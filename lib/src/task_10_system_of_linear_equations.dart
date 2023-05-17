import 'dart:math';

///10 (Очень сложно). Реализуйте метод, который принимает коэффициенты системы линейных уравнений
///       (для любого числа неизвестных). Данный метод создаёт матрицу коэффициентов, приводит её к
///       треугольному виду и находит все неизвестные данной системы.
//https://matrixcalc.org/ru/slu.html
class SystemLinearEquations {
  final List<List<int>> _valueA;
  final List<int> _valueB;
  late final List<int> _valueX;

  List<int> get valueX => _valueX;

  SystemLinearEquations(
      {required List<List<int>> valueA, required List<int> valueB})
      : assert(valueB.isNotEmpty && valueA.isNotEmpty),
        assert(valueB.length == valueA.length),
        assert(valueA.fold(valueA.length, (previousValue, element) => min(previousValue, element.length))==valueA.length),
        _valueA = valueA,
        _valueB = valueB{
    _calculation();
  }

  void _calculation(){


  }

  @override
  String toString() {
    return _valueX.toString();
  }
}
