import 'package:flutter/material.dart';

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
