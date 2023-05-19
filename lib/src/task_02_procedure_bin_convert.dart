///2. Реализуйте методы для преобразования целых чисел из десятичной системы в
///двоичную и обратно.

class ConvertBoolean<T, R> {
  final T _value;
  late final String _resultBinString;
  late final int _resultInt;

  get result => (_value is int)?_resultBinString:_resultInt;

  ConvertBoolean({required T value}) :
        assert((value is int || value is String)?true:false),
        assert(value is int?(value<0?false:true):true),
        assert(value is String?value.length==0?false:true:true),
        assert(value is String?RegExp(r'^[0-1]+$').hasMatch(value):true),
        _value = value
        {
    _convert();
  }

  void _convert(){
    if (_value is int){
      int buffer = _value as int;
      List<String> result = [];
      do{
        buffer&0x01==1?result.add('1'):result.add('0');
        buffer>>=1;
      }while(buffer>0);
      _resultBinString = result.reversed.join();
      _resultInt = _value as int;
    } else if (_value is String){
      String buffer = _value as String;
      int result = 0;
      for (int i = 0; i < buffer.length; i++){
        if(buffer[i]=='1') {
          result = result ^ (1<<(buffer.length-i-1));
        }
      }
      _resultInt = result;
      _resultBinString = _value as String;
    }
  }

  @override
  String toString() {
    return (_value is int)?_resultBinString.toString():_resultInt.toString();
  }
}


