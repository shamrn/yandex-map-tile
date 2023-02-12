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
  final TextEditingController _zoomController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CoordinateFormWidget(
              autoFocus: true, name: 'Широта', textController: _latController),
          CoordinateFormWidget(
            autoFocus: false,
            name: 'Долгота',
            textController: _longController,
          ),
          CoordinateFormWidget(
            autoFocus: false,
            name: 'Зум',
            textController: _zoomController,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Рассчитать',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}

class CoordinateFormWidget extends StatefulWidget {
  final bool autoFocus;
  final String name;
  final TextEditingController textController;

  const CoordinateFormWidget(
      {Key? key,
      required this.autoFocus,
      required this.name,
      required this.textController})
      : super(key: key);

  @override
  State<CoordinateFormWidget> createState() => _CoordinateFormWidgetState();
}

class _CoordinateFormWidgetState extends State<CoordinateFormWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      autofocus: widget.autoFocus,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Обязательное поле';
        }
        return null;
      },
      decoration: InputDecoration(hintText: widget.name),
    );
  }
}
