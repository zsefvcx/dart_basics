
///4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен
/// соотносить слово и количество его вхождений в данную коллекцию.

Map<String, int> searchWordCountInList(List<String> value){
  Map<String, int> result = {};
  for (var elem in value) {
    if (result[elem]==null){
      result[elem]=1;
    } else {
      result[elem] = result[elem]! + 1;
    }
  }

  return result;
}