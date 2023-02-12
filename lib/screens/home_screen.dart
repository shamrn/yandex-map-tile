import 'package:calc_tiles/blocs/tail/tail_bloc.dart';
import 'package:calc_tiles/widgets/forms_coordinates_widget.dart';
import 'package:calc_tiles/widgets/result_tail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: BlocProvider(
              create: (context) => TailBloc(),
              child: ListView(
                children: const [
                  CalcNumberTailWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  ResultTailWidget(),
                ],
              )),
        ),
      ),
    );
  }
}
