///4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен
/// соотносить слово и количество его вхождений в данную коллекцию.

class SearchWordCountInList{
  final List<String> _value;
  final Map<String, int> _result = {};

  Map<String, int> get result => _result.isEmpty?search():_result;

  SearchWordCountInList({required List<String> value}) : _value = value;

  Map<String, int> search(){
    if(_result.isNotEmpty) _result.clear();
    for (var elem in _value) {
      var data = _result[elem];
      if (data==null){
        _result[elem]=1;
      } else {
        _result[elem] = data + 1;
      }
    }
    return _result;
  }

  @override
  String toString() {
    return _result.isEmpty?search().toString():_result.toString();
  }
}