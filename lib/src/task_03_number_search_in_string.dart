///3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
///Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

class SearchNumInString {
  final List<String> _value;
  final List<num> _result = [];

  List<num> get result => _result.isEmpty?search():_result;

  SearchNumInString({required String value}) : _value = value.split(' ');

  List<num> search(){
    if(_result.isNotEmpty) _result.clear();
    for (var elem in _value) {
      double? parseDouble = double.tryParse(elem);
      if (parseDouble != null) {
        _result.add(parseDouble);
      }
    }
    return _result;
  }

  @override
  String toString() {
    return _result.isEmpty?search().toString():_result.toString();
  }
}
