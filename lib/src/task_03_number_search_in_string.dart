///3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
///Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

class SearchNumInString {
  final List<String> _value;
  final Set<num> _result = {};

  Set<num> get result => _result;

  SearchNumInString({required String value}) : _value = value.split(' '){
    _search();
  }

  void _search(){
    for (var elem in _value) {
      double? parseDouble = double.tryParse(elem);
      if (parseDouble != null) {
        result.add(parseDouble);
      }
    }
  }

  @override
  String toString() {
    return _result.toString();
  }
}
