
///Задача: 5. Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого
///другого. Реализуйте метод, возвращающий цифры без повторений, которые
///встречаются в данной строке. Однако цифры встречаются в виде английских слов
///от zero до nine. Например, в результате строки ‘one, two, zero, zero’ мы
///получим следующий результат: [1, 2, 0]. Если в строке есть слова, не
///являющиеся цифрами от 0 до 9, пропускайте их.

class WordIntToInt {
  static const List<String> _intWord = [
    'zero', 'one',   'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine','eight',
  ];
  final List<String> _value;
  final List<int> _result = [];

  List<int> get result => _result;

  WordIntToInt({required List<String> value}) : _value = value{
    _convert();
  }

  void _convert() {
    for (var elem in _value) {
      if (_intWord.contains(elem.toLowerCase())) {
        _result.add(_intWord.indexOf(elem.toLowerCase(), 0));
      }
    }
  }

  @override
  String toString() {
    return _result.toString();
  }
}







