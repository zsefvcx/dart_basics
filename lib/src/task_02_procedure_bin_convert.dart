
///2. Реализуйте методы для преобразования целых чисел из десятичной системы в
///двоичную и обратно.

class ConvertBoolean<T, R> {
  final T _value;
  late final String _bool;
  late final int _int;

  get result => (_value is int)?_int:_bool;

  ConvertBoolean({required T value}) :
        assert((value is int || value is String)?true:false),
        assert(value is int?(value<0?false:true):true),
        assert(value is String?RegExp(r'[0-1]').hasMatch(value):true),
        _value = value
        {
    _convert();
  }

  void _convert(){
    if (_value is int){
      // if(_value < 0){
      //   throw Exception("unsuitable value!");
      // }
      List<String> result = [];
      int buffer = _value as int;
      while(buffer>0){
        if(buffer&0x01==1){
          result.add('1');
        } else {
          result.add('0');
        }
        buffer>>=1;
      }
      _bool = result.reversed.join();
      _int = _value as int;
    } else if (_value is String){
      // Set <String> check = value.split('').toSet();
      // if(check.isEmpty || check.length != 2 || !check.first.contains(RegExp(r'[0-1]'),0) || !check.last.contains(RegExp(r'[0-1]'),0)){
      //   throw Exception("unsuitable value!");
      // }
      int result = 0;
      String buffer = _value as String;
      for (int i = 0; i < buffer.length; i++){
        if(buffer[i]=='1') {
          result = result ^ (1<<(buffer.length-i-1));
        } else {
        }
      }
      _int = result;
      _bool = _value as String;
    }
  }

  @override
  String toString() {
    return (_value is int)?_bool.toString():_int.toString();
  }
}

int binToInt(String value) {

  int result = 0;
  for (int i = 0; i < value.length; i++){
    if(value[i]=='1') {
      result = result ^ (1<<(value.length-i-1));
    } else {
    }
  }
  return result;
}



