import 'dart:math';

///6. Реализуйте класс Point, который описывает точку в трёхмерном пространстве. У данного класса
///реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки
///в параметре. По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве
///и возвращающий площадь треугольника, который образуют данные точки. Реализуйте factory-конструкторы
///для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение (например,
///конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).

class Point {
  final double _x;
  final double _y;
  final double _z;

  double get x => _x;
  double get y => _y;
  double get z => _z;

  ///Cache
  static final Map<String, Point> _cache = {
    '0,0,0,': Point._init(x: 0, y: 0, z: 0),
    '1,0,0,': Point._init(x: 1, y: 0, z: 0),
    '0,1,0,': Point._init(x: 0, y: 1, z: 0),
    '0,0,1,': Point._init(x: 0, y: 0, z: 1),
    '1,1,1,': Point._init(x: 1, y: 1, z: 1),
  };

  factory Point({
    required double x,
    required double y,
    required double z
  }){
    return _cache['$x,$y,$z,'] ?? Point._init(x: x, y: y, z: z);
  }

  Point._init({required double x, required double y, required double z})
      : _x = x, _y = y, _z = z;

  ///Origin Of Coordinates - 0:0:0
  factory Point.originOfCoordinates() {
    return Point(x: 0, y: 0, z: 0);
  }

  ///Unit Vector - 1:1:1
  factory Point.unitVector() {
    return Point(x: 1, y: 1, z: 1);
  }

  ///Unit Vector X - 1:0:0
  factory Point.unitVectorX() {
    return Point(x: 1, y: 0, z: 0);
  }

  ///Unit Vector Y - 0:1:0
  factory Point.unitVectorY() {
    return Point(x: 0, y: 1, z: 0);
  }

  ///Unit Vector Z - 0:0:1
  factory Point.unitVectorZ() {
    return Point(x: 0, y: 0, z: 1);
  }

  ///Формула вычисления расстояния между двумя точками A(xa, ya, za)
  ///и B(xb, yb, zb) в пространстве: AB = √(xb - xa)2 + (yb - ya)2 + (zb - za)2
  double distanceTo(Point another) {
    return sqrt(pow((another.x-_x),2) +
                pow((another.y-_y),2) +
                pow((another.z-_z),2));
  }

  /// по формуле Герона
  /// https://ru.wikipedia.org/wiki/%D0%A4%D0%BE%D1%80%D0%BC%D1%83%D0%BB%D0%B0_%D0%93%D0%B5%D1%80%D0%BE%D0%BD%D0%B0
  static double spaceTriangle(
      {required Point p1, required Point p2, required Point p3}) {
    double a = p1.distanceTo(p2);
    double b = p2.distanceTo(p3);
    double c = p3.distanceTo(p1);
    double p = 0.5 * (a + b + c);
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }

  //override method toString
  @override
  String toString() {
    return 'x:$_x, y:$_y, z:$_z,';
  }
}
