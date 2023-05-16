
///3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
///Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

Set<num> searchNumInString(String value){
  Set <num> result = {};
  for(var elem in value.split(' ')){
    double? parseDouble = double.tryParse(elem);
    int? parseInt = int.tryParse(elem);
    if(parseInt != null){
      result.add(parseInt);
    } else if(parseDouble != null){
      result.add(parseDouble);
    }
  }
  return result;
}

Set<num> searchNumInString2(String value){
  Set <num> result = {};
  for(var elem in value.split(' ')){
    double? parseDouble = double.tryParse(elem);
    if(parseDouble != null){
      result.add(parseDouble);
    }
  }
  return result;
}