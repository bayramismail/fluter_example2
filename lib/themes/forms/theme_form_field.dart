import 'package:flutter/material.dart';

class ThemeTextFormField extends StatelessWidget {
  String text;
  TextEditingController? textEditingController;
  TextStyle? textStyle;
  final String? Function(String?)? validator;
  ThemeTextFormField(
      {super.key,
      required this.text,
      this.textEditingController,
      this.textStyle,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        style: textStyle,
        validator: validator,
        decoration:
            InputDecoration(label: Text(text), border: OutlineInputBorder()),
      ),
    );
  }
}
