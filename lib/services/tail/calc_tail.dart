import 'dart:math';

class CalcNumberTail {
  static const double E = 0.0818191908426; // эксцентриситет земного эллипсоида

  late double _xGlobalCoordinate;
  late double _yGlobalCoordinate;

  late double _lat;
  late double _long;
  late double _zoom;

  CalcNumberTail(
      {required double lat, required double long, required double zoom}) {
    _lat = lat;
    _long = long;
    _zoom = zoom;

    _calcGlobalPixelCoordinates();
  }

  // Получение координат тайлов по формуле.
  // Разделить глобальные пиксельные координаты на 256 и округлить результат до целого в меньшую сторону.
  int get x => (_xGlobalCoordinate / 256).floor();
  int get y => (_yGlobalCoordinate / 256).floor();

  void _calcGlobalPixelCoordinates() {
    // Функция для перевода географических координат в глобальные пиксельные координаты.

    double b = pi * _lat / 180;
    double f = (1 - E * sin(b)) / (1 + E * sin(b));
    double o = tan((pi / 4) + (b / 2)) * (pow(f, E / 2));
    double p = pow(2, _zoom + 8) / 2;

    _xGlobalCoordinate = p * (1 + (_long / 180));
    _yGlobalCoordinate = p * (1 - (log(o) / pi));
  }
}
