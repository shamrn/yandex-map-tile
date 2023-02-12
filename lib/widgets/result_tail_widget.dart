import 'package:calc_tiles/blocs/tail/tail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultTailWidget extends StatelessWidget {
  const ResultTailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TailBloc, TailState>(builder: (context, state) {
      if (state is TailCalcState) {
        return Column(
          children: [
            Text('X: ${state.x}'),
            Text('Y: ${state.y}'),
            const SizedBox(
              height: 10,
            ),
            const Text('Tail link: '),
            SelectableText(state.link),
          ],
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
