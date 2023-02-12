import 'package:calc_tiles/widgets/calc_number_tail_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: CalcNumberTailWidget(),
        ),
      ),
    );
  }
}
