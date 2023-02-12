import 'package:calc_tiles/blocs/tail/tail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultTailWidget extends StatefulWidget {
  const ResultTailWidget({Key? key}) : super(key: key);

  @override
  State<ResultTailWidget> createState() => _ResultTailWidgetState();
}

class _ResultTailWidgetState extends State<ResultTailWidget> {

  static const TextStyle _textStyle = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TailBloc, TailState>(builder: (context, state) {
      if (state is TailCalcState) {
        return Column(
          children: [
            Text('X: ${state.x}', style: _textStyle,),
            const SizedBox(height: 10,),

            Text('Y: ${state.y}', style: _textStyle,),
            const SizedBox(height: 10, ),

            const Text('Tail link: ', style: _textStyle,),
            SelectableText(state.link, style: _textStyle,),
            const SizedBox(height: 10, ),

            Image.network(state.link, fit: BoxFit.cover,),
          ],
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
