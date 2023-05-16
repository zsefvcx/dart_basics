
///4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен
/// соотносить слово и количество его вхождений в данную коллекцию.

class SearchWordCountInList{
  final List<String> _value;
  final Map<String, int> _result = {};

  Map<String, int> get result => _result;

  SearchWordCountInList({required List<String> value}) : _value = value{
    _convert();
  }

  void _convert(){
    for (var elem in _value) {
      var data = _result[elem];
      if (data==null){
        _result[elem]=1;
      } else {
        _result[elem] = data + 1;
      }
    }
  }

  @override
  String toString() {
    return _result.toString();
  }
}