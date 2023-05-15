
///2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
String intToBin(int value) {
  if(value < 0){
    throw Exception("unsuitable value!");
  }
  List<String> result = [];
  int buffer = value;
  while(buffer>0){
    if(buffer&0x01==1){
      result.add('1');
    } else {
      result.add('0');
    }
    buffer>>=1;
  }
  return result.reversed.join();
}

int binToInt(String value) {
  Set <String> check = value.split('').toSet();
  if(check.isEmpty || check.length != 2 || !check.first.contains(RegExp(r'[0-1]'),0) || !check.last.contains(RegExp(r'[0-1]'),0)){
    throw Exception("unsuitable value!");
  }

  int result = 0;
  List<String> valueSplit = value.split('');//..reversed;
  List<String> valueSplit2 = [];
  for (int i = valueSplit.length-1; i >= 0; i--){
    if(valueSplit[i]=='1') {
      valueSplit2.add('1');
      result += 1<<(i+1);
    } else {
      valueSplit2.add('0');
    }
  }
  print(valueSplit);
  print(valueSplit2.reversed.toList());
  print(result.toRadixString(2).split(''));
  return result;
}



