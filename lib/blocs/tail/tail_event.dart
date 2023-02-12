part of 'tail_bloc.dart';

abstract class TailEvent {}

class TailCalcEvent extends TailEvent {
  late double _lat;
  late double _long;
  late int _zoom;

  double get lat => _lat;
  double get long => _long;
  int get zoom => _zoom;

  TailCalcEvent(
      {required double lat, required double long, required int zoom}) {
    _lat = lat;
    _long = long;
    _zoom = zoom;
  }
}
