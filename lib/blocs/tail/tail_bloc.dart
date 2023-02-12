import 'package:bloc/bloc.dart';
import 'package:calc_tiles/services/tail/calc_tail.dart';
import 'package:calc_tiles/services/tail/link_tail.dart';

part 'tail_event.dart';
part 'tail_state.dart';

class TailBloc extends Bloc<TailEvent, TailState> {
  TailBloc() : super(TailInitialState()) {
    on<TailCalcEvent>(_onTailCalcEvent);
  }

  void _onTailCalcEvent(TailCalcEvent event, emit) {
    CalcNumberTail calcNumberTail =
        CalcNumberTail(lat: event.lat, long: event.long, zoom: event.zoom);

    String tailLink = makeTailLink(
        x: calcNumberTail.x, y: calcNumberTail.y, zoom: event.zoom);

    emit(TailCalcState(
        x: calcNumberTail.x, y: calcNumberTail.y, link: tailLink));
  }
}
