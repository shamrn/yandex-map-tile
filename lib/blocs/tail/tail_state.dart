part of 'tail_bloc.dart';

abstract class TailState {}

class TailInitialState extends TailState {}

class TailCalcState extends TailState {
  late int _x;
  late int _y;
  late String _link;

  int get x => _x;
  int get y => _y;
  String get link => _link;

  TailCalcState({required int x, required int y, required String link}) {
    _x = x;
    _y = y;
    _link = link;
  }
}
