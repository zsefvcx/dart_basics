
///2. Реализуйте методы для преобразования целых чисел из десятичной системы в
///двоичную и обратно.
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
  for (int i = 0; i < value.length; i++){
    if(value[i]=='1') {
      result = result ^ (1<<(value.length-i-1));
    } else {
    }
  }
  return result;
}



