import 'package:calc_tiles/widgets/coordinate_form_widget.dart';
import 'package:flutter/material.dart';

class CalcNumberTailWidget extends StatefulWidget {
  const CalcNumberTailWidget({Key? key}) : super(key: key);

  @override
  State<CalcNumberTailWidget> createState() => _CalcNumberTailWidgetState();
}

class _CalcNumberTailWidgetState extends State<CalcNumberTailWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _latController = TextEditingController();
  final TextEditingController _longController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CoordinateFormWidget(
              autoFocus: true,
              name: 'Широта',
              textController: _latController
          ),
          CoordinateFormWidget(
            autoFocus: false,
            name: 'Долгота',
            textController: _longController,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Рассчитать',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
