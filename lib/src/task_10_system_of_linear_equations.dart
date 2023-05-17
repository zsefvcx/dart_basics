
///10 (Очень сложно). Реализуйте метод, который принимает коэффициенты системы линейных уравнений
///       (для любого числа неизвестных). Данный метод создаёт матрицу коэффициентов, приводит её к
///       треугольному виду и находит все неизвестные данной системы.

class SystemLinearEquations {
  final List<List<int>> _valueA;
  final List<int> _valueB;
  late final List<int> valueX;


  SystemLinearEquations({required List<List<int>> valueA, required List<int> valueB}):
  _valueA = valueA, _valueB = valueB;




}